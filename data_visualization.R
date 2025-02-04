install.packages("plotly")     # Etkile??imli grafikler i??in
install.packages("readr")

library(tidyverse)
library(ggplot2)
library(plotly)
library(readr)


url <- "https://covid.ourworldindata.org/data/owid-covid-data.csv"
covid_data <- read_csv(url)

# Tarih s??tununu tarih format??na ??evirme
covid_data$date <- as.Date(covid_data$date)

# T??rkiye verilerini filtreleme
turkey_data <- covid_data %>% filter(location == "Turkey")

# Eksik verileri temizleme
turkey_data <- turkey_data %>% drop_na(new_cases, new_deaths)


library(plotly)

# ggplot2 grafi??ini plotly ile etkile??imli hale getirme
p <- ggplot(turkey_data, aes(x = date)) +
  geom_line(aes(y = new_cases, color = "New Cases")) +
  geom_line(aes(y = new_deaths, color = "New Deaths")) +
  labs(title = "Daily New COVID-19 Cases and Deaths in Turkey",
       x = "Date",
       y = "Count",
       color = "Legend") +
  theme_minimal()

# Grafi??i etkile??imli hale getirme
ggplotly(p)




