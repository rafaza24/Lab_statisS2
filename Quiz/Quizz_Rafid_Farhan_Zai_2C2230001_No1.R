#import data
Hasil_panen_manggis <- read.csv("D:\\angkatan 2023\\Sains Data\\Rafid Farhan Zai\\lab statistic\\quizzz.csv",header = TRUE,sep = ";")
#soal 1
#a
summary(Hasil_panen_manggis)

#b
cor.test(Hasil_panen_manggis$Jumlah.Bibit,Hasil_panen_manggis$Hasil.Panen,method = "kendall",exact = FALSE)
cor.test(Hasil_panen_manggis$Jumlah.Bibit,Hasil_panen_manggis$Hasil.Panen,method = "spearman",exact = FALSE)

#c



plot(Hasil_panen_manggis$Jumlah.Bibit~Hasil_panen_manggis$Hasil.Panen, 
     pch = 16,
     col = "cyan",
     main = "Jumlah bibit terhadap hasil panen manggis",
     xlab ="jumlah bibit" ,
     ylab = "hasil panen")


abline(lm(Hasil_panen_manggis$Jumlah.Bibit~Hasil_panen_manggis$Hasil.Panen),col = "darkblue",lwd = 2)
lines(lowess(Hasil_panen_manggis$Jumlah.Bibit,Hasil_panen_manggis$Hasil.Panen),col = "pink",lwd =2)

