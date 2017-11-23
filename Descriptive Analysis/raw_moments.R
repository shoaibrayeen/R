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
r<-readline("rth Moment : ")
A<-readline("Arbitrary Number : ")

#This function Calculates central moments of A raw Data
rawMoments<-function(array , r , A) { #A is Arbitrary Number
	total<-length(array)
	if( r == 0 ) {
		return 1
	}
	else {
		temp<-0
		temp1<-0
		for(i in 1:total) {
			temp1<-(array[i]-A)**r
			temp<-temp + temp1
		} 
		temp<-temp / total
		return temp
	}
}

rawMoments(array , r ,A )
