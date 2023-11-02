# Credit Scoring Binning Models Comparison

This R application is designed to compare various binning models for credit scoring. The application is organized into individual components connected to a pipeline comprising data preparation, binning, logistic regression estimation, and model evaluation.

## Project Structure

The project is structured as follows:

- `data/raw_data.csv`: This file contains the raw data used for credit scoring.
- `scripts/data_preparation.R`: This script prepares the raw data for the subsequent stages of the pipeline.
- `scripts/binning.R`: This script applies various binning techniques to the prepared data.
- `scripts/logistic_regression.R`: This script applies logistic regression to the binned data.
- `scripts/model_evaluation.R`: This script evaluates the performance of the logistic regression model.
- `pipeline.R`: This is the main script that runs the entire pipeline.
- `.Rproj`: This is the R project file.
- `README.md`: This is the documentation for the project.

## How to Run

To run the application, open `pipeline.R` in RStudio and run the script. This will execute the entire pipeline, from data preparation to model evaluation.

## File Descriptions

- `data_preparation.R`: Imports the raw data, cleans it, and prepares it for the next stages of the pipeline.
- `binning.R`: Applies various binning techniques to the prepared data.
- `logistic_regression.R`: Applies logistic regression to the binned data.
- `model_evaluation.R`: Evaluates the performance of the logistic regression model using various metrics.

## Requirements

This application requires R and RStudio to run. The required R packages are listed at the top of each script.

## Notes

This application is designed for educational purposes and should not be used for real-world credit scoring without further validation and testing.