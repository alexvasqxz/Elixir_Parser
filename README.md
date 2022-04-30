# Elixir Parser

<h2> Team Members </h2>
<ul>
  <li> Brenda Giselle Molina Escamilla </li>
  <li> Gustavo Alejandro Vasquez Acosta </li>
  <li> Nicolás Gazzolo Varela </li>
</ul>

<h2> I. Abstract </h2>
<p>
  Within this investigation our team will discuss the final project for the programming languages class. This project will cover the creation of a html and css parser, using the Elixir programming language. The project will develop the knowledge of the team of Functional programming, Recursion, Lists and File I/O. How it will be implemented will be explained along the document.
</p>

<h2> II. Research Topic </h2>
<p>
  For this project, the team has decided to focus on the research of html and css. Although html is not formally considered a programming language, the team has decided to focus on it to facilitate and improve the implementation of a parser. 
HTML stands for Hypertext, a text or embedded images that is organized in order to connect related items, Markup, which is a style guide for typesetting anything to be printed in hardcopy or softcopy format and Language, which is a language that a computer system understands and uses to interpret commands. HTML is used to determine the structure of web pages, but to make it look better there are technologies such as CSS. 
</p>
<p>
  Our team focuses on the following HTML elements for the parser. Each color for each element is described in the following paragraphs.
  <ul>
  <li> Tags (purple)
    <p>
Tags define the markup for a web page. There are several tags to create heading, paragraphs, among many other examples. They are characterized by an opening tag, which is a left angle bracket, a character and a right angle bracket and a closing tag that has the left angle bracket, a slash, a character and a right-angle bracket. Inside the tag, the user will write what they want to display as a paragraph. This dynamic is used for all the html documents. 
</p>
    </li>
  <li> Semantic Tags (blue) 
    <p>
Semantic tags are used in HTML to describe its meaning to both the browser and the developer.
</p>
    </li>
  <li> Attributes (green) 
        <p>
Tags have attributes that are placed inside the opening tag, they take values, which give information about the element and help style and manipulate the elements in CSS or JavaScript. </p>
    </li>
  <li> Text (red)
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
