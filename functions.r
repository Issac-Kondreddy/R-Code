myfnc <- function(){
    paste("Hello World")
}
myfnc()


myfnc <- function(fname){
    paste("Hello",fname)
}

myfnc("issac")


#default
my_function <- function(country = "Norway") {
  paste("I am from", country)
}

my_function("Sweden")
my_function("India")
my_function() # will get the default value, which is Norway
my_function("USA")


#return 

my_func <- function(x){
    return (5*x)
}

print(my_func(45))


#nested functions

nested_fun <- function(x, y){
    a <- x+y
    return(a)
}

print(nested_fun(nested_fun(2,2), nested_fun(3,3)))

#recursion
fibo <- function(x){
    if(x==0){
        return(0)
    }else if(x==1){
        return(1)
    }else{
        return(fibo(x-1)+fibo(x-2))
    }
}

fibo(5)
fibo(6)

#global variables
txt <- "awesome"
my_function <- function() {
  paste("R is", txt)
}

my_function()

txt <- "global variable"
my_function <- function() {
  txt = "fantastic"
  paste("R is", txt)
}

my_function()

txt # print txt

my_function <- function() {
txt <<- "fantastic"
  paste("R is", txt)
}

my_function()

print(txt)