runif(10)

#Question 1

a11 <- 2*5*(6+9-3)
a12 <- 120-(8/5+(28*4))+(5+7)
x11 = 5.7
y11= 5*x11^2 + 2*x11 + 3
y12 = sqrt(x11) + 3
y13 = abs(x11^2 -40)

  
#Question 2

#a
x22 <- c(5, 3, 7, 11, 4, 6, 10, 9, 8, 12)
y21 <- 2*x22^2 - 11*x22 +25
t <- deg2rad(x22)
y22 <- cos(t)
y23 <- log(x22) - 3
y24 <- log10(x22)
y25 <- exp(x22 + 3)

#b
fruit <- c("Apple", "mango", "banana", "orange", "grape")

#c
colour <- c(TRUE, FALSE, FALSE, FALSE, FALSE)


#Question 3

y31 <- c(0.5, 2, 5, 9, 14, 19, 25, 32)

#(i)
z31 <- log(y31) -1

#(ii)
z32 <- ceiling(z31)

#(iii)
z33 <- floor(z31)

#(iv)
z34 <- trunc(z31)

#(v)
z35 <- round(z31)

#(vi)
z36 <- signif(z31)


#Question 4

#(i)
x41 <- 1:20

#(ii)
x42 <- seq(1, 40, 3)

#(iii)
x43 <- seq(20, 0, -2)

#(iv)
x44 <- rep(1:5, 5)

#(v)
x45 <- rep(1:5, each = 3)

#(vi)
x46 <- rep(c(1, -1), 20)

#(vii)
x47 <- rep(1:3, times = c(4, 5, 6))

#(viii)
x48 <- rep(1:5, times = c(2, 5, 2, 1, 3))

#(ix)
x49 <- 2*x41


#Question 5

#a
x51 <- c(36,5,51,5,37,35,30,35,45,21,72,62,46,88,73,9,46,36,90,17,56,94,53,50,63)

#(ai)
length(x51)

#(aii)
c(head(x51, 5), tail(x51, 4))

#(aiii)
x51[-c(1, 5)]

#(aiv)
which(x51 > 45)


