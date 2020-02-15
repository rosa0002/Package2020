#' Binomial simulation
#'
#'This uses the sample function to produce a binomial simmulation
#'
#'
#' @param iter : number of iterartions
#' @param n : number of trials
#' @param p : probability of success
#'
#' @return : a plot of the simmulations with proportions & a table of proportions
#' @export
#'
#' @examples
#' mybin()
#'
mybin=function(iter=100,n=10, p=0.7){
  sam.mat=matrix(NA,nr=10,nc= iter, byrow=TRUE)
  succ=c()
  for( i in 1:iter){
    sam.mat[,i]=sample(c(1,0), n ,replace=TRUE, prob=c(p, 1-p))
    succ[i]=sum(sam.mat[,i])}
  succ.tab=table(factor(succ,levels=0:n))

  iter.lab= paste0("iter=", iter)
  n.lab= paste0("n= ", n)
  p.lab= paste0("p= ", p)
  lab= paste(iter.lab, n.lab, p.lab, sep=", ")
  barplot(succ.tab/(iter), col=rainbow(n+1), main="Binomial simulation", sub=lab,  xlab="Number of successes")
  succ.tab/iter}




bin100=mybin(iter=100, n=10, p=0.7)
bin200=mybin(iter=200, n=10, p=0.7)
bin500=mybin(iter=500, n=10, p=0.7)
bin1000=mybin(iter=1000, n=10, p=0.7)
bin10000=mybin(iter=10000, n=10, p=0.7)

# Verify that the values are apoproximately correct
dbin.tab= round(dbinom(0:10, size= 10, prob= 0.7), 4)
names(dbin.tab)= 0:10
dbin.tab

