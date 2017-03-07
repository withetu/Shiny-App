##               http://r-exercises.com/2016/12/12/building-shiny-app-exercises-part-1/
##               http://r-exercises.com/2016/12/18/building-shiny-app-exercises-part-2/
##               http://r-exercises.com/2016/12/25/building-shiny-app-exercises-part-3/
##               http://r-exercises.com/2017/01/01/building-shiny-app-exercises-part-4/



## You can run a Shiny app by giving the name of its directory to the function runApp(). For example if your Shiny app is in a directory called “Shiny App”, run it with the following code:
## library(shiny)
## runApp("Shiny App")
## Or by just clicking the “Run App” button at the top of the editor which is the safest solution.

#Create an empty app with a blank user-interface.
shinyServer(function(input, output) {
  output$Table <- renderDataTable(
    iris,options = list(
      lengthMenu = list(c(10, 20, 30,-1),c('10','20','30','ALL')),
      pageLength = 10))
  output$Image <- renderImage({
    filename <- normalizePath(file.path('./images',
                                        paste('pic', input$radio, '.png', sep='')))
    list(src = filename,
         width=300,
         height=200)
    
    
  },deleteFile = FALSE)
  output$text1 <- renderPrint({
    paste("You have selected", input$slider1,"clusters")
  })
})

