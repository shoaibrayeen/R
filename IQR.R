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

#This function Calculates 1st and 3rd quartiles of a raw data

firstQuartile<-function(array) {
	temp<-sort(array)
	return temp[(n+1)/4]
}



thirdQuartile<-function(array) {
	temp<-sort(array)	
	return temp[3*(n+1)/4]
}

#This function Calculates Inter Quartile Range of A raw Data
IQR<-<-function(array) {
	temp1<-firstQuartile(array)
	temp2<-thirdQuartile(array)
	return (temp2-temp1)
}
