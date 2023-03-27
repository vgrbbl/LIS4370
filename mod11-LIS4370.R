tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } return(outlier.vec) }

debug(tukey_multiple)
x <- c(6,5)
tukey_multiple(x)

source("grbbl-mod11-LIS4370.R")

# Error in source("grbbl-mod11-LIS4370.R") : 
# grbbl-mod11-LIS4370.R:9:43: unexpected symbol
# 8:   for (i in 1:nrow(x))
# 9:   { outlier.vec[i] <- all(outliers[i,]) } return


tukey_multiple <- function(x) {
  outliers <- array(TRUE,dim=dim(x))
  for (j in 1:ncol(x))
  {
    outliers[,j] <- outliers[,j] && tukey.outlier(x[,j])
  }
  outlier.vec <- vector(length=nrow(x))
  for (i in 1:nrow(x))
  { outlier.vec[i] <- all(outliers[i,]) } 
  return(outlier.vec) }

