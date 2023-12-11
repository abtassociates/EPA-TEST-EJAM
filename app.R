library(shiny)

library(EJAMbatch.summarizer)
library(EJAMejscreenapi)

ui <- fluidPage(
  h3('Test header pt. 2'),
  h5('test subheader'),
  
  h5('New code showing up!'),
  
  selectInput('test_sel', label = 'Choose an option', choices = c('A','B','C'))
)

server <- function(input, output, session) {
  observeEvent(input$test_sel, {
    cat(paste0('this is working! you chose ', input$test_sel))
    
  })
}

shinyApp(ui, server)
