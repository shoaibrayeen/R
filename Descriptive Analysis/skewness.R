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

#This function Calculates the arithmetic mean of An Array 
Mean<-function(array) {
	return (sum(array)/length(array))
}



#This function Calculates central moments of A raw Data
centralMoments<-function(array , r ) {
	total<-length(array)
	mean<-Mean(array)	#Using Mean(array) function
	if( r == 0 ) {
		return 1
	}
	else if ( r == 1 ) {
		return 0
	}
	else {
		temp<-0
		temp1<-0
		for(i in 1:total) {
			temp1<-(array[i]-mean)**r
			temp<-temp + temp1
		} 
		temp<-temp / total
		return temp
	}
}

#This function Calculates skewness of A raw Data

skewness<-function(array) {
	temp1<-centralMoments(array,3) #using cenralMoments(array,3) function
  temp1<-centralMoments(array,2) #using cenralMoments(array,3) function
	temp2<-sqrt(temp2)
	temp2<-temp2**3
	return (temp1/temp2)
}

skewness(array)
