################################################# 
# Bryan R. Balajadia - 11 November 2015 
# Problem 1: Multiples of 3 and 5 
################################################# 

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.


My Solution

# answer = 3*sum(1:333) + 5*sum(1:199) - 15*sum(1:66)

n <- 0
for (i in 1:999)
     if (i%%3==0 | i%%5==0){
       n <- n + i
     }
n
# [1] 233168  
