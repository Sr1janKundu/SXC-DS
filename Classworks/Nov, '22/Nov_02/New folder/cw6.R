rm(list=ls())
library(MASS)
library(ggplot2)
library(patchwork)

n = 100
m = 1000

Mu = c(0,0)
Sigma = matrix(c(1,0.5,0.5,1), nrow=2)

byx = 0
bxy = 0

for(i in 1:m){
  samp = mvrnorm(n, Mu, Sigma)
  r = cor(samp[,1], samp[,2])
  sx = sd(samp[,1])
  sy = sd(samp[,2])
  
  byx[i] = r*sy/sx
  bxy[i] = r*sx/sy
}

gg1 = ggplot(NULL, aes(x=byx, y=..density..))+
      geom_histogram(fill="#9BA17B", color="#9BA17B")+
      geom_line(aes(x=byx, y=dnorm(byx, mean(byx), sd(byx))), color='red')+
      labs(title="Distribution of the byx",
           x="byx", y="Frequency Density"); gg1

gg2 = ggplot(NULL, aes(x=bxy, y=..density..))+
  geom_histogram(fill="#FAD6A5", color="#FAD6A5")+
  geom_line(aes(x=bxy, y=dnorm(bxy, mean(bxy), sd(bxy))), color='red')+
  labs(title="Distribution of the bxy",
       x="bxy", y="Frequency Density"); gg2

gg1 + gg2
