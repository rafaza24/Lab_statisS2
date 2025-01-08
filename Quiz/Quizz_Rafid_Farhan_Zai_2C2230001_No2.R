#import data
harga<- read.csv("D:\\angkatan 2023\\Sains Data\\Rafid Farhan Zai\\lab statistic\\harga.csv",header = TRUE,sep = ";")
#a
harga
reg.harga <- lm(harga$Potongan.harga~harga$Jumlah.permintaan.konsumen)
reg.harga

#b
cor.test(harga$Potongan.harga,harga$Jumlah.permintaan.konsumen, method = "pearson",exact = FALSE)

plot(harga$Potongan.harga~harga$Jumlah.permintaan.konsumen, 
     pch = 16,
     col = "brown",
     main = "Potongan Harga Dan Jumlah Permintaan Konsumen Di Kecamatan Ciumbuleuit",
     xlab ="potongan harga" ,
     ylab = "jumlah permintaan")


abline(lm(harga$Potongan.harga~harga$Jumlah.permintaan.konsumen),col = "darkblue",lwd = 2)
lines(lowess(harga$Potongan.harga~harga$Jumlah.permintaan.konsumen),col = "black",lwd =2)

