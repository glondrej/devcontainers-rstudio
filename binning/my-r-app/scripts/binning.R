# Load necessary libraries
library(dplyr)
library(smbinning)

# Load the prepared data
load("path/to/your/prepared/data.RData")

# Define a binning scheme
binning_scheme <- smbinning(df$var, df$target)

# Apply the binning scheme to the data
df_binned <- df %>%
  mutate(var_binned = smbinning.binning(x = df$var, breaks = binning_scheme$breaks, 
                                         method = binning_scheme$method, 
                                         reverse = binning_scheme$reverse))

# Save the binned data
save(df_binned, file = "path/to/your/binned/data.RData")