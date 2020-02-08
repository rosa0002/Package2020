#' BMI package
#'
#' Contains a function that does does something fantastic
#'
#' @docType Package
#'
#' @author Wagner Rosa (following exampple by Dane Van Domelen on YT ) \email{wagner.e.rosa-1@ou.edu}
#'
#' @name Package2020
NULL

# I used this function instead of one of the functions in the lab due to time limitations

bmi3<- function(x) {
  bmi.groups <- cut(x, breaks = c(0, 25, 30, Inf) , right=FALSE)
  return(bmi.groups)
}







