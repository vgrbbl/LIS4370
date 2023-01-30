# Module 3: Data frames

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC <- c(4, 62, 51, 21, 2, 14, 15)

CBS <- c(12, 75, 43, 19, 1, 21, 19)

polls <- data.frame(Name,ABC,CBS, stringsAsFactors = FALSE)

polls

# Dataframe Output 

#       Name ABC CBS
# 1     Jeb   4  12
# 2  Donald  62  75
# 3     Ted  51  43
# 4   Marco  21  19
# 5   Carly   2   1
# 6 Hillary  14  21
# 7  Bernie  15  19

meanCols <- colMeans(polls[,2:3])
meanCols

# Output of column mean
# ABC      CBS 
# 24.14286 27.14286 

meanRows <- rowMeans(polls[1:7,-1])
meanRows

# Output of row means
# 1    2    3    4    5    6    7 
# 8.0 68.5 47.0 20.0  1.5 17.5 17.0 

