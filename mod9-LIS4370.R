
df <-States
df1 <- df[,-1]
m <- data.matrix(df1)


# Base R Stars Nigtingale Chart and Star Chart
# stars(df1, flip.labels=FALSE, key.loc= c(20,10), draw.segments = TRUE, main = "Nightingale Chart of State SAT Math, Verbal Scores and Other Related Statistics ")
stars(df1, scale = T, key.loc=c(20,10), main = "Star Chart of State SAT Math, Verbal Scores and Other Related Statistics")


# Lattice Horizontal Parallel Coordinates Plot
library(lattice)
parallelplot(df1, horizontal.axis=FALSE, main = "Parallel Coordinate Plot of State SAT Scores and Other Related Statistics")


# ggplot correlation matrix heatmap
library(reshape2)
library(RColorBrewer)
mcor <- round(cor(m),2)
mcor

mcorMelted <- melt(mcor)

ggplot(data = mcorMelted, aes(x=Var1, y=Var2, fill=value)) + geom_tile() + xlab("Variable 1") + ylab("Variable 2") + 
  ggtitle("Correlation Matrix Heatmap Showing SAT Score and Related Statistics") + 
  labs(fill="Pearson Correlation Coefficient") +
  scale_fill_distiller(palette = "RdBu")
