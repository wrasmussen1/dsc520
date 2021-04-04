getwd()

dir()

#create a df for the .csv file
am_commnunity <- read.csv("week2/acs-14-1yr-s0201.csv")

#print lines for exercise
str(am_commnunity)
nrow(am_commnunity)
ncol(am_commnunity)

#import ggplot2
library(ggplot2)
install.packages("qqplotr")
library(qqplotr)

#histogram creation
ggplot(am_commnunity, aes(x=HSDegree)) + geom_histogram(bins = 50) + 
  ggtitle("Number of People with HS Degree") + 
  labs(y= "Number of Counties", x= "Percentage with HS Degree")

#probability plot creation
ggplot(data = am_commnunity, mapping = aes(sample = HSDegree), scale(2000)) + 
  stat_qq_point(size = 2,color = "red") + 
  stat_qq_line(color="green") + xlab("x-axis") + ylab("y-axis")

install.packages("pastecs")
library(pastecs)

stat.desc(am_commnunity)
