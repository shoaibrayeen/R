###Basic Statistics with R

#Quartiles and percentiles are supported by function quantile() as below
# To find Quartiles of given data
quantile(iris$Sepal.Length)

#To find some particular Quartiles 
quantile(iris$Sepal.Length, c(.1, .3, .65))

#The mean, median and range can also be obtained with functions with mean(), median() and range(). 
mean(iris$Sepal.Length)
median(iris$Sepal.Length)
range(iris$Sepal.Length)

#Then we check the variance of Sepal.Length with var().
var(iris$Sepal.Length)

#To display result summaries of the results of various model fitting functions 
summary(iris)

#compute the stats of Sepal.Length of every Species with aggregate()
aggregate(Sepal.Length ~ Species, summary, data=iris)

#calculate covariance and correlation between variables with cov() and cor().

cov(iris$Sepal.Length, iris$Petal.Length) #Between 2 varibles
cov(iris[,1:4]) #More than 2 variables
cor(iris$Sepal.Length, iris$Petal.Length) #Between 2 varibles
cor(iris[,1:4]) #More than 2 variables



