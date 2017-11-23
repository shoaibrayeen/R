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

#This function Calculates Minimum element of An Array
Minimum<-function(array) {
	total<-length(array)
	temp<-array[1]
	for ( i in 2:total ) {
		if ( array[i]< temp ) {
			temp <-array[i]
		}
	}
	return temp
}


array<-readInput()
Minimum(array)
