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

qPlot <- function(data1,data2) {
	qqplot(x= data1,y=data2,xlab = "xBeer", ylab = "y")
	qqnorm(data2)
	qqline(data2, col = "red")
}
data1<-readInput()
data2<-readInput()
qPlot(data1,data2)
