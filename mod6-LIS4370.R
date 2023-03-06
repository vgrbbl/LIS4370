# Answer the following questions and post your answer on your blog:
#   1. Consider A=matrix(c(2,0,1,3), ncol=2) and B=matrix(c(5,2,4,-1), ncol=2).
#   a) Find A + B
#.  b) Find A - B
A <- matrix(c(2,0,1,3), ncol=2)
B <- matrix(c(5,2,4,-1),ncol=2)

#1a. 
A + B

#1b.
A - B


#2. 2. Use the diag() function to build a matrix of size 4 with the following values in the diagonal 4,1,2,3.
diag(c(4,1,2,3))


#3. 3. Generate the following matrix:
#      Hint: You can use the command diag() to build it.



#   ##     [,1] [,2] [,3] [,4] [,5]
#   ## [1,]  3    1    1    1    1
#   ## [2,]  2    3    0    0    0
#   ## [3,]  2    0    3    0    0
#   ## [4,]  2    0    0    3    0
#   ## [5,]  2    0    0    0    3


a <- diag(c(3),5,5)
a[1,2:5]=1
a
a[2:5,1]=2
a


