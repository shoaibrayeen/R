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
alpha<-readline("Level of significance : ")

#null hypothesis: r is not significant
#alternative hypothesis: r is  significant

significance_test<-function(x,y,alpha){
	r<-correlation(x,y)
	t<-r/sqrt((1-r**2)/(length(x)-2))
	if(t<0) {
		t<-abs(t)
	}
	critical_value<-qt(1-alpha/2,length(x)-2)
	if( critical_value < t ) {
			return("Reject the Null Hypothesis") #reject null hypothests
		}
	return("Don't Reject the Null Hypothesis")
	
}
