#load library
library(shiny)

# Specification shinyUI
shinyUI(fluidPage(
          
          # title
          titlePanel("Course Project: Shiny Application and Reproducible Pitch"),
          
          # Sidebar with a slider for number of bins
          sidebarLayout(
                    sidebarPanel(
                              sliderInput("bins",
                                          "Set number of bins [5-100]:",
                                          min = 5,
                                          max = 100,
                                          value = 30)
                    ),
                    
                    # Show a plot of the generated distribution
                    mainPanel(
                              plotOutput("histPlot")
                    )
          )
))