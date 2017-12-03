
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

scatter <- function(data1,data2) {
    	plot(x = data1,y = data2, xlab = "x", ylab = "y", main = "Scatter Diagram")
}
data1<-readInput()
data2<-readInput()
scatter(data1,data2)
