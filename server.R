library(shiny)


data(mtcars)


server <- function(input, output) {
  output$plot <- renderPlot({
    input$run
    
    dat <- data.frame(x = numeric(0), y = numeric(0))
    
    withProgress(message = 'Loading', value = 0, {
      n <- 10
      
      for (i in 1:n) {

        dat <- rbind(dat, data.frame(x = rnorm(1), y = rnorm(1)))

        Sys.sleep(0.1)
      }
    })

    plot(mtcars[names(mtcars) == as.character(input$xaxis)][[1]], mtcars[names(mtcars) == as.character(input$yaxis)][[1]],
         xlab = input$xaxis, ylab = input$yaxis)
  })
}




