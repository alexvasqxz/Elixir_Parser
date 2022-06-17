# The Greatest ParsElixir

<h2> Team Members </h2>
<ul>
  <li> Brenda Giselle Molina Escamilla </li>
  <li> Gustavo Alejandro Vasquez Acosta </li>
  <li> Nicolás Gazzolo Varela </li>
</ul>

<h2> I. Abstract </h2>
<p>
Within this investigation and project, the team discussed the final project for the Programming Languages class. This project covers the creation of an HTML parser, using the Elixir Programming language. This project was developed using the team's knowledge in Functional Programming, Recursion, Lists and File I/O; all this knowledge was acquire by the team thanks to Professor Gilberto Echeverria who was the Professor of the class. <br>
In order to run this code here is a list of steps to follow:
<ol>
<li>
Clone this repository into your local machine
</li>
<li>
Add the desired HTML text you'd like to parse to the "data.txt" file located in Elixir_Parser >> Code >> data.txt, you can use some of the examples found in Elixir_Parser >> Data
</li>
<li>
Open the code path in your local machine by going to Elixir_Parser >> Code >> iex code.ex
</li>
<li>
Run the command Parser.main("data.txt", "result.html"), note that both data.txt and result.html files already exist in order to make things easier, please do not move nor remove them
</li>
<li>
See the result in the result.html file, which you can open in your browser too
</li>
</ol>
</p>

<h2> II. Research Topic </h2>
<p>
  For this project, the team has decided to focus on the research of html and css. Although html is not formally considered a programming language, the team has decided to focus on it to facilitate and improve the implementation of a parser. 
HTML stands for Hypertext, a text or embedded images that is organized in order to connect related items, Markup, which is a style guide for typesetting anything to be printed in hardcopy or softcopy format and Language, which is a language that a computer system understands and uses to interpret commands. HTML is used to determine the structure of web pages, but to make it look better there are technologies such as CSS. 
</p>
<p>
  Our team focuses on the following HTML elements for the parser. Each color for each element is described in the following paragraphs.
  <ul>
  <li> Tags (red)
    <p>
Tags define the markup for a web page. There are several tags to create heading, paragraphs, among many other examples. They are characterized by an opening tag, which is a left angle bracket, a character and a right angle bracket and a closing tag that has the left angle bracket, a slash, a character and a right-angle bracket. Inside the tag, the user will write what they want to display as a paragraph. This dynamic is used for all the html documents. 
</p>
    </li>
  <li> Semantic Tags (green) 
    <p>
Semantic tags are used in HTML to describe its meaning to both the browser and the developer.
</p>
    </li>
  <li> Text (white)
            <p>
In this case, the team counts on each value entered between quotation marks, for example “classValue”. The text will be denoted when assigning classes, id’s, between other attributes. 
    </p>
    </li>
</ul>
</p>

<h2> III. Scope </h2>
<p>
We will be reading a file from elixir, and from that file we will be reading line by line and start storing each line into a list, then we will need to read that list of list for each individual line we read and start applying the conditions we see pertinent in other to start parsing into the html and Css style. For this it my be helpful to have already like a dictionary of the majority of reserved words, like variables or functions or example, so when we are traversing the list w each iteration if we happen to find a string or values that matches something on that dictionary we can also automatically parse it  
</p>

<h2> IV. Related Topics </h2>
<p>
By approaching our solution with the one described in the scope we used the following topics seen during class:
<ul>
<li>
Recursion: We use this topic to traverse our lists with tail recursion, optimizing our solution and being able to modify each element of the list by going one by one
</li>
<li>
Lists: We use lists to store important data, retrieve it, modify it and then put it all together to have our final result
</li>
<li>
Files I/O: We use file input and output to print our result into a web page format and customize it, we also use this subject in order to retrieve data from pre-existing files
</li>
<li>
Regex: We also use regex to check conditions in order to color our HTML elements
</li>
</ul>
</p>
