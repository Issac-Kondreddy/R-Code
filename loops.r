#while loop
i <- 1
while(i<=5){
    print(i)
    i <- i + 1
}

#with break 
i <- 1
while(i<=5){
    if(i==4){
        break
    }
    print(i)
    i <- i + 1
}

#with next (like continue in other languages)
i <- 0
while (i < 6) {
  i <- i + 1
  if (i == 3) {
    next
  }
  print(i)
}

#with if clause

i <- 0
while (i <= 6){
    if(i>=0 && i<=3){
        print("Cheezz")
    }else if(i==4 || i==5){
        print("YUffff")
    }
    else{
        print("Yayyyy!!")
    }
    i <- i + 1
}


#for loop

for(x in 1:10){
    print(x)
}

fruits = list("Issac","Pranay","bharadwaj","Sulthan","Suhas")
for (x in fruits){
    print(x)
}

#nested loops
colors <-  list("Red","Orange","Green","Black")
fruits <- list("Apple","Banana","Grapes","Watermelon")
for(x in colors){
    for (y in fruits){
        print(paste(x,y))
    }
}