#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Week 4 Assignment Predict horsepower from MPG"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG","What is the MPG of the car",10,35,value=20),
      checkboxInput("showModel1","show/hide Model1",value=TRUE),
      checkboxInput("showModel2","show/hide Model2", value=TRUE)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      tabsetPanel(type="tabs",tabPanel("Application",br(),plotOutput("plot1"),
                                       h3("Predicted Horsepower from Model1:"),
                                       textOutput("pred1"),
                                       h3("Predicted Horsepower from Model2:"),
                                       textOutput("pred2")
      ),
                              tabPanel("Documentation",br(),textOutput("out1"))
      )          
 #      plotOutput("plot1"),
 #     h3("Predicted Horsepower from Model1:"),
 #     textOutput("pred1"),
#       h3("Predicted Horsepower from Model2:"),
#       textOutput("pred2"),
#       cat(file=stderr())
    )
  )
))
