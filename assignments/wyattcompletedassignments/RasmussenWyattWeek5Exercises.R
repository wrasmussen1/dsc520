# Wyatt Rasmussen
# DSC 520
# Week 5 Exercises

getwd()

# Creating a dataframe using read.csv
am_comm_df <- read.csv("week2/dsc520/data/acs-14-1yr-s0201.csv")

# dplyr package - use GroupBy, Summarize, Mutate, Filter, Select, and Arrange
install.packages("dplyr")
library(dplyr)

# Use GroupBy
group_by(am_comm_df, min(BachDegree))

# Use Summarize from dplyr
summarise(am_comm_df, mean(HSDegree), median(HSDegree), min(HSDegree), max(HSDegree),
          IQR(HSDegree), sd(HSDegree))

# Use Mutate from dplyr
mutated_am_comm_df <- mutate(am_comm_df, percent_rank(BachDegree), percent_rank(HSDegree))
mutated_am_comm_df

# Using filter from dplyr with percentile rank of bachelors degree above 50% and hs degree 1 sd below mean
filter(mutated_am_comm_df, percent_rank(BachDegree) > 0.5, HSDegree < (87.63235-5.117941))

# Using the select from dplyr to choose three columns and simplify data set
select(am_comm_df, Geography, HSDegree, BachDegree)

# Using the arrange function to arrange my data based on a variable (HSDegree) filtered with the highest first
arrange(am_comm_df, desc(HSDegree))

# Installing and loading the purrr library 
install.packages("purrr")
library(purrr)

# Using the purrr package – perform 2 functions on your dataset.  
# You could use zip_n, keep, discard, compact, etc.
new_df <- keep(am_comm_df$HSDegree, ~ .x > 87.63235)
new_df

discard <- discard(am_comm_df$BachDegreeFromMean, ~ .x < 0)
discard

# Use the cbind and rbind function on your dataset
rows <- c(1:nrow(am_comm_df))
cbind(am_comm_df, rows)

# Split a string, then concatenate the results back together
split_string <- strsplit("Kansas City, Kansas", split = ",")
split_string
concatenate_string <- paste("Kansas City", "Kansas", sep = ", ")
concatenate_string
