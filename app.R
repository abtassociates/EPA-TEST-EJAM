library(shiny)

library(EJAMbatch.summarizer)
library(EJAMejscreenapi)

ui <- fluidPage(
  h3('Test header pt. 2'),
  h5('test subheader')
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
