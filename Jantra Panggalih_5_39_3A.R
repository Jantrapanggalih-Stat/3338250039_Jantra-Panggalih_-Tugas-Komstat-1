# 1. Distribusi Eksponensial
mu <- 5
rate <- 1/mu
peluang <- pexp(5, rate = rate, lower.tail = FALSE)
peluang

# 2. Distribusi Kontinu
a <- 0
b <- 20
varians <- (b - a)^2 / 12
varians

# 3. Distribusi Eksponensial
mu <- 10
rate <- 1/mu
peluang <- pexp(5, rate = rate)
peluang

# 4. Distribusi Normal
mu <- 250
sigma <- 5
proporsi <- pnorm(240, mean = mu, sd = sigma)
proporsi