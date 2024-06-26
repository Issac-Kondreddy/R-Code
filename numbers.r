x <- 10.5
y <- 55

# Print values of x and y
paste(x, class(x))
paste(y, class(y))

a <- 1000L
b <- 5000L

paste(a, class(a))
paste(b, class(b))

m <-  10i + 50
n <- 5i + 44

paste(m,class(m))
paste(n, class(n))


#type conversion
c <- as.integer(x)
paste(c, class(c))