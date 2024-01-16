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

# Make the names easier to type by adjusting the name of the variable
cleaned_emp_data <-
  clean_names(raw_emp_data)

# Renaming the variables of interest to English
cleaned_emp_data <- cleaned_emp_data |>
  select(
    x1,
    x2020_total_employment
  )
  
cleaned_emp_data <-
  cleaned_emp_data |>
  rename(
    municipalities = x1,
    total_employment = x2020_total_employment
  )
