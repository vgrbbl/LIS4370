library(plyr)

# S3
gertrude <- list(owner = T, name="Gertrude", age = 78)
class(gertrude) <-"Owner"
attributes(gertrude)
gertrude
otype(gertrude)
show(gertrude)

percy <- list(pet = "Dog", name = "Percy", age=10)
class(percy) <- "Pet"
attributes(percy)
percy
otype(percy)
show(percy)


# S3 OUTPUT
# $names
# [1] "owner" "name"  "age"  
# 
# $class
# [1] "Owner"
# 
# > gertrude
# $owner
# [1] TRUE
# 
# $name
# [1] "Gertrude"
# 
# $age
# [1] 78
# 
# attr(,"class")
# [1] "Owner"
# > otype(gertrude)
# [1] "S3"
# > 
#   > percy <- list(pet = "Dog", name = "Percy", age=10)
# > class(percy) <- "Pet"
# > attributes(percy)
# $names
# [1] "pet"  "name" "age" 
# 
# $class
# [1] "Pet"
# 
# > percy
# $pet
# [1] "Dog"
# 
# $name
# [1] "Percy"
# 
# $age
# [1] 10
# 
# attr(,"class")
# [1] "Pet"
# > otype(percy)
# [1] "S3"

# S4
setClass("Owner",
         representation( name = "character", age = "numeric"))
setClass("Pet",
         representation(pet= "character", name = "character", age="numeric"))

bob <- new("Owner", name = "Bob", age = 55)
otype(bob)
show(bob)

terry <- new("Pet", name = "Terry", age = 5, pet ="Cat")
otype(terry)
show(terry)

# S4 OUTPUT
# > setClass("Owner",
#            +          representation( name = "character", age = "numeric"))
# > setClass("Pet",
#            +          representation(pet= "character", name = "character", age="numeric"))
# > 
#   > bob <- new("Owner", name = "Bob", age = 55)
# > otype(bob)
# [1] "S4"
# > 
#   > terry <- new("Pet", name = "Terry", age = 5, pet ="Cat")
# > otype(terry)
# [1] "S4"
