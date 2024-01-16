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

# Building the graph of interest using ggplot2, from the planning stage
cleaned_emp_data |>
  ggplot(aes(x = municipalities, y = normalized_data)) +
  geom_bar(stat = "identity", fill = "skyblue") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  labs(x = "Municipalities", y = "Total % of people employed")
