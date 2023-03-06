# Find the determinant and inverse of the given variables A and B

library(matlib)

A <- matrix(1:100, nrow=10)
B <- matrix(1:1000, nrow=10)


# To find the determinant of A:
   det(A)
# To find the inverse of a A: 
   solve(A)
   
#  The determinant of A is zero therefore the matrix is singular and no inverse exists.


# To find the determinant of B: 
    det(B)
# To find the inverse of B: 
    solve(B)

# The matrix is not square, therefore it does not have a determinant or inverse.

