outlet <- read.csv("D:\\angkatan 2023\\Sains Data\\Rafid Farhan Zai\\lab statistic\\data-outlet.csv",header = TRUE,sep = ";")

#soal 1
#a
summary(outlet)

#b
cor.test(outlet$jenis.pakaian.yang.di.pajang,outlet$jumlah..pengunjung.outlet,method = "pearson",exact = FALSE)

plot(outlet$jenis.pakaian.yang.di.pajang~outlet$jumlah..pengunjung.outlet, 
pch = 16,
col = "brown",
main = "Jumlah jenis pakaian dan pengunjung dari outlet MataBatin",
xlab ="Jenis pakaian" ,
ylab = "jumlah pengunjung")

abline(lm(outlet$jenis.pakaian.yang.di.pajang~outlet$jumlah..pengunjung.outlet),col = "darkblue",lwd = 2)
lines(lowess(outlet$jenis.pakaian.yang.di.pajang~outlet$jumlah..pengunjung.outlet),col = "black",lwd = 2)

library(car)

scatterplot(outlet$jenis.pakaian.yang.di.pajang~outlet$jumlah..pengunjung.outlet, 
     pch = 16,
     col = "cyan",
     main = "Jumlah jenis pakaian dan pengunjung dari outlet MataBatin",
     xlab ="Jenis pakaian" ,
     ylab = "jumlah pengunjung")


