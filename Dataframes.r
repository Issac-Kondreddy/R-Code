#Data Frames are data displayed in a format as a table.
#Data Frames can have different types of data inside it.
#While the first column can be character
#the second and third can be numeric or logical
#However, each column should have the same type of data

df <- data.frame(
    Training = c("Strength", "Stamina", "Other")
    , Age = c(25, 30, 35)
    , Height = c(175, 180, 185)
    , Pulse = c(100,150,120)
)
df
summary(df)

df[1]
df[1,3]
df <- rbind(df, c("Pulse", 60,70,80))
df

dim(df)
length(df)