library(shiny)

ui <- fluidPage(
  h3('Test header pt. 2'),
  h5('test subheader'),
  
  h5('New code showing up!'),
  
  selectInput('test_sel', label = 'Choose an option', choices = c('A','B','C')),
  verbatimTextOutput('test_sel_text'),
  
  tableOutput('pins_table')
)

server <- function(input, output, session) {
  observeEvent(input$test_sel, {
    cat(paste0('this is working! you chose ', input$test_sel))
    
  })
  
  output$test_sel_text <- renderText({
    paste0('this dropdown is working! you chose ', input$test_sel)
  })
  
}

shinyApp(ui, server)
