library(shiny)

shinyUI(fluidPage(
  titlePanel("Simple Scatter plot with Progress bar"),
  sidebarLayout(
    sidebarPanel(
      p("Use below dropdown to set up the chart, then click on the Create Chart button to display it"),
      br(),
      selectInput("xaxis", "X-axis:", 
                  choices=colnames(mtcars)),
      br(),
      selectInput("yaxis", "Y-axis:", 
                  choices=colnames(mtcars)),
      br(),
      actionButton('run', 'Create Scatter plot')
    ),
    mainPanel(
      plotOutput('plot')
      
    )
  )
))