
readInput<-function() {
	j<-0
	n<-readline("size : ")
	array<-as.numeric()
	while(j<n) {
		y<-as.numeric(readline("Enter Data : "))
		array<-as.numeric(c(array,y))
		j<-j+1
	}
	return array
}

barPlot <- function(data) {
  	barplot(data, col = "red", xlab = "x", ylab = "y",main = "Bar Graph")
}
data<-readInput()
barPlot(data)
