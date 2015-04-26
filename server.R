# load library
library(shiny)

# Define server logic to draw a histogram
shinyServer(function(input, output) {
          
          #expression for histogram based on faithful data
          output$histPlot <- renderPlot({
                    x    <- faithful[, 2] 
                    bins <- seq(min(x), max(x), length.out = input$bins + 1)
                    
                    # draw the histogram 
                    hist(x, main="Distribution erruption waiting time", 
                         ylab="Frequency",
                         xlab="Waiting Time",
                         breaks = bins, col = 'red', border = 'black')
          })
          
})