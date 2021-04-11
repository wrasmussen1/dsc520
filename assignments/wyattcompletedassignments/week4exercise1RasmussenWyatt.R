# Wyatt Rasmussen
# DSC 520
# Week 4 exercise 1
# 04/11/2021

install.packages("dplyr")

## Set the working directory to the root of your DSC 520 directory
setwd("~/Desktop/MastersOfDataScience/DSC520/")

## Load the `data/scores.csv` to
scores_df <- read.csv("week2/dsc520/data/scores.csv")

scores_df
summarise(scores_df)
str(scores_df)

scores_list <- split(scores_df, scores_df$Section)

reg_scores <- subset(scores_df, scores_df$Section=='Regular')
sports_scores <- subset(scores_df, scores_df$Section=='Sports')

reg_scores
sports_scores


library(ggplot2)

ggplot(reg_scores)
