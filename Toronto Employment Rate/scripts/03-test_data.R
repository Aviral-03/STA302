#### Preamble ####
# Purpose: Read in data from the 2020 Toronto Municipalities
# employment rates and make a graph.
# Author: Aviral Bhardwaj
# Email: aviral.bhardwaj@mail.utoronto.ca



#| echo: false
#| warning: false
#### Workspace setup ####
library(tidyverse)
library(janitor)

# Assuming your data is stored in a dataframe named 'table4_data'

# Extract the 'total_employment' and 'municipalities' columns
cleaned_emp_data <- cleaned_emp_data |>
  mutate(normalized_data = (total_employment / total_employment[which(municipalities == "City Total")]) * 100) |>
  filter(municipalities != "City Total")

write_csv(
  x = cleaned_emp_data,
  file = "cleaned_emp_data.csv"
)
