# Module 4
# Programming structure in R
# Vectors to make df
Frequency     <- c(0.6,0.3,0.4,0.4,0.3,0.6,0.3,0.4,0.9,0.2)
BP        <- c(103,87,32,42,59,109,78,205,135,176)
first         <- c(1,1,1,1,0,0,0,0,NA,1) #1 = bad,  0 = good
second        <- c(0,0,1,1,0,0,1,1,1,1)  #1 = high  0 = low
finalDecision <- c(0,1,0,1,0,1,0,1,1,1)  #1 = high  0 = low

df <- data.frame(Frequency, BP, first, second, finalDecision)
df


# Means of first, second and final decision
meanDecisions <- colMeans(df[,3:5], na.rm=TRUE)
meanDecisions 

# Boxplots
first  <- boxplot(BP ~ df$first, col = c("lightblue","red") , xlab = "First", ylab = "Blood Pressure", main = "First Decision")
second <- boxplot(BP ~ df$second, col = c("lightblue","red") , xlab = "Second", ylab = "Blood Pressure", main = "Second Decision")
finalDecision <- boxplot(BP ~ df$finalDecision, col = c("lightblue","red"), xlab = "Final Decision", ylab = "Blood Pressure", main ="Final Decision")

# Blood pressure frequency boxplot
bpFreqBoxplots <- boxplot(BP~Frequency, data = df, col = "lightblue", xlab="Frequency", ylab="BP", main = "BP and Frequency of Visits")

# Blood pressure frequency histogram
bpFreqHist     <- hist(BP, col = c("navy","blue","lightblue","lightgreen", "green"))


