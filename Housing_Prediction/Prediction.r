# Set CRAN mirror
options(repos = c(CRAN = "https://cran.rstudio.com/"))
# Install necessary packages
if (!require("tidyverse")) install.packages("tidyverse")
if (!require("caret")) install.packages("caret")
if (!require("rpart")) install.packages("rpart")
if (!require("readr")) install.packages("readr")
if (!require("ggplot2")) install.packages("ggplot2")
if (!require("randomForest")) install.packages("randomForest")

# Load necessary libraries
library(tidyverse)
library(caret)
library(rpart)
library(readr)
library(ggplot2)
library(randomForest)

# Load the data
train_data <- read_csv("/Users/issackondreddy/Desktop/Programming/R/Housing_Prediction/Housing.csv")
test_data <- read_csv("/Users/issackondreddy/Desktop/Programming/R/Housing_Prediction/Housing 2.csv")

# Check the data structure
str(train_data)
str(test_data)

# View the first few rows of the data
head(train_data)
head(test_data)

# Handle missing values correctly
train_data <- train_data %>%
  mutate(across(everything(), ~replace_na(., median(., na.rm = TRUE))))

test_data <- test_data %>%
  mutate(across(everything(), ~replace_na(., median(., na.rm = TRUE))))

# Encode categorical variables
train_data <- train_data %>%
  mutate_if(is.character, as.factor)

test_data <- test_data %>%
  mutate_if(is.character, as.factor)

# Summary statistics
summary(train_data)

# Data visualization
ggplot(train_data, aes(x = price)) +
  geom_histogram(binwidth = 50000, fill = "grey", color = "black") +
  theme_minimal() +
  labs(title = "Distribution of House Prices", x = "House Price", y = "Count")

# Save the plot
ggsave("HousePrice_Distribution.png")

# Split data into training and validation sets
set.seed(123)
train_index <- createDataPartition(train_data$price, p = 0.8, list = FALSE)
train_set <- train_data[train_index, ]
validation_set <- train_data[-train_index, ]

# Train a linear regression model
model <- train(price ~ ., data = train_set, method = "lm")
summary(model)

# Predict on validation set
predictions <- predict(model, validation_set)
rmse <- RMSE(predictions, validation_set$price)
print(paste("RMSE:", rmse))
r_squared <- R2(predictions, validation_set$price)
print(paste("R-squared:", r_squared))

# Train and evaluate Decision Tree model
tree_model <- train(price ~ ., data = train_set, method = "rpart")
tree_predictions <- predict(tree_model, validation_set)
tree_rmse <- RMSE(tree_predictions, validation_set$price)
print(paste("Decision Tree RMSE:", tree_rmse))

# Train and evaluate Random Forest model
rf_model <- train(price ~ ., data = train_set, method = "rf")
rf_predictions <- predict(rf_model, validation_set)
rf_rmse <- RMSE(rf_predictions, validation_set$price)
print(paste("Random Forest RMSE:", rf_rmse))

# Hyperparameter tuning for Random Forest
tuneGrid <- expand.grid(mtry = c(2, 3, 4))
tuned_rf_model <- train(price ~ ., data = train_set, method = "rf", tuneGrid = tuneGrid)
tuned_rf_predictions <- predict(tuned_rf_model, validation_set)
tuned_rf_rmse <- RMSE(tuned_rf_predictions, validation_set$price)
print(paste("Tuned Random Forest RMSE:", tuned_rf_rmse))
