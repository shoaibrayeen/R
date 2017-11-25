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

x1<-readInput()
x2<-readInput()
y<-readInput()


#x1 , x2 and y must be multile data with same length
# data for testing
#x1<-c(3,2,4,2,3,2,5,4)
#x2<-c(2,1,3,1,2,2,3,2)
#y<-c(78800,74300,83800,74200,79700,74900,88400,82900)

Multi_Linear_Regression<-function(x1 , x2 , y ) {
	xMatrix<-cbind(c(length(x1),sum(x1),sum(x2)) , c(sum(x1),sum(x1**2),sum(x1*x2)) , c(sum(x2),sum(x1*x2),sum(x2**2)))
	xyMatrix<-cbind(c(sum(y),sum(x1*y),sum(x2*y)))
	result<-solve(xMatrix,xyMatrix)    #matrix inverse , then multiply with inverse and save final result in result
	sprintf("y=%f+%f*x1+%f*x2" , result[1][1] ,result[2][1],  result[3][1]) #print in this format
}

Multi_Linear_Regression(x1,x2,y)
