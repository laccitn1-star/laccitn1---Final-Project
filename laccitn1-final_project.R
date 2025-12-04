## Project: STA 215, Fal1 2025, Final Project
# Located: Laccitiello TCNJ Google Drive
# File Name: template
# Date: 2025_12_3
# Who: Nick Laccitiello

## Load packages
# NOTE: Run base.r if these commands return an error

# set working directory
setwd("/courses/STA145/laccitn1")

# load data 
library(readr)

raw_data <- read.csv("data.csv")

library(dplyr)
data <- raw_data %>%
  filter(complete.cases(.))

# descriptive statistics
table(data$signing_age)
mean(data$signing_age)
sd(data$signing_age)
table(data$player_national)

# create a figure
library(ggplot2)
ggplot(data, aes(x = as.factor(player_national), y = signing_age)) +
  geom_boxplot(fill = "skyblue") +
  labs(title = "Signing Age by Player National",
               x = "Player National",
               y = "Signing Age") +
  theme_bw() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))
  
  
# statistical test
t.test(signing_age ~ player_national, 
       data = data, 
       var.equal = TRUE)

# assess assumptions (if applicable in r)
# USA group
shapiro.test(data$signing_age[data$player_national == 1])

# Not USA group
shapiro.test(data$signing_age[data$player_national == 0])
