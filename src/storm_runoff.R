# Create a predict runoff function 

library(roxygen2)

#' predict_runoff function 
#' 
#' Created a function to predict the volume of runoff from a watershed. It first calculates the unit less runoff coefficient and then uses that as an input in the calculation of the total volume. 
#'
#' @param impervious This is a unit less fraction of the watershed that is considered impervious 
#' @param watershed_area This is the total area of the water shed in acres
#'
#' @return
#' @export
#'
#' @examples
predict_runoff <- function(impervious, watershed_area){
  runoff_coef <- 0.05 + 0.9*impervious 
  
  volume <- 3630 * 1 * runoff_coef * watershed_area
  return(volume)
}

predict_runoff(2, 2)

