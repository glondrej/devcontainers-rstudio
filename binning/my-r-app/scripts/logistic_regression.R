# Load necessary libraries
library(glm)

# Function to perform logistic regression
perform_logistic_regression <- function(binned_data) {
  # Specify the formula for the logistic regression model
  formula <- as.formula("credit_score ~ .")

  # Fit the logistic regression model
  model <- glm(formula, data = binned_data, family = binomial())

  # Return the model
  return(model)
}

# Load the binned data
binned_data <- readRDS("path_to_binned_data")

# Perform logistic regression
model <- perform_logistic_regression(binned_data)

# Save the model
saveRDS(model, "path_to_save_model")