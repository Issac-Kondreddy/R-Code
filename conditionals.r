a <- 34
b <- 45
if(b>a){
    print("b is greater than a")
}else{
    print("a is greater than b")
}

a <- 20
b<- 20
if(a>b){
    print("a is greater than b")
}else if(a==b){
    print("A is equal to b")
}else{
    print("b is greater than a")
}

y <-  45
if (y>10){
    print("y is greater than 10")
    if(y>20){
        print("y is greater than 20")
    }
    if(y>30 && y<40){
        print("y is between 30 and 40")
    }
    else{
        print("y is greater than 40")
    }
}else{
    print("Y is less than 10")
}