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

boxPlot <- function(data) {
    	boxplot(data,  main = "Box Plot")
}
data<-readInput()
boxPlot(data)
