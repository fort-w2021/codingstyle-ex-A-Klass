# function to compute interval of normally distributed variable
confidence_interval <- function(x) {
  mean <- mean(x)
  sd <- sd(x)
  n <- length(x)
  half_width <- 1.96 * sd / sqrt(n)

  c(mean - half_width, mean + half_width)
}

x_norm <- rnorm(100)
y_norm <- rnorm(100)
z_norm <- rnorm(100)
z_norm_square <- z_norm^2

confidence_interval(x_norm)
confidence_interval(y_norm)
confidence_interval(z_norm)
confidence_interval(z_norm_square)
