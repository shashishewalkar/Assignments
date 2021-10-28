#Q1 try to write a code for printing sequence of numbers from 1 to 50 with the
# difference of 3,5,10
seq(1,50,3)
seq(1,50,5)
seq(1,50,10)




#Q3 create data frame with 3 columns and 5 rows and write a code to fetch and delete 
#row and column using index and add new column and row to the existed data frame
data <- data.frame(matrix(NA,nrow = 5,ncol = 3))
data
View(data)
data = data[-1,]  #delete row
data
data <- subset(data,select = -X1) #delete column
data
new_row <- c(1,2,3)
new_row
data1 <- rbind(data,new_row)  #add row
data1
new <- c(3,3,6,7,8)
data_new <- cbind(data,new)  #add column
data_new






#Q4 write nested if else statement to print whether the given number is negative, positive ,or zero
sign <- function(x)
{
  if(x<0)
  {
    print("Negative number")
  }
  else if(x>0)
  {
    print("Positive number")
  }
  else
  {
    print("Zero")
  }
  
  
}





#Q5 write a program to input any value and check whether it is character numeric or special character 
var = readline(prompt = "enter value:");
var = charToRaw(var);
if ( (var >= 65 && var <=90) || (var>=97 && var <=122))
{
  print (" character value")
}else if((var >= 48 && var <=57))
{print("integer value")
}else
{print("special char")}





#Q7 write a program to print a given vector in reverse format
v=c(1,5,6,3,10,3,5,5)
print("original vector -1 : ")
print(v)
rv=rev(v)
print("The said vector in reverse order")
print(rv)






#Q8 write a program to get the mode value of the given vector
getmode <- function(v)
{
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
charv <- c("a","b","c","t","a","c","r","a","c","t","z","r","v","t","v","e","t")
result <- getmode(charv)
print(result)


#Q9
install.packages("Rcpp")
install.packages("dplyr")

library(datasets)
data(iris)
iris


names(iris) <- tolower (names(iris))
library(dplyr)
setosa <- filter( iris, species =="setosa")
setosa


##Q,10

iris$Means_of_obs <- rowMeans( iris[1:4],1)

iris

## Q,11

versicolor1 <- filter( iris, species == "versicolor" )
versicolor2 <- select( versicolor1, sepal.width, sepal.length )
versicolor2

#Q12 
#1 Scatter plot

library(ggplot2)
data("mtcars")
ggplot(data = mtcars, aes(x = mpg, y = hp)) + geom_point() #scatter plot
ggplot(data = mtcars, aes(x = mpg, y = hp)) + geom_point(color = 'red') #scatter plot using color
ggplot(data = mtcars, aes(x = mpg, y = hp)) + geom_point(color = 'red' , size = 4)

#2 Histogram
ggplot(data = mtcars , aes(x = mpg)) + geom_histogram()
ggplot(data = mtcars , aes(x = mpg)) + geom_histogram(color = 'red', fill = 'blue', bins = 30)


#3 Bar Graph
ggplot(data = mtcars , aes(x = mpg , y = hp )) + geom_bar(stat = "identity")
ggplot(data = mtcars , aes(x = mpg , y = hp, fill = mpg )) + geom_bar(stat = "identity")


#4 Line Graph
ggplot(data = mtcars , aes(x= mpg , y= hp, group=1)) + geom_line()
ggplot(data = mtcars , aes(x= mpg , y= hp, group=1)) + geom_line() + geom_point()
ggplot(data = mtcars , aes(x= mpg , y= hp, group=1)) + geom_line() + geom_point(colour='red',size=2,shape= 15,fill='black')

#5 Box plot
ggplot(data = mtcars , aes(x= mpg , y= hp , group=1)) + geom_boxplot()
ggplot(data = mtcars , aes(x= mpg , y= hp, group =1)) + geom_boxplot(outlier.colour = "red", outlier.shape = 8 , outlier.size = 4)




