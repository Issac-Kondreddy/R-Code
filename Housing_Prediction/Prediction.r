# Set CRAN mirror
# options(repos = c(CRAN = "https://cran.rstudio.com/"))

# # Install necessary packages
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("caret")) install.packages("caret")
if (!require("rpart")) install.packages("rpart")
if (!require("readr")) install.packages("readr")
if (!require("ggplot2")) install.packages("ggplot2")
# Load necessary libraries
library(tidyverse)
library(caret)
library(rpart)
library(readr)
library(ggplot2)

#load the data 
train_data <- read_csv("/Users/issackondreddy/Desktop/Programming/R/Housing_Prediction/Housing.csv")
test_data <- read_csv("/Users/issackondreddy/Desktop/Programming/R/Housing_Prediction/Housing 2.csv")

#view the data
tail(train_data)

#to handle missing values
train_data <- train_data %>% mutate(across(everything(), ~replace_na(., median(.,na.rm = TRUE))))
test_data <- test_data %>% mutate(across(everything(), ~replace_na(., median(., na.rm=TRUE))))


