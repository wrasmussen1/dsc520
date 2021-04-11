# Wyatt Rasmussen
# DSC 520
# Week 4 exercise 2
# 04/11/2021

# Set the working directory to the root of your DSC 520 directory
setwd("~/Desktop/MastersOfDataScience/DSC520/")

# Load the `data/acs-14-1yr-s021.csv` to
am_comm_df <- read.csv("week2/dsc520/data/acs-14-1yr-s0201.csv")

# viewing the df
am_comm_df

# using the apply function to figure out the max value in each column
# question 2a
apply(am_comm_df, 2, max)

# using the aggregate fucntion on BachDegree to figure out which is the highest
# question 2b
aggregate(Geography ~ BachDegree, am_comm_df, min)

install.packages("plyr")
library(plyr); library(dplyr)

# using the plyr package to perform the lapply function to the data
# Question 2c
lapply(am_comm_df, median, hsdegree)

# Checking the distributions of HS Degree and Bach Degree
# Question 2d
ggplot(am_comm_df, aes(HSDegree)) + geom_density()
ggplot(am_comm_df, aes(BachDegree)) + geom_density()

# Checking for outliers using a Histogram
# Question 2e
hist(am_comm_df$HSDegree, xlab = "Percent with HS Degree", breaks = sqrt(nrow(am_comm_df)))

# Creating 2 new variables for the dataframe finding the distance from the mean for HSDegree and BachDegree
# Question 2f
am_comm_df$HSDegreeFromMean <- am_comm_df$HSDegree - mean(am_comm_df$HSDegree)
am_comm_df$BachDegreeFromMean <- am_comm_df$BachDegree - mean(am_comm_df$BachDegree)
am_comm_df
