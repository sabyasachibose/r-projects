# Important: Clear Console and Environment window before starting to execute the commands in this file

# --------------------------------------------  Define Data Frame --------------------------------------------
# Define a dataframe with some arbitrary data. C1, C2 & C3 are column names. 
df1 <-  data.frame(
    C1=c('A', 'B', 'C', 'D', 'E'), 
    C2=c(1,2,3,4,5), 
    C3=c('a', 'b', 'c', 'd', 'e')
  )

# view dataframe
df1

# view structure of the dataframe
str(df1)

# ---------------------- Manipulate  Data Frame ----------------------  

### Add a new row. Store the output in a new dataframe df2. Rows can be added by rbind function
df2 <- rbind(df1,c('F',6,'f', 'F + 6 + f'))

# view dataframe
df1 # Has 5 rows
df2 # Has 6 rows

### Add new column. New column can be added in two ways
## Add new column (Option 1) - use cbind function. Give C4 as new column name
X1=c(10,20,20,40,50,60) # Define variable X1
df2 <- cbind(df2, C4=X1) # Create new column C4 and assign values of X1 to C4

# View values of X1 & df2
X1
df2

## Add new column (Option 2) - assign values directly. Give C5 & C6 as the new column name. 
# Note this time we have not defined variable like X1 above. Instead we have assigned the values directly
df2$C5 <- paste(df2$C1, df2$C2, df2$C3, sep=" + ")
df2$C6 <- c(100,200,300,400,500, 600)

# View df2
df2
View(df2) # More intuitive

# Add some more columns
df2$C7 <- sqrt(df2$C4)        # Add column C7 with values as Square root of C4
df2$C8 <- df2$C4 * 2          # Add column C8 with values as C4 x 2
df2$C9 <- cbind(df2$C4 / 5)   # Add column C9 with values as C4 / 5

# View df2
df2
View(df2) # More intuitive

# Change name of the columns
names(df2) = c('Mercury', 'Venus', 'Earth', 'Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto')

# Change name of the rows
row.names(df2) = c('Monday', 'Tuuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday')

# View df2
df2
View(df2) # More intuitive

### How to access data from dataframe
df2[,1]                       # By index. Shows data of first column as vector
df2[,'Mercury']               # By name. Shows data of first column as vector

df2[,c(2,4)]                  # By index. Shows data of second and fourth column as  dataframe
df2[,c('Venus', 'Mars')]      # By name. Shows data of second and fourth column as  dataframe

df2[,c(2:4)]                  # By index. Shows data from second to fourth column as dataframe. Notice the : instead of ,
df2[,c('Venus':'Mars')]       # By name. This won't work because R does know sequence of planets!


### Some more funky stuff
length(df2)                   # How many columns
ncol(df2)                     # How many columns (another way)
nrow(df2)                     # How many rows
dim(df2)                      # How many rows & columns 

## Changes rows names to A1,A2,...,A6. We have to know how many rows are there in the dataframe. In this case it's 6
row.names(df2) <- paste0(LETTERS[1], 1:6)      

# View df2
df2
View(df2) # More intuitive

## Changes rows names to B1,B2,..... Find number of rows using nrow function
row.names(df2) <- paste0(LETTERS[2], 1:nrow(df2))      

# View df2
df2
View(df2) # More intuitive

## Changes column names to X1,X2,..... 
names(df2) <- paste0(LETTERS[24], 1:ncol(df2))      

# View df2
df2
View(df2) # More intuitive

# -----------------------------------------------------------------------------------------------------------------------------------