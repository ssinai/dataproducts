library(shiny)


shinyServer(function(input, output) {
    
    
    my_array <- reactive ({
        number_array <- strsplit(input$text, ",")
        as.numeric(number_array[[1]])
    })
    
    my_sum <- reactive( {
        sum(my_array(), na.rm=TRUE)
    })
    
    my_mean <- reactive({
        val <- mean(my_array(), na.rm=TRUE)
        
        if (is.nan(val)) {
            val = ""
        } else {
            val
        }
    })
    
    my_median <- reactive({
        val <- median(my_array(), na.rm=TRUE)
        
        if (is.na(val)) {
            val = ""
        } else {
            val
        }
    })
    
    my_min <- reactive({
        val <- min(my_array(), na.rm = TRUE)
        
        if (val == Inf) {
            val = ""
        } else {
            val
        }
    })
    
    my_max <- reactive({
        val <- max(my_array(), na.rm = TRUE)
        
        if (val == -Inf) {
            val = ""
        } else {
            val
        }
    })
    
    
    output$sum <- renderText({ my_sum() })
    output$mean <- renderText({ my_mean() })
    output$median <- renderText({ my_median() })
    output$min <- renderText({ my_min() })
    output$max <- renderText({ my_max() })
    
    
})

