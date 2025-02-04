# Install necessary packages
install.packages("plotly")     # For interactive plots
install.packages("readr")      # For reading CSV files

# Load required libraries
library(tidyverse)             # For data manipulation and visualization
library(ggplot2)               # For creating static plots
library(plotly)                # For creating interactive plots
library(readr)                 # For reading CSV data

# URL of the COVID-19 dataset
url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"

# Read the COVID-19 data from the URL
covid_data <- read_csv(url)

# Convert the date column to Date format
covid_data$date <- as.Date(covid_data$date)

# Filter data for Turkey
turkey_data <- covid_data %>% filter(location == "Turkey")

# Remove rows with missing values in new_cases and new_deaths columns
turkey_data <- turkey_data %>% drop_na(new_cases, new_deaths)

# Load the plotly library for interactive visualizations
library(plotly)

# Create a ggplot2 plot
p <- ggplot(turkey_data, aes(x = date)) +
  geom_line(aes(y = new_cases, color = "New Cases")) +
  geom_line(aes(y = new_deaths, color = "New Deaths")) +
  labs(title = "Daily New COVID-19 Cases and Deaths in Turkey",
       x = "Date",
       y = "Count",
       color = "Legend") +
  theme_minimal()

# Convert the ggplot2 plot to an interactive plotly plot
ggplotly(p)