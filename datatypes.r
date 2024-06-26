#In R, variables do not need to be declared with any particular type, 
#and can even change type after they have been set
my_var <- 30 # my_var is type of numeric
my_var <- "Sally" # my_var is now of type character (aka string)# numeric
x <- 10.5
class(x)

# integer
x <- 1000L
class(x)

# complex
x <- 9i + 3
class(x)

# character/string
x <- "R is exciting"
class(x)

# logical/boolean
x <- TRUE
class(x)