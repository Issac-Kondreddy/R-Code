# House Price Prediction

This project predicts house prices using various machine learning models in R. The dataset used is from a Kaggle competition on house prices.

## Data Preprocessing
- Missing values were handled by replacing them with the median of each column.
- Categorical variables were encoded as factors.

## Models Trained
1. **Linear Regression**
   - RMSE: 1138053.29
   - R-squared: 0.683254

2. **Decision Tree**
   - RMSE: 1501317.38

3. **Random Forest**
   - RMSE: 1174395.53

4. **Tuned Random Forest**
   - RMSE: 1154988.96

## How to Run the Code
1. **Clone the repository:**
    ```bash
    git clone https://github.com/Issac-Kondreddy/R-Code.git
    cd R-Code/Housing_Prediction
    ```

2. **Install necessary packages:**
    ```r
    install.packages(c("tidyverse", "caret", "rpart", "readr", "ggplot2", "randomForest"))
    ```

3. **Run the script:**
    ```bash
    Rscript Prediction.r
    ```

## Results
- The tuned random forest model provided the best performance with the lowest RMSE.

## Files
- `Prediction.r`: The main script for data preprocessing, model training, and evaluation.
- `HousePrice_Distribution.png`: A plot showing the distribution of house prices.

## Future Work
- Explore other feature engineering techniques.
- Try different hyperparameters for further tuning.
- Deploy the model using Shiny for an interactive web application.

## Contact
For any questions or issues, please contact Issac Kondreddy at [issackondreddyl@gmail.com].

