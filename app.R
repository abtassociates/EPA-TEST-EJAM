library(shiny)

ui <- fluidPage(
  h3('Test header')
)

server <- function(input, output, session) {
  
}

shinyApp(ui, server)
