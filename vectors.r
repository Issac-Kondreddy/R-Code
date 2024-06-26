#a vector is a simply a list of items that are of the same type
# similar to arrays in other langugaes
fruits <- c("banana", "apple", "orange")
fruits
#like range funciton in python
numbers <- 1:10
numbers
#vector of decimal values
decimal_numbers <- 1.3:8.3
decimal_numbers
#length function
length(fruits)
length(numbers)
length(decimal_numbers)
#to sort values in vector
sort(fruits)
sort(numbers)
#to access values
fruits[1]
#to access a multiple of values
decimal_numbers[c(3, 8)]
#Negative indexing
fruits[-1]
#to replace values
fruits[1] <- "mango"
fruits
#to repeat values
repeat_each <- rep(fruits, each = 3)
repeat_each
repeat_indepent <- rep(fruits, times = c(5, 2, 1))
repeat_indepent

#generate sequence by step
nums <- seq(from = 0, to = 100, by = 25)
nums