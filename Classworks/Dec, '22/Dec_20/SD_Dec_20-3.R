set.seed(423)
r <- 10000
samp <- replicate(r, runif(25, 0, 2))
m <- 0
for (i in 1:10000)
{
  m[i] <- max(samp[, i])  
}
# critical value calculated in copy
cr_value <- 0.95^(1/25)
no_of_rej <- length(m[which(m>cr_value)])
no_of_rej/r     
# this value will be close to 1; meaning almost all rejection.(alpha= 0.05 taken to 
#calculate the critical value, check copy. Under H_0, critical value is unchanged, but the original sample source,
#i.e. the U(0, 2) distribution has changed.)
