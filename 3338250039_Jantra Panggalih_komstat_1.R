# Vector numeric
v_num <- c(6.3, 7.7, 13.4)
v_num

# Vector integer
v_int <- c(2L, 4L, 8L)
v_int

# Vector logical
v_log <- c(TRUE, FALSE, TRUE)
v_log

# Vector character
v_char <- c("Jantra", "Pang", "Galih")
v_char

# Matrix 3x3
m <- matrix(1:15, nrow = 3, ncol = 5)
m

# Array 3 dimensi
a <- array(1:24, dim = c(2, 4, 3))
a

# Membuat data frame
df = data.frame(
  Nama = c("Jantra", "Pang", "Galih"),
  Nilai = c(80, 75, 90),
  Lulus = c(TRUE, FALSE, TRUE)
)

df

# Membuat list
L <- list(
  angka = c(1, 2, 3),
  mat = matrix(1:4, nrow = 2),
  df = data.frame(
    Nama = c("Jantra", "Pang", "Galih"),
    Nilai = c(80, 75, 90),
    Lulus = c(TRUE, FALSE, TRUE))
)

L
L$df  