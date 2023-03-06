require(pryr)
require(ISLR)
require(boot)
library(data.table)
library(plyr)

#  Import dataset. 
Student <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
Student

# Run the command "mean" split by the category Sex/Gender  86.94 = F, 80.23 = M
# Uses library plyr to do this

studentAverage <- ddply(Student,"Sex",transform,Grade.Average=mean(Grade))
studentAverage


# Prints/saves to a file with chr in quotes
write.table(studentAverage,"Sorted_Average")

# Saves as csv with chr variables in quotes
write.table(studentAverage,"Sorted_Average",sep=",")

# Filters for names with the letter i (upper and lowercase) with grep(), and
# subset(), subsets those names.
# x is where the imported dataset is stored.
i_students <- subset(Student,grepl("[iI]",Student$Name))
i_students
# Newly subsetted data is saved as a csv file
write.table(i_students,"DataSubset",sep=",")


