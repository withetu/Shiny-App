##               http://r-exercises.com/2016/12/12/building-shiny-app-exercises-part-1/

## You can run a Shiny app by giving the name of its directory to the function runApp(). For example if your Shiny app is in a directory called “Shiny App”, run it with the following code:
## library(shiny)
## runApp("Shiny App")
## Or by just clicking the “Run App” button at the top of the editor which is the safest solution.

library(shiny)

#Create an empty app with a blank user-interface.
#Shiny ui.R scripts use the function fluidPage() to create a display that automatically adjusts to the dimensions of your user’s browser window. You lay out your app by placing elements in the fluidPage() function.
#For example, the ui.R script below creates a user-interface that has a title panel and then a sidebar layout, which includes a sidebar panel and a main panel. Note that these elements are placed within the fluidPage() function.
#The TitlePanel() and sidebarLayout() are the two most used elements to add to fluidPage(). They create a basic Shiny app with a sidebar.
#The sidebarLayout() always takes two arguments: sidebarPanel function output and mainPanel function output.
#Create titlePanel(), name it “Shiny App” and sidebarLayout(). Do not forget to add sidebarPanel() and mainPanel() inside this.
shinyUI(fluidPage(
  titlePanel("Shiny App"),
  
  sidebarLayout(
    sidebarPanel(),
    mainPanel()
  )
))

#HTML Content
#You can add content to your Shiny app by placing it inside a *Panel function.
#HEADERS
#To create a header element: select a header function e.g. (h1) and give it the text you want to see in the header.
#For example, you can create a first level header that says “Title” with h1("Title").
#To place the element in your app:
  #Put h1("Title") as an argument to titlePanel(), sidebarPanel(), or mainPanel().
#The text will appear in the corresponding panel of your web page. You can place multiple elements in the same panel if you separate them with a comma.
#Create an HTML element to add the title “Menu” in the sidebarPanel() and “Main” in mainPanel() with one of Shiny’s tag functions. HINT: Use h1,h2.
shinyUI(fluidPage(
  titlePanel("Shiny App"),
  
  sidebarLayout(
    sidebarPanel(h2("Menu")),
    mainPanel("Main")
  )
))

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



