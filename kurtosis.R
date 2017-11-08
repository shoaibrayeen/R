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

#This function Calculates population variance of An Array
PopulationVariance<-function(array){
	temp<-0
	total<-length(array)
	mean<-Mean(array)
	for(i in 1:total){
		temp <- temp + (array[i]-mean)*(array[i]-mean)
	}
	temp <- temp / length(array)	
	return temp
}

#This function Calculates population standard Deviation of An Array
PopulationSD<-function(array){
	temp<-PopulationVariance(array)
	temp<-sqrt(temp)
	return temp
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

#This function Calculates kurtosis of A raw Data

kurtosis<-function(array) {
	temp1<-centralMoments(array,4) #using cenralMoments(array,4) function
	temp2<-PopulationSD(array)     #using PopulationSD(array) function
	temp2<-temp2**4
	return ( (temp1/temp2) - 3)
}

kurtosis(array)
