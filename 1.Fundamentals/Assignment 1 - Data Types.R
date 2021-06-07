"
------------------------------------------------------------------------------------------
Prob1: What would be the output displayed if you type 'Fe' == 'fe' in the R console?
  I. This is wrong
  II. FALSE (Answer)
  III. TRUE
  IV. R gives error
"

'Fe' == 'fe' # FALSE


"
------------------------------------------------------------------------------------------

Prob2: Let's say you type x = 2; y = T; z = 'apple' and then write three
commands class(x); class(y); class(z). class() is an built-in function in R.
Note the use of semicolons to write multiple commands in one line. What is
the output?

I. 'numeric' ; 'logical'; 'character' (Answer)
II. 'double' ; 'logical'; 'character'
III. 'integer' ; 'logical'; 'character'
IV. 'numeric' ; 'character'; 'character'
"
x = 2; y = T; z = 'apple'
class(x); class(y); class(z) # 'numeric' ; 'logical'; 'character'

"
------------------------------------------------------------------------------------------
Stripping in Vectors
vect <- c(1, 3, 5, 6)
vect2 <- vect[-3]
vect2

Prob3. What will be the output of the third line (vect2) in the above script?
I. 1, 5, 6
II. 1, 3, 6 (Anser)
III. 5
IV. 3
"
vect <- c(1, 3, 5, 6)
vect2 <- vect[-3]
vect2                 # 1, 3, 6



"
------------------------------------------------------------------------------------------
Create vectors a = c(2 ,6, 3) and b = c(4, 3, 5, 7) on R console.
Prob4. What is the result of multiplication of a and b?
I. 8, 18, 15, 14 (Answer)
II. 8,18,15,NA
III. R gives an error 

"
a = c(2 ,6, 3) 
b = c(4, 3, 5, 7)
a * b               # 8, 18, 15, 14 



"
------------------------------------------------------------------------------------------
Prob5. Use various utility functions discussed to create vectors containing
these values.
## [1] 2 4 8 16 32 64 128 256 512 1024

"

c(2, 4, 8, 16, 32, 64, 128, 256, 512, 1024)
c(1, 2, 4, 8, 16, 32, 64, 128, 256, 512) * 2
2 ^ c(1:10)
2 ** c(1:10)


"
------------------------------------------------------------------------------------------
Prob6. Use various utility functions discussed to create vectors containing
these values.
## [1] 'a26' 'b25' 'c24' 'd23' 'e22' 'f21' 'g20' 'h19' 'i18' 'j17' 'k16'
## [12] 'l15' 'm14' 'n13' 'o12' 'p11' 'q10' 'r9' 's8' 't7' 'u6' 'v5'
## [23] 'w4' 'x3' 'y2' 'z1'

"
paste0(tolower(letters[0:11]), c(26:16))
paste0(tolower(LETTERS[0:11]), c(26:16))

"
------------------------------------------------------------------------------------------
list_data <- list(c('Jan', 'Feb', 'Mar'), 1:10, c('green', 7.5), matrix(1:10, 2,5,byrow = T))
Prob7. Syntax how to get following results:
(i) [1] 'green'
(ii) [1] 'Mar'
(iii) [1] 9
(iv) [1] 9 10

"
list_data <- list(c('Jan', 'Feb', 'Mar'), 1:10, c('green', 7.5), matrix(1:10, 2,5,byrow = T))

list_data[[3]][1]
list_data[[1]][3]
list_data[[2]][9]
list_data[[2]][9:10]

"
------------------------------------------------------------------------------------------
m1 <- matrix(c(11,5,0,-5,3,-4,8,23,4), 3,byrow=T)
Prob8. Syntax how to get following results:
[,1] [,2]
[1,] -5 -4
[2,] 8 4
"
m1 <- matrix(c(11,5,0,-5,3,-4,8,23,4), 3,byrow=T)
m1[c(2:3), c(1,3)]

"
------------------------------------------------------------------------------------------
df <- data.frame(V1 = c(30,45,77,34,21),V2=c(23,45,43,78,23),V3=c(18,45,36,81,27), V4=c('English', 'Math', 'Science', 'English', 'Science'))

Prob9. Give column names Class V, Class VI, Class VII, Subjects
"
df <- data.frame(V1 = c(30,45,77,34,21),V2=c(23,45,43,78,23),V3=c(18,45,36,81,27), V4=c('English', 'Math', 'Science', 'English', 'Science'))
df
colnames(df) <- c("Class V","Class VI","Class VII","Subjects")
"
------------------------------------------------------------------------------------------
Prob10. Give row names Day1, Day2, Day3, Day4, Day5
"
row.names(df) <- c("Day1","Day2","Day3","Day4","Day5")

"
------------------------------------------------------------------------------------------
Prob11. Syntax how to get following results:

Class V
Day1 30
Day2 45
Day3 77
Day4 34
Day5 21
"
df[c(1:5), c(1)]        # Not correct answer
df[2]

