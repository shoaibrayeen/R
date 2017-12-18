#Generating standard plots such as histograms, boxplots, and scatterplots
#Generate a histogram: hist()
hist(iris$Sepal.Length, prob=T)

#check distribution with histogram and density using functions hist() and density().
hist(iris$Sepal.Length, prob=T)
lines(density(iris$Sepal.Length))

#The frequency of factors can be calculated with function table(), and then plotted as a pie chart with pie() or a bar chart with barplot()
table(iris$Species) # Freq in table form
pie(table(iris$Species)) # To display pie chart
barplot(table(iris$Species))# To display bar chart
barplot(table(iris$Species),horiz = TRUE,beside = FALSE)


# To Create a boxplot for data: 
 boxplot(iris$Sepal.Length,xlab='Sepal.Length')
#To generate boxplots for subsets within the whole dataset, you can use:  
boxplot(iris$Sepal.Length ~ iris$Species,xlab='Sepal.Length')
#or
boxplot(Sepal.Length~Species, data=iris)

#Create a scatterplot for data: 
plot(iris$Sepal.Length)
#Using two variables:
plot(iris$Sepal.Length ~ iris$Sepal.Width,xlab='Species',ylab='Length')
#if used cateory then it is same as boxplot: 
plot(iris$Sepal.Length ~ iris$Species,xlab='Species',ylab='Length')

# To Create matrix scatterplots for a set of variables:
pairs(~mpg+displacement+horsepower+weight)
pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",
      pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)])#unclass represents levels(in numeric)

#Generating multiple plots on a grid
	# first get old graphical parameter settings	
	old.par = par()
	# create a grid of one row and two columns
	par(mfrow = c(1,2))
	with(auto, { 
	plot(mpg ~ weight, main = "Weight vs. mpg")
	plot(mpg ~ acceleration, main = "Acceleration vs. mpg")
	}
	)
	# reset par back to old value so that subsequent
	# graphic operations are unaffected by our settings
	par(old.par)

#A 3D scatter plot can be produced with package scatterplot3d
library(scatterplot3d)
scatterplot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)
library(rgl)
plot3d(iris$Petal.Width, iris$Sepal.Length, iris$Sepal.Width)

#A heat map presents a 2D display of a data matrix, which can be generated with heatmap()
distMatrix <- as.matrix(dist(iris[,1:4])) # the similarity between different flowers in the iris data
heatmap(distMatrix)
	
#Function grey.colors() creates a vector of gamma-corrected gray colors. A similar function is rainbow(), which creates a vector of contiguous colors.
barplot(1:12, col = gray.colors(12))
barplot(1:12, col = rainbow(10))
