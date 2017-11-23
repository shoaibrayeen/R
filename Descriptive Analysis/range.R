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

#This function Calculates Maximum element of An Array
Maximum<-function(array) {
	total<-length(array)
	temp<-array[1]
	for ( i in 2:total ) {
		if ( array[i] > temp ) {
			temp <-array[i]
		}
	}
	return temp
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

Range<-function(array) {
  temp1 <- Minimum(array)
  temp2 <- Maximum(array)
  return (temp2-temp1)
}

array<-readInput()
Range(array)
