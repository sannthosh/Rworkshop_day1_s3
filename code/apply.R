# using apply group of functtions
# apply
# by
# eapply
# lapply
# mapply
# rapply
# sapply
# tapply
install.packages("tidyr")
library(tidyr)


m <- matrix(c(1:10,11:20), nrow=5, ncol=4)

# compute average for all the columns
apply(m,2,mean)

# compute average for all the rows
apply(m,1,mean)

# creating custom functions and apply it over columns and rows
apply(m, 1:2, function(x) x^2)

mtcars
mtcars <- mtcars[-1]
View(mtcars)

# by function
class(mtcars)
head(mtcars)

names(mtcars)

#compute the average  by cylnder type
by(mtcars, mtcars$cyl, colMeans)

#by function for categorical variables
by(mtcars[,c(1,5)], factor(mtcars$cyl), colMeans)

# eapply function
# computes the statistical function by an environment
e <- new.env()
e$a <- 1:100
e$b <- 2003:2300
e
a<-c(10,20,30)
mean(a)



mean(e)# this is erroneous

eapply(e, mean) # applies function to each of the elements in a list

# lapply is applicable when your input is a list and 
#it also returns output as a list
mylist<- as.list(mtcars)
mylist

lapply(mylist, median)

# sapply - similar to vapply
# sapply takes input as list/matrix and output is a vector
#The sapply() function works like lapply(), but it tries to simplify 
  #the output to the most elementary data structure that is possible. 
  #And indeed, sapply() is a 'wrapper' function for lapply().
sapply(mylist, median)

# vapply
vapply(mylist, fivenum, c(min=0,'Q1'=0,median =0, 'Q3'=0, max=0))

# replicate function
replicate(5, rnorm(5, 100, 2), simplify=T)

#mapply
#The mapply() function stands for 'multivariate' apply. 
  #Its purpose is to be able to vectorize arguments to a function 
  #that is not usually accepting vectors as arguments.
l1 <- list(mtcars[,1:4])
l1
str(l1)
l2 <- list(mtcars[,3:8])
l2
str(l2)
# sum of corresponding elements captured in L1 and L2
sum(mtcars[1],mtcars[2],mtcars[3],mtcars[4],mtcars[3],mtcars[4],mtcars[5],mtcars[6],mtcars[7],mtcars[8])

sum(10,12,13)

mapply(sum, x=l1,y=l2)


# rapply - recursive apply
rapply(mtcars[,1:3], log2, how='list')
#rapply(mtcars[,1:3], max, how='list')

#tapply function
#Apply a function to each cell of a ragged array, that is to each (non-empty) 
  #group of values given by a unique combination of the levels of certain factors.
tapply(mtcars$disp,mtcars$cyl, mean)


