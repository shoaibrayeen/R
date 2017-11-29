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

combination<-function(n,r){
  
  result <- factorial(n)/ (factorial(r)*factorial(n-r))
  return(result)
  
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

multivariate_hypergeometric(x,M) {
	N<-sum(M)
	n<-sum(x)
	probability<-1
	if ( length(x) == length(M) ) {
		for( i in 1:length(x) ) {
			probability<-probability*(combination(M[i],x[i])) 	#using combination function
		}
		probability<-probability/(combination(N,n))			#using combination function
		return( probability )
	}
	return("Length of both data must be equal")
}
x<-readInput()
M<-readInput()
multivariate_hypergeometric(x,M)
