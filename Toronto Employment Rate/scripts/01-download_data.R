
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


## Acquiring the Data

# Download and Read the data 
#### Read in the data ####
raw_emp_data <-
  read_csv(
    file = 
      "Emp2020.csv",
    show_col_types = FALSE,
  )
