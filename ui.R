##               http://r-exercises.com/2016/12/12/building-shiny-app-exercises-part-1/
##               http://r-exercises.com/2016/12/18/building-shiny-app-exercises-part-2/


## You can run a Shiny app by giving the name of its directory to the function runApp(). For example if your Shiny app is in a directory called “Shiny App”, run it with the following code:
## library(shiny)
## runApp("Shiny App")
## Or by just clicking the “Run App” button at the top of the editor which is the safest solution.

#Create an empty app with a blank user-interface.
#Shiny ui.R scripts use the function fluidPage() to create a display that automatically adjusts to the dimensions of your user’s browser window. You lay out your app by placing elements in the fluidPage() function.
#For example, the ui.R script below creates a user-interface that has a title panel and then a sidebar layout, which includes a sidebar panel and a main panel. Note that these elements are placed within the fluidPage() function.
#The TitlePanel() and sidebarLayout() are the two most used elements to add to fluidPage(). They create a basic Shiny app with a sidebar.
#The sidebarLayout() always takes two arguments: sidebarPanel function output and mainPanel function output.
#Create titlePanel(), name it “Shiny App” and sidebarLayout(). Do not forget to add sidebarPanel() and mainPanel() inside this.

#HTML Content
#You can add content to your Shiny app by placing it inside a *Panel function.
#HEADERS
#To create a header element: select a header function e.g. (h1) and give it the text you want to see in the header.
#For example, you can create a first level header that says “Title” with h1("Title").
#To place the element in your app:
  #Put h1("Title") as an argument to titlePanel(), sidebarPanel(), or mainPanel().
#The text will appear in the corresponding panel of your web page. You can place multiple elements in the same panel if you separate them with a comma.
#Create an HTML element to add the title “Menu” in the sidebarPanel() and “Main” in mainPanel() with one of Shiny’s tag functions. HINT: Use h1,h2.

#FORMATTED TEXT
#Shiny offers many tag functions for formatting text.Take a look:
#p: A paragraph of text
#h1: A first level header
#h2: A second level header
#a: A hyper link
#br: A line break (e.g. a blank line)
#div: A division of text with a uniform style
#span: An in-line division of text with a uniform style
#pre: Text ‘as is’ in a fixed width font
#code: A formatted block of code
#img: An image
#strong: Bold text
#em: Italicized text

# Add a paragraph in your mainPanel() with a description about the app you are going to make.”This famous (Fisher’s or Anderson’s) iris data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are Iris setosa, versicolor, and virginica.” Use an HTML tag format. HINT:Use p.

#Link the word “iris” in the mainPanel() with this hyperlink “http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html”. HINT: Use a.

#Add the title “Analysis” under the desciption paragraph of your mainPanel. Do not forget the comma separation. HINT: Use br and h2.

#Use bold text to the words “Iris setosa”,”versicolor” and “virginica”. HINT: Use strong.

#IMAGES
#Images can improve the appearance of your app and help users understand the content. Shiny uses img() function to put image files in your app. To insert an image, give the img() function the name of your image file as the src argument (e.g., img(src = "my_image.png")). You can also include other HTML parameters such as height and width. For example:
#  img(src = "my_image.png", height = 68, width = 68)
#  The img() function looks for your image file in a specific place. Your file must be in a folder named “www” in the same directory as the ui.R script. Shiny will share any file placed here with your user’s web browser, which makes “www” a great place to put images, style sheets, and other things the browser will need to build the web components of your Shiny app. 

#Download this image and place it in a folder labeled “www” within your “Shiny App” directory. Name it “petal”, add .jpg extension and then call the img function inside the sidebarPanel(). Use height and width to decide its dimensions.



##  ADD CONTROL WIDGETS
##In the second part of our series we will see how to add control widgets in our Shiny app. Widget is a web element that our users can interact with. The widgets provided by Shiny are:
#FUNCTIONS
#actionButton: Action Button
#checkboxGroupInput: A group of check boxes
#checkboxInput: A single check box
#dateInput: A calendar for date selection
#dateRangeInput: A pair of calendars for selecting a date range
#fileInput: A file upload control wizard
#helpText: Help text that can be added to an input form
#numericInput: A field to enter numbers
#radioButtons: A set of radio buttons
#selectInput: A box with choices to select from
#sliderInput: A slider bar
#submitButton: A submit button
#textInput: A field to enter text

#ADDING WIDGETS
#To add a widget to your app, place a widget function in sidebarPanel or in mainPanel in our ui.R file.

#Open the app you created in part 1 and move the image from sidebarPanel to mainPanel, leave two rows under the title “Main”, put the image there and change its dimensions to: height = 150 and width = 200. HINT: Use br.

