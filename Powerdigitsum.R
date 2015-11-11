#################################################  
# Bryan R. Balajadia - 11 November 2015  
# Problem 16: Power digit sum
################################################# 

215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

What is the sum of the digits of the number 21000?


My solution

I decided to use gmp() package to perform arithmetic calculation without limitations in R.

library(gmp)
num <- pow.bigz(2, 1000)
digits <- strsplit(as.character(num), split = "")
result <- sum(as.numeric(unlist(digits)))
result
# [1] 1366
