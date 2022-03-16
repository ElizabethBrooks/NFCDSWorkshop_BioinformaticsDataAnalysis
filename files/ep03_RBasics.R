# here is an integer value
4

# here is a variable with an assigned integer value of 4
my_value <- 4

# addition using the values directly
8 + 8

# addition using the values stored in a variable
my_value <- 8
my_value + my_value

# addition using two different variables with the different assigned values
# and the result is stored in the variable named my_result
my_value_1 <- 4
my_value_2 <- 8
my_result <- my_value_1 + my_value_2

# variable with a character value 
my_chars <- "hello"

# variable with a numeric value
my_nums <- 0.5

# variable with the result of two numeric values being added together (evaluated)
my_add_result <- 0.5 + 1.7

# variable with a value assigned from the data in the my_file.txt text file
my_file_data <- read.delim("my_file.txt")

?print

# 1D vector using the : binary operator
1:10

# 1D vector in the reverse order
10:1

# examine the documentation for the seq function in R
?seq

# 1D vector using the seq function and explicit arguments
seq(from = 1, to = 10)

# 1D vector using the seq function and implicit arguments
seq(1, 10)

# print a 1D vector to the screen using the print and seq functions together
print(seq(1,10))

# variable with an assigned value of a 1D vector object
my_vector <- seq(1, 10)

# view the data contents of myVector using the print function
print(my_vector)

# short hand way to view the data contents of myVector
my_vector

# access the second element of the vector stored in myVector
my_vector[2]

# list of values with different data types
my_list <- list(1:4, TRUE, 0.5, "meow")

# view the contents of the list variable
print(my_list)

# examine the documentation for the matrix function in R
?matrix

# 2D matrix where the sequence data is filled in by row
# and the data specified using a nested seq function call
matrix(data = seq(1, 10), nrow = 2)

# 2D matrix where the sequence data is filled in by column 
# with the default byrow argument value of FALSE and implicit data argument
matrix(seq(1, 10), nrow = 2)

# variable storing 1D sequence data
my_vector <- seq(1, 10)

# 2D matrix where the sequence data is added (passed) to the matrix function using a variable
matrix(my_vector, nrow = 2)

# variable storing 2D matrix where the data argument is passed using a variable
my_mat <- matrix(my_vector, nrow = 2)

# view the contents of my_mat
my_mat

# access the first element of the second column using the column and row index of the element
my_mat[1,2]

# examine the documentation for the c function in R
?c

# variable with a 1D vector of character data to be used as our first column
char_var <- c("coding in", "R", "is fun", ":)") 

# variable with a 1D vector of integer data to be used as our first column
seq_var <- seq(1, 4) 

# examine the documentation for the data.frame function in R
?data.frame

# variable with a 2D data frame storing our three 1D vectors using implicit column naming
df <- data.frame(char_var, seq_var)

# 2D data frame storing our three 1D vectors using explicit column naming
data.frame(characters = char_var, integers = seq_var)

# take a look at the letters function
?letters

# variable with a 4x2 matrix of sequential letters starting with a
my_mat <- matrix(letters[1:8], ncol = 2)

my_mat

# retrieve the first element of my_mat
my_mat[1, 1]

# retrieve the entire third row of my_mat
my_mat[3,]

# retrieve the entire second column of my_mat
my_mat[,2]

# retrieve the subset of my_mat that is the second (bottom) half
my_mat[3:4,]

# variable with a 4x4 data frame
my_DF <- data.frame(
  chars = letters[1:4], 
  ints = 1:4, 
  logics = c(TRUE, FALSE, TRUE, TRUE), 
  nums = seq(from = 0.1, to = 1, length.out = 4)
)

my_DF

# retrieve the top half of myDF
my_DF[1:2,]

my_DF[1:2, 1:2]

# retrieve the second column using indexing
my_DF[,2]

# retrieve the second column using the $ operator and column name
my_DF$ints

# sdhbfjsdhbf
