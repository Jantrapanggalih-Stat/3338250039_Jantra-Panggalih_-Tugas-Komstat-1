#1.Buka data airquality
# Memanggil data airquality
data(airquality)
# Menampilkan struktur data
str(airquality)

#2.Buat histogram untuk variabel Wind, sertakan pula density nya
# Membuat Histogram variabel Wind
hist(airquality$Wind,
     xlab = "Wind",
     main = "Histogram Variabel Wind")
# Menghitung Estimasi kepadatan
dens <- density(airquality$Wind)
# Histogram + kurva kepadatan
hist(airquality$Wind,
     probability = TRUE,
     xlab = "Wind",
     main = "Histogram dam Density Curve")
# Menambahkan garis kepadatan
lines(dens, col = "darkblue", lwd = 2)

#3.Buat boxplot dan steam and leaf
# Membuat Boxplot variabel Wind
boxplot(airquality$Wind,
        main = "Boxplot Variabel Wind",
        xlab = "Wind")
# Membuat Stem and leaf variabel Wind
stem(airquality$Wind)

#4.Buat scatter plot
# Membuat Scatterplot Wind terhadap Temperature
plot(Temp ~ Wind, data = airquality,
     pch = 16,
     main = "Scatterplot Wind terhadap Temperature",
     xlab = "Wind",
     ylab = "Temperature")