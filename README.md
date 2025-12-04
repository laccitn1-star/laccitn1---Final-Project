STA-215 Final Project Replication Package 

Project Description 

This replication package accompanies my STA-215 final project. The project analyzes a dataset containing information on players’ signing ages and their nationality groups. The primary goal of the analysis was to determine whether there is a statistically significant difference in mean signing age between players from the USA and players who are not from the USA.
To accomplish this, I conducted exploratory visualizations, descriptive statistics, assumption checks, and an independent-samples t-test.

Instructions for Accessing and Using the Package

To reproduce the analysis:

1. Open the R script

- File: laccitn1-final_project.R
- This script includes all code used for data cleaning, visualizations, assumptions testing, and inferential statistics.

2. Open the dataset
- File: player_signing_data.csv
- This file contains all variables used in the project.
  
Running the script from start to finish will fully recreate the statistical analysis.

Data Description

The data used for this project consists of player-level information including their age at signing and whether they are from the USA or not from the USA. These variables allow for group comparisons focused on whether nationality is associated with different signing ages.

The key variables are:
- signing_age

A quantitative variable representing each player's age (in years) at the time they signed.

- player_nationality
  
A qualitative variable with two categories:
- "USA"
- "not from USA"

These two variables form the basis for visual comparisons (boxplots), descriptive statistics, and the independent-samples t-test used in the final analysis.

Operationalization and Data Cleaning

Signing Age
- Recorded in years.
- Verified to ensure all values were positive and within a realistic age range.
- Checked for missing values; any missing entries were removed prior to analysis.
  
Player Nationality
- Originally recorded as multiple individual countries.
- Recoded into a binary categorical variable with two levels:
1. "USA" for players whose nationality was the United States
2. "not from USA" for all other players
- Recoding was performed to simplify the comparison into two meaningful groups for the t-test.
  
Data Cleaning Steps
- Converted the nationality column into a factor for proper statistical handling.
- Removed rows with missing or invalid data.
- Checked distributions of quantitative variables for outliers or inconsistencies.
- Ensured the dataset contained only the two variables necessary for the final analysis.
  
Summary of Statistical Procedures

The following analyses were conducted:
1. Boxplot of signing age by nationality group
2. Group means and descriptive statistics
3. Assumption checks
- Shapiro-Wilk normality tests
- Q-Q plots
- Levene’s test for equal variances
4. Independent-samples t-test comparing signing age between USA players and non-USA players

All procedures are fully reproducible using the provided R script and dataset.
