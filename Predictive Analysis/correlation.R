readInput<-function() {
	j<-0
	n<-readline("size : ")
	array<-as.numeric()
	while(j<n) {
		y<-as.numeric(readline("Enter Data : "))
		array<-as.numeric(c(array,y))
		j<-j+1
	}
	return(array)
}

correlation<-function(x,y) {
	if( length(x) == length(y) ) {
		n<-length(x)
		r<-( n * sum(x**2) - (sum(x)**2) ) * ( n * sum(y**2) - (sum(y)**2) )  #intermediate calculation
		r<-sqrt(r)
		r<-1/r
		r<-( n * sum(x*y) - sum(x) *sum(y) ) * r
		return(r)
	}
	return("Length of both data must be equal")
}

x<-readInput()
y<-readInput()
correlation(x,y)
