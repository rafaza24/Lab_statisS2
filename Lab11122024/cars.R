?cars
data(cars)

cars

plot(cars,pch = 16,col = "#8F75B8",main = "Speed vs distance for cars in 1920s",xlab = "speed(mph)",ylab= "stopping distance(feet)")

abline(lm(cars$dist~cars$speed),col="lightblue",lwd= 2)

lines(lowess(cars$speed,cars$dist),col = "#804C17",lwd = 5)


scatterplot(cars$dist~cars$speed, pch = 16 ,col = "#9A1EFF",main = "Speed vs distance for cars in 1920s",xlab = "speed(mph)",ylab= "stopping distance(feet)")
