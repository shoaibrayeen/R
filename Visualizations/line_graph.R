
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

lineGraph <- function( data , data1 = 0 , data2 = 0) {
    	plot(data,type = "o", col = "red", xlab = "x", ylab = "y",main = "Line Graph")
    	lines(data1, type = "o", col = "blue")
    	lines(data2, type = "o", col = "green")
}
data<-readInput()
lineGraph(data)
