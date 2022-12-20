set.seed(423)
r <- 10000
samp <- replicate(r, runif(25, 0, 1))
m <- 0
for (i in 1:10000)
{
  m[i] <- max(samp[, i])  
}
# critical value calculated in copy
cr_value <- 0.95^(1/25)
no_of_rej <- length(m[which(m>cr_value)])
no_of_rej/r     # this value will be close to the alpha(= 0.05 taken to calculate the critical value, check copy.)




#r <- 100
#samp <- replicate(r, max(runif(25, 0, 1)))
#cr_value <- 0.95^(1/25)
#no_of_rej <- length(m[which(m>cr_value)])
#no_of_rej/r