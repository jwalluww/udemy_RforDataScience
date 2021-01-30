# Vectorized Operations
x <- rnorm(5)
x

# R-specific programming loop
for(i in x){
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

# Conventional Programming Loop
for(j in 1:5){
  print(x[j])
}

#---------------------------------- Part 2
N <- 1000000000
a <- rnorm(N)
b <- rnorm(N)

# Vectorized Approach
c <- a * b

# De-vectorized approach
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}

#---------------------------------- Functions review
# Creating Functions
rnorm()
c()
seq()
rep()

print()

is.numeric()
is.integer()
is.double()
is.character()

typeof()

sqrt()
paste()

# Request information for function
?rnorm() # when you see an equal sign for an input, it's defaulted to that value
rnorm(5) # generates x variables normally distributed
rnorm(n=5) # same as above
a <- rnorm(n=5) # putting this in a variable now, look at environment, upper right to see output
