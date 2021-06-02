######################### R Data Types #########################################
# 1.Vector
x <- 5
y = 7
1.more = 25
one.more = 25
more.1 = 78

#is
is.vector(x)
is.list(y)
is.character(x)
# Class
class(x)
class(y)

#operations

x*y
x-y

x+y
x/y
y/x
y%%x
x%%y
is.vector(x) > vector(y)
is. vector(x)>is.vector(y)
x>y
x<y
x/y/2
letters
LETTERS



# Characetr#

x <- "Ram"
y <- "Sita"


x+y
y+x

paste(y,x)

paste(x,y)

paste0(x,y)
paste0(y,x)
paste(y,x, sep = "&")
paste(y,x, sep ="loves")
paste0(y,x, sep = "loves")
paste(y,x, sep= "loves")

x <- 67
y <- 45

paste(x,y)
paste0(x,y)

paste(x,y, sep="loves")
paste0(x,y, sep = "loves")


# logical

x <- 8

x>1

t <- x<1

class(t)

is.vector(t)

# multi elements vector

x <- c(2,7,1,0,4)

x[4]
x[2]


y <- c(5,6,1,2,8)

x+y
x*y
x/y
x/y

x <- c(2,7,1)

x*y

y <- c(4,5,8,9,7,2)
       
x*y



fruits <- c('banana','mango')  
veg <- c('tomato', 'chilli')

veg[2]

veg[c(1,2)]

which(fruits == "mango")

b <- y>= 5

as.numeric(b)
    
 
class(t)






########## R Data Types 21/05/21 ###########

x <- 5
class(x)

y <- 7.5
class(y)

z <- 5L
class(z)

x+z

I <- c(1L,6L,-2L)
Class(I)

r <- 1:10
class(r)

library(dplyr)

glimpse(md)



fruits <- c('cherry','mango','banana','orange','apple')

fruits[2:4]

x <- c(5,6,1,8,'3',9)

class(x)

x <- as.numeric(x)

class(x)

print(x)

x

L1 <- list(5,2,3,1,7,2)

L1


L2 <- list(c('mango', 'banana', 'orange'), 5:18, c(3,7,1), TRUE, list('Hari',36, TRUE))

d <- c(5:10)

class(d)

L2

L2

class(L2)

V1 <- unlist(L1)

class(V1)

V2 <- unlist(L2)

V2

class(V2)
library

names(L2) <- c('fruits','integer','number','logical','employee')

L2

L2


########Matrix#################

M1 <- matrix()

?matrix

M1 <- matrix(5:16, nrow = 3, byrow=TRUE, dimnames = list(c('R1','R2','R3'),c('C1','C2','C3','C4')))

M2 <- matrix(-1:10, nrow = 3, byrow = TRUE)

M3 <- matrix(c(3,7,1,0,9,3,1,2,1,1,1,6), nrow =3)
M3

M1[2,2]


row.names(M3) <- c('R1', 'R2', 'R3')
M3
colnames(M3) <- c('C1','C2','C3','C4')

M3[3,]
M3[,2]



M3[c(1,3),c(1,4)]







A <- matrix(c(3,-1,0,4,7,3), nrow=2)

B <- matrix(7:12, nrow = 2)

A + B

A - B

A * B

A/B

C <- matrix(letters[1:6], nrow = 3)

D <- matrix(1:6, nrow = 3)

##### when characters and numeric needs to be written in matrix form####

matrix(paste (C,D, sep = "*"), nrow = 3)


#####Multiplication######
# in 2 matrices, number of columns of one matrix needs to be equal to number of rows of he other matrix####




M <- matrix(c(1,2,5,0,9,6), nrow = 2)
M

N <- matrix(c(1,3,0,5,7,9,2,1,4,0,6,2), nrow = 3)

M%*%N

A <- matrix(c(3,1,0,5,0,1), nrow = 2)
B <- matrix(c(2,10,6,3,0,1,1,4,6), nrow = 2)







