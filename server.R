
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

type <- 0

selected <- function (s) {
    if (s == type) 
        "black"
}

shinyServer(function(input, output) {


    
  output$distPlot <- renderPlot({

    min <- input$factorI
      
    # draw the histogram with the specified number of bins
    plot(c(00, 100), c(0, 100), axes=FALSE, ann=FALSE,
         type = "n", xlab = "", ylab = "",
         main = "TRIST")
    
    
    ### rect(xleft, ybottom, xright, ytop, density = NULL, angle = 45,
    ### col = NA, border = NULL, lty = par("lty"), lwd = par("lwd"),
    ### ...)
    rect(0,0,50,50,col=selected(1))
    rect(50,0,100,50,col=selected(2))
    rect(0,50,50,100,col=selected(3))
    rect(50,50,100,100,col=selected(4))

  })

})
