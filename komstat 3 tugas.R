# Distribusi Poisson, Hipergeometrik, dan Binomial

# Parameter distribusi Poisson
lambda <- 3

# Nilai X yang akan ditampilkan
x_poisson <- 0:15

# Menghitung PMF Poisson
pmf_poisson <- dpois(x_poisson, lambda = lambda)

# Menampilkan nilai probabilitas
data.frame(
  Jumlah_Pelanggan = x_poisson,
  Probabilitas = pmf_poisson
)

# Grafik PMF Poisson
plot(x_poisson, pmf_poisson,
     type = "h",
     lwd = 3,
     main = "PMF Distribusi Poisson (lambda = 3)",
     xlab = "Jumlah pelanggan (X)",
     ylab = "P(X = x)")

# Menghitung P(X >= 5)
# P(X >= 5) = 1 - P(X <= 4)
p_X_min_5 <- 1 - ppois(4, lambda = lambda)

p_X_min_5

# Parameter distribusi Hipergeometrik
N <- 100       # jumlah seluruh bola
K <- 20        # jumlah bola merah
n <- 10        # jumlah bola yang diambil

# Nilai X yang mungkin
x_hyper <- 0:n

# Menghitung PMF Hipergeometrik
pmf_hyper <- dhyper(
  x_hyper,
  m = K,
  n = N - K,
  k = n
)

# Menampilkan distribusi probabilitas
data.frame(
  Jumlah_Bola_Merah = x_hyper,
  Probabilitas = pmf_hyper
)

# Grafik PMF Hipergeometrik
plot(x_hyper, pmf_hyper,
     type = "h",
     lwd = 3,
     main = "PMF Distribusi Hipergeometrik",
     xlab = "Jumlah bola merah yang diambil (X)",
     ylab = "P(X = x)")

# Parameter distribusi Binomial
n_binom <- 15
p_binom <- 0.4
jumlah_simulasi <- 1000

# Agar hasil simulasi dapat direproduksi
set.seed(123)

# Melakukan simulasi 1.000 percobaan
hasil_binom <- rbinom(
  jumlah_simulasi,
  size = n_binom,
  prob = p_binom
)

# Nilai X yang mungkin
x_binom <- 0:n_binom

# Menghitung PMF Binomial teoritis
pmf_binom <- dbinom(
  x_binom,
  size = n_binom,
  prob = p_binom
)

# Menampilkan PMF teoritis
data.frame(
  Jumlah_Sukses = x_binom,
  PMF_Teoritis = pmf_binom
)

# Membuat histogram hasil simulasi
hist(hasil_binom,
     breaks = seq(-0.5, 15.5, by = 1),
     probability = TRUE,
     main = "Histogram Simulasi vs PMF Teoritis",
     xlab = "Jumlah keberhasilan (X)",
     ylab = "Probabilitas")

# Menambahkan titik PMF teoritis
points(x_binom, pmf_binom,
       pch = 19)

# Menambahkan garis PMF teoritis
lines(x_binom, pmf_binom,
      type = "h",
      lwd = 3)

# Rata-rata hasil simulasi
mean_simulasi <- mean(hasil_binom)

# Rata-rata teoritis
mean_teoritis <- n_binom * p_binom

mean_simulasi
mean_teoritis

