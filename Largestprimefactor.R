#################################################  
# Bryan R. Balajadia - 10 November 2015  
# Problem 3: Largest Prime Factor
#################################################  

The prime factors of 13195 are 5, 7, 13 and 29.
What is the largest prime factor of the number 600851475143 ?


My Solution

# function to test if a number is prime
is.prime <- function(x) x == 2L || all(x %% 2L:floor(sqrt(x)) != 0)

# prime numbers (2, sqrt(600851475143))
n <- floor(sqrt(600851475143))
x <- logical(n)
for (i in 1:n) {
  x[i] <- is.prime(i)
}
pn <- (1:n)[x] # prime numbers

pn.fac <- pn[(600851475143 %% pn) == 0] # prime factor of 600851475143
pn.max <- max(pn.fac) # largest prime factor

pn.max
#[1] 6857