#BUTTONS
#In the example below we create a UI with a submitButton and an actionButton. Please note that we use the function fluidrow to make sure that all the elements we are going to use will be in the same line as we are going to need this in the next parts:
  # ui.R
  #shinyUI(fluidPage(
    #titlePanel(“Widgets”),
    
    #fluidRow(h3(“Buttons”),
             #actionButton(“action”, label = “Action”),
             #br(),
             #br(),
             #submitButton(“Submit”))))

# server.R
#shinyServer(function(input, output) {
#})

#Leave a row and place an actionButton under the title “Menu” in sidebarPanel, give it the title “Actionbutton”, name = “per” and label = “Perform”. HINT: Use br and h4.

#Leave a row from the actionButton you just placed and add a submitButton with title = “Submitbutton” and name = “Submit”. HINT: Use br and h4.

#SINGLE CHECKBOX
#In the example below we create a UI with a single Checkbox:
  # ui.R
  #shinyUI(fluidPage(
    #titlePanel(“Widgets”),
    
    #fluidRow(h3(“Single checkbox”),
             #checkboxInput(“checkbox”, label = “Choice A”, value = TRUE))))

#server.R
#shinyServer(function(input, output) {
#}) 

#Add a checkboxInput in the sidebarPanel under the submitButton, put as title “Single Checkbox”, name it “checbox”, name the label “Choice A” and set the value to “TRUE”. HINT: Use h4.

#Change the value to “FALSE” to understand the difference.

#CHECKBOX GROUP
#In the example below we create a UI with a Checkbox Group:
  #ui.R
  #shinyUI(fluidPage(
    #checkboxGroupInput(“checkGroup”,
                        #label = h3(“Checkbox group”),
#choices = list(“Choice 1” = 1,
#“Choice 2” = 2, “Choice 3” = 3),
#selected = 2)
#))
#server.R
#shinyServer(function(input, output) {
#})

#Place a checkboxGroupInput under the checkboxInput, give it title “Checkbox Group”, name it “checkGroup”, name the label “Checkbox Group” and give it 3 choices. HINT: Use h4

#Make the second of the choicesthe default one.

#DATE INPUT
#In the example below we create a UI with a Date Input:
  #ui.R
#shinyUI(fluidPage(
#dateInput(“date”,
#label = h3(“Date input”),
#value = “2016-12-07”)
#))

#server.R
#shinyServer(function(input, output) {
#})

#Under the checkboxGroupInput add a dateInput with name = “date”, label = “Date Input” and value = “2016-12-01”.

#DATE RANGE
#In the example below we create a UI with a Date Range Input:
  #ui.R
#shinyUI(fluidPage(
#dateRangeInput(“dates”, label = h3(“Date range”))
#))

#server.R
#shinyServer(function(input, output) {
#})

#Under the dateInput place a dateRangeInput with name = “dates” and label = “Date Range”. HINT: Use h4.

#FILE INPUT
#In the example below we create a UI with a File Input.
#ui.R
#shinyUI(fluidPage(
#fileInput(“file”, label = h3(“File input”))
#))

#server.R
#shinyServer(function(input, output) {
#})

#Under the dateRangeInput place a fileInput. Name it “file” and give it the label “File Input”.
library(shiny)
shinyUI(fluidPage(
  titlePanel("Shiny App"),
  
  sidebarLayout(
    sidebarPanel(
      h2("Menu"),
      br(),
      h4("ActionButton"),
      actionButton("per", label = "Perform"),
      br(),
      h4("SubmitButton"),
      submitButton("Submit"),
      br(),
      h4("Single Checkbox"),
      checkboxInput("checkbox", label = "Choice A", value = TRUE),
      checkboxGroupInput("checkGroup",
                         label = h4("Checkbox Group"),
                         choices = list("Choice 1"=1,
                                        "Choice 2"=2,
                                        "Choice 3"=3),
                         selected = 2),
      dateInput("date", 
                label = h4("Date Input"),
                value = "2017-01-11"),
      dateRangeInput("date",
                     label = h4("Date Range")),
      fileInput("file",
                label = h4("File Input"))),
    
    mainPanel(h1("Main"),
              img(src = "petal.jpg", height = 150, width = 200),
              br(),
              br(),
              p("This famous (Fisher’s or Anderson’s)",a("iris", href="http://stat.ethz.ch/R-manual/R-devel/library/datasets/html/iris.html"),"data set gives the measurements in centimeters of the variables sepal length and width and petal length and width, respectively, for 50 flowers from each of 3 species of iris. The species are ",strong("Iris setosa"), strong("versicolor"),"and", strong("virginica.")),
              br(),
              h2("Analysis")
    )
  )
  
))

