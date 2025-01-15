kentang <- read.csv("D:\\angkatan 2023\\Sains Data\\Rafid Farhan Zai\\lab statistic\\kentang.csv",header = TRUE,sep = ";")

#nomor 2
#a
reg.kentang <- lm(kentang$jumlah.kentang.goreng~kentang$jumlah.pelanggan.puas)
reg.kentang

#b
cor.test(kentang$jumlah.kentang.goreng,kentang$jumlah.pelanggan.puas, method = "kendall",exact = FALSE)

#c

library(car)

scatterplot(kentang$jumlah.kentang.goreng~kentang$jumlah.pelanggan.puas, 
            pch = 16,
            col = "tomato",
            main = "Jumlah Kentang Goreng Per-Sajian diberikan dan jumlah pelanggan yang puas",
            xlab ="jumlah kentang goreng" ,
            ylab = "jumlah pelanggan puas")