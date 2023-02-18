library(AER)
library(dplyr)
# British Election Panel Study
df <- BEPS

summary(df)

# Boxplot comparing voter age across parties
boxplot(df$age~df$vote, xlab = "Party" , ylab = "Voter Age", col= c("blue","red","orange"), main = "Political Vote by Age")

# Count of number of votes per party
table(df$vote)

# barplot showing frequency of number of votes per party
# barplot(table(df$vote), xlab = "Party" , ylab = "Number of Votes", col= c("blue","red","orange"), main = "Number of Votes Each Party Received")

votes.df <- data.frame(table(df$vote))
votes.df$Freq <- as.numeric(votes.df$Freq)

# Converts votes / Var1 to df with percentages column
percentagesOfVoters <- votes.df%>%
  group_by(Var1)%>%
  summarise(totalCount = sum(Freq),
            percentage = paste0(Freq/sum(votes.df$Freq) * 100))

# convert percentages column from chr to num
percentagesOfVoters$percentage <- as.numeric(percentagesOfVoters$percentage)

# Barplot Showing Percentage of votes per party
myColors <- c("blue","red","orange")
barplot(percentagesOfVoters$percentage, ylim=c(0,50),
        col = myColors, names.arg= c("Conservative","Labour","Lib Dem"),
        xlab = "Political Party"  , ylab = "% of Votes", main = "Votes by Percentage" )

