#A matrix is a two dimensional data set with columns and rows.

thismatrix <- matrix(c(1, 2, 3, 4, 5, 6,7, 8, 9), nrow=3, ncol = 3)
thismatrix

thismatrix[2, 2] # item
thismatrix[2, ] #whole row
thismatrix[, 2] #whole columns
thismatrix[c(1, 2), c(2, 3)]
#to add more rows and columns

newmatrix <- cbind(thismatrix, c(10, 11, 12))
newmatrix
newmatrix <- rbind(thismatrix, c(10, 11, 12))
newmatrix

5 %in% thismatrix
dim(thismatrix)
length(thismatrix)

#loop through matrix
for(rows in 1:nrow(thismatrix)){ # nolint
    for(cols in 1:ncol(thismatrix)){ # nolint: seq_linter.
        print(thismatrix[rows, cols])
    }
}