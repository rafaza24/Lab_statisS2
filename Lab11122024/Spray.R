?InsertSprays
spary <- InsectSprays
spary

means <- aggregate(spary$count~spary$spray,FUN = mean)
means
plot(means)

mean.data <- t(means[-1])
colnames(mean.data)<-means[,1]
mean.data

barplot(mean.data)

barplot(mean.data, col = "#59C16A",main = "Effectiveness of the insect Spray",xlab = "Spray used",ylab = "Insect Count")

