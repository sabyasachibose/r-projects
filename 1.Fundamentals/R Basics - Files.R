### Working directory, reading and writing files

# get working directory
getwd()

# Instructions: Download Data folder from google drive shared by sir and copy it to a folder on your machine. I have copied it to G:/projects/datascience

# set working directory
setwd('G:/projects/datascience/data')       # CTRL + SPACE is a shortcut for autocomplete. Try after any /


# read contents of one of the files
df1 <- read.csv('census_income.csv')
df1

# opens a file selection window to select the file to read
df2 <- read.csv(file.choose())
df2

# convert the file to tab separated file
df2 <- read.table(file.choose())

# install library to read excel files
install.packages("readxl")
library(readxl)
df3 <- read_xls('exercise.xls')


# install library to read SPSS files
library(foreign)
df4 <- foreign::read.spss('Dell.sav') # read spss file
df5 <- as.data.frame(df4)             # convert to dataframe

library(sas7bdat)
df6 <- read.sas7bdat('gaming1.sas7bdat')
