library(shiny)

shinyUI(fluidPage(
    
    titlePanel("Number Cruncher"),

    p("Enter a comma-separated list of numbers, e.g., '100,200,300,400,500' and press Submit. 
      The sum, mean, median, min and max will then be displayed."),
    tags$style(type="text/css", "textarea {width:100%}"),
    tags$textarea(id = 'text', placeholder = 'Enter comma-separated numbers here', rows = 8, ""),
    submitButton("Submit"),
   
    
    hr(),
   
    fluidRow(column(2, strong("Sum:"), align="right"), column(3, textOutput("sum"))),
    fluidRow(column(2, strong("Mean:"), align="right"), column(3, textOutput("mean"))),
    fluidRow(column(2, strong("Median:"), align="right"), column(3, textOutput("median"))),
    fluidRow(column(2, strong("Min:"), align="right"), column(3, textOutput("min"))),
    fluidRow(column(2, strong("Max:"), align="right"), column(3, textOutput("max")))

))

