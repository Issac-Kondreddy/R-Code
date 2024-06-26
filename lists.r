#A list is a collection of data which is ordered and changeable.
thislist <- list("apple", "banana", "Mango", "Grapes", "Cherry")
thislist
thislist[1]
thislist[2] <- "Pear"
length(thislist)
"apple" %in% thislist

append(thislist, "pineapple")
append(thislist, "Watermelon", after = 5)

#remove item
thislist <- thislist[-2]
thislist

(thislist)[2:4]