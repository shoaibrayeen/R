#This function takes command line Input
readInput<-function(){
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



array<-readInput()

#This function Calculates median of An Array
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

#This function Calculates quartiles of a raw data

firstQuartile<-function(array) {
	temp<-sort(array)
	return temp[(n+1)/4]
}
firstQuartile(array)


secondQuartile<-function(array) {
	temp<-Median(array)	#used Median Function
	return temp
}
secondQuartile(array)


thirdQuartile<-function(array) {
	temp<-sort(array)	
	return temp[3*(n+1)/4]
}
thirdQuartile(array)
