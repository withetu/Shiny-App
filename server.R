##               http://r-exercises.com/2016/12/12/building-shiny-app-exercises-part-1/
##               http://r-exercises.com/2016/12/18/building-shiny-app-exercises-part-2/
##               http://r-exercises.com/2016/12/25/building-shiny-app-exercises-part-3/
##               http://r-exercises.com/2017/01/01/building-shiny-app-exercises-part-4/
##               http://r-exercises.com/2017/01/24/building-shiny-app-exercises-part-5/
##               http://r-exercises.com/2017/02/07/building-shiny-app-exercises-part-6/




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
  
  output$text1 <- renderText({
    paste("You have selected", input$slider1,"clusters")
  })
  sumiris<-as.data.frame.array(summary(iris))
  output$Table2 <- renderDataTable(sumiris)
  output$plot1 <- renderPlot({
    plot(iris$Petal.Length,iris$Petal.Width,main = "K-MEANS",xlab="Petal Length",ylab = "Petal Width",
         cex.main = 2,   font.main= 4, col.main= "blue")
  }, width = "auto",height = "auto")
  output$coord <- renderText({
    paste0("x=", input$mouse$x, "\ny=", input$mouse$y)
  })
  output$All <- renderUI({
    tagList(
      sliderInput("slider1", label = h4("Clusters"),
                  min = 3, max = 10, value = 3),
      textOutput("text1")
      
    )
  })
})


