curve(dnorm(x, mean=1, sd=1),col="red",xlim = c(-6,6))
curve(dnorm(x, mean=1.5, sd=1),col="blue",xlim = c(-6,6),add = TRUE)
curve(dnorm(x, mean=2, sd=1),col="green",xlim = c(-6,6),add = TRUE)
curve(dnorm(x, mean=2.5, sd=1),col="brown",xlim = c(-6,6),add = TRUE)
curve(dnorm(x, mean=3, sd=1),col="purple",xlim = c(-6,6),add = TRUE)

#pnorm untuk kurang dari (<)
pnorm(20, mean = 30 ,sd = 25)
#pnorm untuk lebih dari (>)
1-pnorm(20, mean = 30 ,sd = 25)
#pnorm untuk diantara
pnorm(45,mean = 30, sd = 25) -  pnorm(20,mean = 30, sd = 25)

#1
1-pnorm(70,mean = 39, sd = 21)
#2
pnorm(52,mean = 39, sd = 21) -  pnorm(31,mean = 39, sd = 21)
#3
pnorm(42, mean = 39 ,sd = 21)


#distribusi populasi
x <- c(2,3,4,1,5,2,5,2,3,5,2,3,5,4,3,2,1,3,4,3,3,3,2,3,1,4,3,4)
data <- table(x)/length(x)
data1 <- round(data,digits = 3)
data1
barplot(data1)

