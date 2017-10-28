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

Mean<-function(array) {
	return (sum(array)/length(array))
}

#This function Calculates mean absolute Deviation of An Array
MeanAbsoluteDevation<-function(array){
	temp<-0
	total<-length(array)
	mean<-Mean(array)
	for(i in 1:total){
		temp <- temp + abs(array[i]-mean)
	}
	temp <- temp / length(array)	
	return temp
}

array<-readInput()
MeanAbsoluteDevation(array)
