help_transformation_ui <- function(id) {
  ns <- shiny::NS(id)
  
  htmltools::tagList(
    htmltools::p(
      "The transformation table represents the transformation of a raw dataset
      using operations you are familiar with from the package dplyr. In addition
      you may plot your data using an interface comparable to the ggplot2 package."
    ),
    htmltools::p(
      "The transformation table consists of an arbitrary number of rows. When 
      you start your transformation the table has only one row. In the first 
      step you always select the underlying dataset of the transformation. 
      You can add further steps by clicking the plus button just below the table. 
      Each step takes the result of the previous step as input, applies its 
      selected operation, and outputs the transformed dataset to the next step. 
      You can view the results of every step, if you click the button in
      the results column, which will open the transformed dataset (or the plot
      if you selected the plot predicate) in the viewer below the transformation
      table. Note that most operations aren't editable any more once you added
      a new row. Exceptions are the first data operation row and plot operation
      rows.
      "
    )
  )
}

help_transformation <- function(
  input, output, session, .values
) {
  
  ns <- session$ns
}