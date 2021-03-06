library(manipulate)
library(ggplot2)
myHist <- function(mu){
  mse <- mean(( galton$child -mu)^2)
  g <-gplot(galton,aes(x=child)) + geom_histogram(fill="salmon", colour= "black", binwidth = 1)
  g <-g+ geom_vline(xintercept = mu, size=2)
  g <-g + ggtitle(paste("mu = ",mu, " MSE = ", round(mse,3), sep = ""))
  g
}
manipulate(myHist(mu), mu = slider(62, 72, step= 0.25))



