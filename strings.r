"Hello Welcome to Language of R"
"This line is written in Single Quotes"
str1 <- "<- is used to assign value to variables along with ="
str1

str2 <- "We can use multiple line
of string to be assigned to a one string 
varibale and at end of each line R will 
add a new line character"
#use cat() function to get line break as same as in code
str2 
cat(str2)

# to get the length of string we use nchar
nchar(str2)


# to check if a character or a sequence is present ina string
grepl("assigned",str2)
grepl("assigmed",str2)

#to combine two strings
paste(str1, str2)