kelompok <- factor(rep(c("A","B","C","D"),each = 5 ))
nilai <- c(19,21,26,24,18,14,16,14,13,17,11,14,21,13,16,24,19,21,16,20)

#data frame
data <- data.frame(kelompok,nilai)
data

#melakukan uji ANOVA satu arah
anova_satu_arah <- aov(nilai ~ kelompok, data = data)

#menampilkan hasil ANOVA
summary(anova_satu_arah)
