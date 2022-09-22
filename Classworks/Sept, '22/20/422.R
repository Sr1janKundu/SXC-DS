rm(list=ls())

par(mfrow=c(2,3))
n = c(5,10,15,25,50)
generate_chisq = function(n){
  x = seq(0, 100, 0.01)
  y = dchisq(x, n)
  
  plot(x,y,type='l',
       lwd=2,col='red',
       main=paste('df =',n),
       xlab='values',
       ylab='density')
}
sapply(n, generate_chisq)
mtext("Chisquare Distribution over different df", 
      side = 3, 
      line = -1.5, 
      outer = TRUE)

# observation
#--> as df increases the shape Of the curve is becoming symmetric


rm(list=ls())

par(mfrow=c(2,3))
n = c(5,10,15,25,50,100)
limit_chisq = function(n){
  y = rchisq(1000, n)
  z = (y - n)/sqrt(2*n)
  
  hist(z,
       freq=FALSE,
       col='lightblue',
       main=paste('df =',n),
       xlab='values',
       ylab='density',
       ylim=c(0,0.5))
  curve(dnorm, 
        col="red", lwd=2, add=TRUE, yaxt="n")
}
sapply(n, limit_chisq)
mtext("Histogram of samples drawn from Chisquare Distribution", 
      side = 3, 
      line = -1.5, 
      outer = TRUE)

# observation
#--> as df increases the shape Of the curve is becoming symmetric


rm(list=ls())

par(mfrow=c(2,3))
n = c(5,50,100,500,1000)
generate_t = function(n){
  x = seq(-3, 3, 0.01)
  y = dt(x, n)
  
  plot(x,y,type='l',
       lwd=2,col='red',
       main=paste('df =',n),
       xlab='values',
       ylab='density')
}
sapply(n, generate_t)
mtext("Students-t Distribution over different df", 
      side = 3, 
      line = -1.5, 
      outer = TRUE)

# observation
#-->


rm(list=ls())

par(mfrow=c(2,3))
n = c(5,10,15,25,50,100)
limit_t = function(n){
    y = rt(1000, n)
    z = y/sqrt(n/(n-2))
    
    hist(z,
         freq=FALSE,
         col='lightblue',
         main=paste('df =',n),
         xlab='values',
         ylab='density',
         ylim=c(0,0.5))
    curve(dnorm, 
          col="red", lwd=2, add=TRUE, yaxt="n")
}
sapply(n, limit_t)
mtext("Histogram of samples drawn from Chisquare Distribution", 
      side = 3, 
      line = -1.5, 
      outer = TRUE)

# observation
#-->