
#' This function creates bmi groups
#'
#' @param x numeric vector
#'
#' @return Factor Variable
#'
#' @examples
#' bmi.vals <- rnorm (n=20, mean=25, sd=3 )
#' bmi3(bmi.vals)
#'
#'  @export

# I used this function instead of one of the functions in the lab due to time limitations

bmi3<- function(x) {
  bmi.groups <- cut(x, breaks = c(0, 25, 30, Inf) , right=FALSE)
  return(bmi.groups)
}








