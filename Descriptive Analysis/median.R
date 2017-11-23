readInput<-function(){
	j<-0
	n<-readline("size : ")
	array<-as.numeric()
	while(j<n){
		y<-as.numeric(readline("Enter Data:"))
		array<-as.numeric(c(array,y))
		j<-j+1
	}
	return array
}

Median<-function(array) {
	temp<-sort(array)
	n<-length(temp)
	if(n %% 2 == 1) {
		return ( temp[(n+1)/2] )
	}
	else {
		return ( 0.5 * ( temp[n/2] + temp[(n/2)+1] ) )
	}
}

array<-readInput()
Median(array)
