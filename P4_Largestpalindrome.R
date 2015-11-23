#################################################  
# Bryan R. Balajadia - 16 November 2015  
# Problem 4: Largest Palindrome Product
#################################################  

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.


My Solution

# Create a function to check if a number is a palindrome
is.palindrome <- function(x) {
  x <- as.character(x)
  LR <- unlist(strsplit(x, split = "")) # Left-right reading
  RL <- rev(LR) # reverse: Right-left reading
  palindrome <- all(LR == RL)
  return(palindrome)
}

# Matrix multiplication: the product of two 3-git numbers (100:999)
mat <- matrix(100:999, nrow = 1)
mat <- t(mat) %*% mat # X'X

# Select unique products for palindromic test
Uniqueprod <- unique(sort(as.vector(mat), decreasing = TRUE))

# Find the largest palindrome
result <- 0
i <- 1
n <- length(Uniqueprod)
while (i <= n) {
  if (is.palindrome(Uniqueprod[i])) {
    result <- Uniqueprod[i]
    break
  }
  i <- i + 1
}

result
# [1] 906609
