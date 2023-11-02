# Load necessary libraries
library(dplyr)
library(tidyr)

# Set the path to the raw data
data_path <- "../data/raw_data.csv"

# Load the raw data
raw_data <- read.csv(data_path)

# Function to clean data
clean_data <- function(df) {
  # Add your data cleaning steps here
  # For example, you might want to remove or impute missing values,
  # or recode categorical variables.
  # This is just a placeholder and will need to be replaced with your actual code.
  df_clean <- df %>% 
    mutate_all(funs(ifelse(is.na(.), median(., na.rm = TRUE), .))) %>% 
    mutate_all(funs(as.factor(.)))
  
  return(df_clean)
}

# Clean the raw data
cleaned_data <- clean_data(raw_data)

# Save the cleaned data to a .csv file for use in the next stage of the pipeline
write.csv(cleaned_data, "../data/cleaned_data.csv", row.names = FALSE)

# Print a message to let the user know that the data preparation is complete
print("Data preparation complete. Cleaned data saved to '../data/cleaned_data.csv'.")