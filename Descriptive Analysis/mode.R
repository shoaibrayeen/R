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

#This function Calculates mode of An Array
mode <- function(array) {
	uniq <- unique(array)
  temp<-uniq[which.max(tabulate(match(array, uniq)))]
	return temp
}
mode(array)
