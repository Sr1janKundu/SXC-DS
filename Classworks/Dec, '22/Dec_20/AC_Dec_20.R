1-(pnorm(11) - pnorm(-1))
1-(pcauchy(11) - pcauchy(-1))

curve(dnorm(x), from = -3, to = 3, col = "green")
curve(dcauchy(x), from = -3, to = 3, col = "red", add = TRUE)
