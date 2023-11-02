# Load necessary libraries
library(readr)
library(dplyr)

# Set working directory
setwd("my-r-app")

# Source the scripts
source("scripts/data_preparation.R")
source("scripts/binning.R")
source("scripts/logistic_regression.R")
source("scripts/model_evaluation.R")

# Load the raw data
raw_data <- read_csv("data/raw_data.csv")

# Prepare the data
prepared_data <- prepare_data(raw_data)

# Apply binning
binned_data <- apply_binning(prepared_data)

# Estimate logistic regression
logistic_model <- estimate_logistic_regression(binned_data)

# Evaluate the model
model_evaluation <- evaluate_model(logistic_model, binned_data)

# Print the model evaluation
print(model_evaluation)