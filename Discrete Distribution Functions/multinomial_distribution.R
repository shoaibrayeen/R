factorial<-function(number){
  if(number==0 || number==1) {
    return(1)
  }
  fact<- 1
  for( i in 1:number){
    fact<-fact*i
  }
  return(fact)
}

#------------------------------------------------------------------------------------------------#
readInput<-function() {
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

#------------------------------------------------------------------------------------------------#

multinomial<-function(data,prob) {
	if ( length(data) == length(prob) ) {
		if ( sum(prob) !=1 ) {
			return("Wrong Input")
		}
		else {
			probability<-1
			for( i in 1:length(data)) {
				probability<-probability*(factorial(data[i]))	#using factorial function
			}	
			probability<-(1/probability)*(factorial( sum(data) ))		#using factorial function
			for( i in 1:length(data)) {
				probability<-probability*(prob[i]**data[i])
			}
			return(probability)
		}
	}
	return("Length of both data must be equal")
}

data<-readInput()
prob<-readInput()
#the multinomial distribution is a generalization of the binomial distribution.
multinomial(data,prob)
