#################################################  
# Bryan R. Balajadia - 09 November 2015  
# Problem 17: Number Letter Counts 
#################################################  

If the numbers 1 to 5 are written out in words: 
one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? 

NOTE: Do not count spaces or hyphens. 
For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. 
The use of "and" when writing out numbers is in compliance with British usage.


My Solution

nsingle <- nchar(c("one", "two", "three", "four", "five", "six", "seven", "eight", "nine")) # 1-9
nteen <- nchar(c("ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen")) # 10-19
nty <- nchar(c("twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety")) # 20,30,40,...,90 'ty

nbelow100 <- sum(9 * nsingle) + sum(nteen) + sum(10 * nty) # sum 1-99
nabove100 <- 100 * sum(nsingle) + 9 * nbelow100 + 9 * nchar("hundred") + 9 * 99 * nchar("hundredand") # sum 100-999

result <- nbelow100 + nabove100 + nchar("onethousand")

result
# [1] 21124
