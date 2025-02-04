# COVID-19 Data Visualization Project

This project focuses on visualizing COVID-19 data for Turkey using R. It provides interactive plots to analyze daily new cases and deaths.

## Project Overview

The goal of this project is to:
- Fetch COVID-19 data from a public dataset.
- Filter and preprocess the data for Turkey.
- Create interactive visualizations using `ggplot2` and `plotly`.

## Technologies Used

- **R**: The primary programming language used for data analysis and visualization.
- **ggplot2**: For creating static visualizations.
- **plotly**: For converting static plots into interactive ones.
- **readr**: For reading CSV data from a URL.
- **tidyverse**: For data manipulation and preprocessing.

## Dataset

The dataset used in this project is sourced from [Our World in Data](https://covid.ourworldindata.org/). It contains global COVID-19 statistics, including daily new cases, deaths, and more.

Dataset URL: [owid-covid-data.csv](https://covid.ourworldindata.org/data/owid-covid-data.csv)

## Output 
The output is an interactive plot showing the daily new COVID-19 cases and deaths in Turkey. Users can hover over the plot to see detailed values for each date.

![](images/plot.png)
