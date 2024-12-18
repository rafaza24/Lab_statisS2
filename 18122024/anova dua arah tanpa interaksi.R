# membuat data
rm(list = ls())
metode <- factor(rep(c("A","B"), each = 10))
jenis_kelamin <- factor(rep(c("Laki-laki","Perempuan"),times = 5 ,each = 2))
nilai <- c(80,85,90,88,95,70,72,68,75,74,85,87,90,92,91,75,78,80,82,79)

#data Frame
data <- data.frame(metode,jenis_kelamin,nilai)

#melakukan uji ANOVA dua arah tanpa interaksi
anova_dua_arah_no_interaksi <- aov(nilai ~ metode + jenis_kelamin, data = data)

#menampilkan hasil ANOVA
summary(anova_dua_arah_no_interaksi)
