library(ggpubr)
library(dplyr)
set.seed(423)

n1 <- c(2, 7, 9 ,13, 15)
l <- c(0, 5, 7, 8, 12)
n2 <- c(3, 5, 9, 14, 22)

data11 <- rf(1000, n1[1], n2[1], l[1])
data12 <- rf(1000, n1[1], n2[2], l[1])
data13 <- rf(1000, n1[1], n2[3], l[1])
data14 <- rf(1000, n1[1], n2[4], l[1])
data15 <- rf(1000, n1[1], n2[5], l[1])

p11 <- ggplot(NULL, aes(x = data11)) + geom_histogram(aes(y = ..density..)) + geom_density()
p12 <- ggplot(NULL, aes(x = data12)) + geom_histogram(aes(y = ..density..)) + geom_density()
p13 <- ggplot(NULL, aes(x = data13)) + geom_histogram(aes(y = ..density..)) + geom_density()
p14 <- ggplot(NULL, aes(x = data14)) + geom_histogram(aes(y = ..density..)) + geom_density()
p15 <- ggplot(NULL, aes(x = data15)) + geom_histogram(aes(y = ..density..)) + geom_density()

o1 <- ggarrange(p11, p12, p13, p14, p15, nrow = 1)
o1 <- annotate_figure(o1, top = text_grob("df1 = 2, ncp = 0, df2 varies in (3, 5, 9, 14, 22)", 
                                          color = "red", face = "bold", size = 14))

data21 <- rf(1000, n1[1], n2[1], l[2])
data22 <- rf(1000, n1[1], n2[2], l[2])
data23 <- rf(1000, n1[1], n2[3], l[2])
data24 <- rf(1000, n1[1], n2[4], l[2])
data25 <- rf(1000, n1[1], n2[5], l[2])

p21 <- ggplot(NULL, aes(x = data21)) + geom_histogram(aes(y = ..density..)) + geom_density()
p22 <- ggplot(NULL, aes(x = data22)) + geom_histogram(aes(y = ..density..)) + geom_density()
p23 <- ggplot(NULL, aes(x = data23)) + geom_histogram(aes(y = ..density..)) + geom_density()
p24 <- ggplot(NULL, aes(x = data24)) + geom_histogram(aes(y = ..density..)) + geom_density()
p25 <- ggplot(NULL, aes(x = data25)) + geom_histogram(aes(y = ..density..)) + geom_density()

o2 <-  ggarrange(p21, p22, p23, p24, p25, nrow = 1)
o2 <- annotate_figure(o2, top = text_grob("df1 = 2, ncp = 5, df2 varies in (3, 5, 9, 14, 22)", 
                                          color = "red", face = "bold", size = 14))

data31 <- rf(1000, n1[1], n2[1], l[3])
data32 <- rf(1000, n1[1], n2[2], l[3])
data33 <- rf(1000, n1[1], n2[3], l[3])
data34 <- rf(1000, n1[1], n2[4], l[3])
data35 <- rf(1000, n1[1], n2[5], l[3])

p31 <- ggplot(NULL, aes(x = data31)) + geom_histogram(aes(y = ..density..)) + geom_density()
p32 <- ggplot(NULL, aes(x = data32)) + geom_histogram(aes(y = ..density..)) + geom_density()
p33 <- ggplot(NULL, aes(x = data33)) + geom_histogram(aes(y = ..density..)) + geom_density()
p34 <- ggplot(NULL, aes(x = data34)) + geom_histogram(aes(y = ..density..)) + geom_density()
p35 <- ggplot(NULL, aes(x = data35)) + geom_histogram(aes(y = ..density..)) + geom_density()

o3 <-  ggarrange(p31, p32, p33, p34, p35, nrow = 1)
o3 <- annotate_figure(o3, top = text_grob("df1 = 2, ncp = 7, df2 varies in (3, 5, 9, 14, 22)", 
                                          color = "red", face = "bold", size = 14))

data41 <- rf(1000, n1[1], n2[1], l[4])
data42 <- rf(1000, n1[1], n2[2], l[4])
data43 <- rf(1000, n1[1], n2[3], l[4])
data44 <- rf(1000, n1[1], n2[4], l[4])
data45 <- rf(1000, n1[1], n2[5], l[4])

p41 <- ggplot(NULL, aes(x = data41)) + geom_histogram(aes(y = ..density..)) + geom_density()
p42 <- ggplot(NULL, aes(x = data42)) + geom_histogram(aes(y = ..density..)) + geom_density()
p43 <- ggplot(NULL, aes(x = data43)) + geom_histogram(aes(y = ..density..)) + geom_density()
p44 <- ggplot(NULL, aes(x = data44)) + geom_histogram(aes(y = ..density..)) + geom_density()
p45 <- ggplot(NULL, aes(x = data45)) + geom_histogram(aes(y = ..density..)) + geom_density()

o4 <- ggarrange(p41, p42, p43, p44, p45, nrow = 1)
o4 <- annotate_figure(o4, top = text_grob("df1 = 2, ncp = 8, df2 varies in (3, 5, 9, 14, 22)", 
                                          color = "red", face = "bold", size = 14))

data51 <- rf(1000, n1[1], n2[1], l[5])
data52 <- rf(1000, n1[1], n2[2], l[5])
data53 <- rf(1000, n1[1], n2[3], l[5])
data54 <- rf(1000, n1[1], n2[4], l[5])
data55 <- rf(1000, n1[1], n2[5], l[5])

p51 <- ggplot(NULL, aes(x = data51)) + geom_histogram(aes(y = ..density..)) + geom_density()
p52 <- ggplot(NULL, aes(x = data52)) + geom_histogram(aes(y = ..density..)) + geom_density()
p53 <- ggplot(NULL, aes(x = data53)) + geom_histogram(aes(y = ..density..)) + geom_density()
p54 <- ggplot(NULL, aes(x = data54)) + geom_histogram(aes(y = ..density..)) + geom_density()
p55 <- ggplot(NULL, aes(x = data55)) + geom_histogram(aes(y = ..density..)) + geom_density()

o5 <- ggarrange(p51, p52, p53, p54, p55, nrow = 1)
o5 <- annotate_figure(o5, top = text_grob("df1 = 2, ncp = 12, df2 varies in (3, 5, 9, 14, 22)", 
                                          color = "red", face = "bold", size = 14))

ggarrange(o1, o2, o3, o4, o5, nrow = 5)