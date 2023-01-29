# Module 3: Data frames

Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Berine")

ABC <- c(4, 62, 51, 21, 2, 14, 15)

CBS <- c(12, 75, 43, 19, 1, 21, 19)

polls <- data.frame(Name,ABC,CBS, stringsAsFactors = FALSE)

polls


# Dataframe Output 

# Name ABC CBS
# 1     Jeb   4  12
# 2  Donald  62  75
# 3     Ted  51  43
# 4   Marco  21  19
# 5   Carly   2   1
# 6 Hillary  14  21
# 7  Berine  15  19
