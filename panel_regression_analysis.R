# Load the necessary library
library(fixest)

# Assuming the dataset 'realised_regression_data' is already loaded or available in the environment.

# Define and run the panel regression model with fixed effects and clustering
realised_regression <- feols(Transformed_Value_Added ~ L1_team 
                             + IMR + log(L1_Fund_Age) + L1_Expense_Ratio 
                             + L1_Turnover_Ratio + L1_Raw_Return_Volatility + L1_Net_Fund_Flow 
                             + L1_Cash_Holdings + L1_Equity_Holdings + L1_Tenure + L1_Female
                             + log(L1_Family_Size) | Fund_Family + TIMExOBJECTIVE,
                             data = realised_regression_data, cluster = c("FundId", "Date"))

# Output the results
summary(realised_regression)