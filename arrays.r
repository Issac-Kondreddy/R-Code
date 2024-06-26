#arrays in r bit different Compared to matrices, arrays can
# have more than two dimensions.
# In R, arrays are created using the array() function.
# The array() function takes two main arguments:
# 1. data: the data to be stored in the array
# 2. dim: a vecåtor specifying the dimensions of the array
# Here is an example of creating a 2x2x2 array:
arr <- array(1:8, dim = c(2,2,2))
arr
# , , 1
#      [,1] [,2]
# [1,]    1    3
# [2,]    2    4
# , , 2
#      [,1] [,2]
# [1,]    5    7
# [2,]    6    8
# You can also use the rep() function to create an array with repeated values:
arr <- array(rep(1, 8), dim = c(2,2,2))
arr
# , , 1
#      [,1] [,2]
# [1,]    1    1
# [2,]    1    1
# , , 2
#      [,1] [,2]
# [1,]    1    1
# [2,]    1    1
# You can also use the outer() function to create an array with the outer product of two vectors
arr <- outer(1:2, 1:2, 1:2)
arr
# , , 1
#      [,1] [,2]
# [1,]    1    1
# [2,]    2    2
# , , 2
#      [,1] [,2]
# [1,]    2    2
# [2,]    4    4
# You can also use the aperm() function to permute the dimensions of an array
arr <- array(1:8, dim = c(2, 2, 2))
arr_perm <- aperm(arr, c(3, 1, 2))
arr_perm
# , , 1
#      [,1] [,2]
# [1,]    1    2
# [2,]    3    4
# , , 2
#      [,1] [,2]
# [1,]    5    6
# [2,]    7    8
# You can also use the apply() function to 
#apply a function to each element of an array
arr <- array(1:8, dim = c(2,2,2))
arr_sum <- apply(arr, 1, sum)
arr_sum
# [1] 12 12
# You can also use the apply() function to apply a function to each row or column of an
# array
arr <- array(1:8, dim = c(2,2,2))
arr_sum_row <- apply(arr, 1, sum)
arr_sum_row
# [1] 12 12
arr_sum_col <- apply(arr, 2, sum)
arr_sum_col
# [1] 8 8
# You can also use the apply() function to apply a function to each slice of an array
arr <- array(1:8, dim = c(2,2,2))
arr_sum_slice <- apply(arr, 3, sum)
arr_sum_slice
# [1] 8 8
# You can also use the sweep() function to apply a function to each element of an array
arr <- array(1:8, dim = c(2,2,2))
arr_sum <- sweep(arr, 1, 1:2, "+")
arr_sum
# , , 1
#      [,1] [,2]
# [1,]    2    4
# [2,]    4    6
# , , 2
#      [,1] [,2]
# [1,]    6    8
# [2,]    8   10
# You can also use the outer() function to apply a function to each element of two arrays
arr1 <- array(1:4, dim = c(2,2))
arr2 <- array(5:8, dim = c(2,2))
arr_outer <- outer(arr1, arr2, "*")
arr_outer
# , , 1, 1
#      [,1] [,2]
# [1,]    5    6
# [2,]    7    8
# , , 2, 1
#      [,1] [,2]
# [1,]   10   12
# [2,]   14   16
# , , 1, 2
#      [,1] [,2]
# [1,]   15   18
# [2,]   21   24
# , , 2, 2
#      [,1] [,2]
# [1,]   20   24
# [2,]   28   32
# You can also use the colSums() and rowSums() functions to calculate the sum
# of each column or row of an array
arr <- array(1:8, dim = c(2,2,2))
arr_col_sum <- colSums(arr[, , 1])
arr_col_sum
# [1] 3 7
arr_row_sum <- rowSums(arr[, , 1])
arr_row_sum
# [1] 4 12
# You can also use the margin.table() function to calculate the sum of each
# margin of an array
arr <- array(1:8, dim = c(2,2,2))
arr_margin_sum <- margin.table(arr, 1)
arr_margin_sum
# [1] 8 8
arr_margin_sum <- margin.table(arr, 2)
arr_margin_sum
# [1] 8 8
arr_margin_sum <- margin.table(arr, 3)
arr_margin_sum
# [1] 4 4
# You can also use the apply() function to apply a function to each element of
# an array
arr <- array(1:8, dim = c(2,2,2))
arr_apply_sum <- apply(arr, 1, sum)
arr_apply_sum
# [1] 4 12
arr_apply_sum <- apply(arr, 2, sum)
arr_apply_sum
# [1] 8 8
arr_apply_sum <- apply(arr, 3, sum)
arr_apply_sum
# [1] 4 4
# You can also use the aperm() function to permute the dimensions of an array

