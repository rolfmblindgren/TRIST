
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

### Application title
    titlePanel("Team Role Indicator Software Tool"),

### Sidebar with a slider input for number of bins
    sidebarLayout(
      sidebarPanel(
        sliderInput("factorI",
                  "Extraversion:",
                  min = 20,
                  max = 80,
                  value = 50),

          sliderInput("factorII",
                  "Agreeableness:",
                  min = 20,
                  max = 80,
                  value = 50),

          sliderInput("factorIII",
                  "Conscientiousness:",
                  min = 20,
                  max = 80,
                  value = 50),

          sliderInput("factorIV",
                  "Emotional Stability:",
                  min = 20,
                  max = 80,
                  value = 50),
        

          sliderInput("factorV",
                    "Openness to Experience:",
                    min = 20,
                    max = 80,
                    value = 50)

    ),

    # Show a plot of the generated distribution
    mainPanel(
        plotOutput("distPlot")
        
    )
  )
))
