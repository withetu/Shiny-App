##               http://r-exercises.com/2016/12/12/building-shiny-app-exercises-part-1/
##               http://r-exercises.com/2016/12/18/building-shiny-app-exercises-part-2/
##               http://r-exercises.com/2016/12/25/building-shiny-app-exercises-part-3/
##               http://r-exercises.com/2017/01/01/building-shiny-app-exercises-part-4/
##               http://r-exercises.com/2017/01/24/building-shiny-app-exercises-part-5/
##               http://r-exercises.com/2017/02/07/building-shiny-app-exercises-part-6/
##               http://r-exercises.com/2017/02/19/building-shiny-app-exercises-part-7/





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
  sumiris<-as.data.frame.array(summary(iris))
  output$Table2 <- renderDataTable(sumiris)
  output$plot1 <- renderPlot({
    palette(c("#E41A1C", "#377EB8", "#4DAF4A", "#984EA3",
              "#FF7F00", "#FFFF33", "#A65628", "#F781BF", "#999999"))
    plot(Data(),main = "K-MEANS",
         col = Clusters()$cluster,
         pch = 20, cex = 3,
         cex.main = 2,   font.main= 4, col.main= "blue")
  }, width = "auto",height = "auto")
  output$coord <- renderText({
    paste0("x=", input$mouse$x, "\ny=", input$mouse$y)
  })
  output$All <- renderUI({
    tagList(
      fluidRow(
        column(4,
               sliderInput("slider1", label = h4("Clusters"),
                           min = 1, max = 9, value = 4)),
        column(4,
               checkboxGroupInput("checkGroup",
                                  label = h4("Variable X"),names(iris),
                                  selected=names(iris)[[2]]
               )),
        column(4,
               selectInput("select", label = h4("Variable Y"),
                           names(iris),selected=names(iris)[[2]]
               )))
      
      
    )
  })
  Data <- reactive({iris[, c(input$select,input$checkGroup)]
  })
  Clusters <- reactive({
    kmeans(Data(),input$slider1)
  })
})

