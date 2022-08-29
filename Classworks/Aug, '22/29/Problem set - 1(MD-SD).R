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
z35 <- round(z31, digits = 2)

#(vi)
z36 <- signif(z31, digits = 2)


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

#(av)
freq = c(x51[x51 == 30], x51[x51 == 35], x51[x51 == 37])
table(freq)
table(x51[x51 ==30 | x51 == 35 | x51 == 37])

#(avi) Sort the observations in x in ascending order .
sort(x51)

#(avii) Rank the observations in x.
rank(x51)

#(aviii) Find sum of the observations in x.
sum(x51)

#(aix)Find sum of those observations in x which are more than 40 and less than 80.
sum(x51[x51 > 45 & x51 < 80])

#(ax)Find the mean of x.
mean(x51)

#(axi)Find the mean of those observations in x which are less than 20 or more than 80.
mean(x51[x51 < 20 | x51 > 80])

#(axii) Find variance and standard deviation of x.
var(x51)
sd(x51)

#(axiii)Find the three quartiles of x and the interquartile range.
quantile(x51, 0.25)
quantile(x51, 0.5)
quantile(x51, 0.75)
quantile(x51, c(0.25,0.5,0.75))
IQR(x51)

#(axiv) Find the minimum and maximum value of x.
min(x51)
max(x51)

#(axv) Use the function “summary” and observe what information it gives.

summary(x51)

#b Consider an array storing the colour of hair of 15 persons as follows: Red Brown Red Black Red Black Black Black Brown Red Brown Black Red Brown Black.
#Find the most fashionable hair colour among these 15 individuals.

hair_color = c("Red", "Brown", "Red", "Black", "Red", "Black", "Black", "Black", "Brown", "Red", "Brown", "Black", "Red", "Brown", "Black")

length(hair_color)

table(hair_color)


ls()
rm(list = ls())
getwd()
