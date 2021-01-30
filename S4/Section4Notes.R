# Notes from Section 4

#-------------------------------------------------------
### Creating Matrices ###
?matrix()
# or
?rbind()
# or
?cbind()

# Example matrix
data <- 1:20
data

mtx1 <- matrix(data,4,5)
mtx1
mtx1[2,3]

mtx2 <- matrix(data,4,5,byrow=T)
mtx2
mtx2[2,5]

# Example rbind (r for row)
r1 <- c("I","am","happy")
r2 <- c("What","a","day")
r3 <- c(1,2,3)
mtx3 <- rbind(r1,r2,r3)
mtx3

# Example cbind (c for column)
c1 <- 1:5
c2 <- -1:-5
mtx4 <- cbind(c1,c2)
mtx4


#-------------------------------------------------------
### Accessing tuples, rows, and columns in a matrix ###
# A[3,4]
# A[3,"sales"]
# A["Cust1","Sales"]
# A["Cust1",4]

#-------------------------------------------------------
### Named Vectors ###
C <- 1:5
C

# Give names
names(C) <- c("a","b","c","d","e")
C

# Clear names
names(C) <- NULL
C

# Naming matrix dimension 1
temp_vec <- rep(c("a","B","zZ"),each=3)
temp_vec

temp_mtx <- matrix(temp_vec,3,3)
temp_mtx

rownames(temp_mtx) <- c("How","Are","You")
temp_mtx

colnames(temp_mtx) <- c("x","Y","Z")
temp_mtx


f <- function(vector=1:3){
  vector*5
}
f()+f(c(1,1,1))
f()
f(c(1,1,1))
