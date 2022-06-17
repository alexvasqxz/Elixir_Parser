# The Greatest ParsElixir
#
# Brenda Giselle Molina Escamilla
# Gustavo Alejandro Vasquez Acosta
# Nicolás Gazzolo Varela
#
# June 16th, 2022

defmodule Parser do

  # Function main
  # This function takes the three main parts of
  # the result and puts them together in order
  # to write them on the result file
  #
  # Input: The string containing the name of
  # our input file (in_file) as well as the one
  # containing the name of our output file (out_file)
  def main(in_file, out_file) do

    # Get Lines of Code for the first part
    # of the result, which is the HTML syntax for
    # the result to be displayed as a web page
    first = get_code("first.txt")
    |> Enum.join("\n")

    # Get Lines of Code of the main result,
    # which are the modified lines with color from
    # the input file
    second = change_code(get_code(in_file))
    |> Enum.join("\n")

    # Get Lines of Code for the third part
    # of the result, which is the HTML closing syntax
    # for the result to be displayed as a web page
    third = get_code("second.txt")
    |> Enum.join("\n")

    result = [first | [second | [third]]]
    File.write(out_file, result)
  end

  # Function get_code
  # This function is responsible of getting all
  # of the lines of code for a given file
  #
  # Input: filename represents the name of the file
  # where the lines of code are kept
  # Output: A list of the lines of code from our input file,
  # without being modified
  def get_code(filename) do
    _loc = filename
    |> File.stream!()
    |> Enum.map(&String.trim_trailing/1)
  end

  # Function change_code
  # This function goes through the lines of code list from our
  # data file and starts changing every single one of them by
  # using tail recursion and calling the check_conditions function
  #
  # Input: A list containing the lines of code from our data file
  # Output: A list containing the modified lines of code once they have
  # gone through the check_conditions function
  def change_code(list), do: do_change_code(list, [])
  defp do_change_code([], result), do: Enum.reverse(result)
  defp do_change_code([head|tail], result), do: do_change_code(tail, [check_conditions(head) | result])

  # Function check_conditions
  # This function is responsible of finding the type of
  # HTML elements found in our code, through regex pattern
  # matching, once these conditions are met, the function replaces
  # the string in order to be seen in the web page
  #
  # Input: A string which represents a line of code (loc)
  # Output: A modified string to have the correct syntax in
  # order to be visualized in the web page
  def check_conditions(loc) do
    # Modify syntax in order to be changed
    _result = loc
    |> String.replace(~r/(<(.*?))/, "&lt;")
    |> String.replace(~r/(>)/, "&gt;")
    # Check and Change opening and closing brackets
    |> String.replace(~r/(&lt;(.*?))/, "<span class='code-elem'>&lt;")
    |> String.replace(~r/(&gt;)/, "&gt;</span>")
    # Check and change the doctype tag
    |> String.replace(~r/(&lt;!DOCTYPE html&gt;)/, "<span class='code-doc'>&lt;!DOCTYPE html&gt;</span>")
    # Check and change the quoted elements
    |> String.replace(~r/(="(.*?))/, "=<span class='code-quot'>&quot;")
    |> String.replace( ~r/(")/, "&quot;</span>")
    # Check and change comments
    |> String.replace(~r/(&lt;!--(.*?))/, "<span class='code-comm'>&lt;!--")
    |> String.replace(~r/(--&gt;)/, "--&gt;</span>")
  end

end
