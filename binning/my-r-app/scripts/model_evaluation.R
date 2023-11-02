# Load necessary libraries
library(caret)
library(pROC)

# Function to evaluate model
evaluate_model <- function(model, test_data) {
  # Predict test data
  predictions <- predict(model, newdata = test_data)

  # Calculate confusion matrix
  cm <- confusionMatrix(predictions, test_data$default)

  # Calculate accuracy
  accuracy <- cm$overall['Accuracy']

  # Calculate precision, recall, and F1 score
  precision <- posPredValue(predictions, test_data$default, positive = "Yes")
  recall <- sensitivity(predictions, test_data$default, positive = "Yes")
  f1_score <- (2 * precision * recall) / (precision + recall)

  # Calculate AUC-ROC
  roc_obj <- roc(test_data$default, predictions)
  auc_roc <- auc(roc_obj)

  # Return metrics
  return(list(accuracy = accuracy, precision = precision, recall = recall, f1_score = f1_score, auc_roc = auc_roc))
}

# Load model and test data
load("model.RData")
test_data <- read.csv("test_data.csv")

# Evaluate model
metrics <- evaluate_model(model, test_data)

# Print metrics
print(metrics)
