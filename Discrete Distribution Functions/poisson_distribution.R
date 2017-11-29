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

#The Poisson distribution can be applied to systems with a large number of possible events,
#each of which is rare. How many such events will occur during a fixed time interval? 
#Under the right circumstances, this is a random number with a Poisson distribution.


#x for P(X=x)
#lamda parameter which is equal to mean and variance of poission distribution

poisson<-function( x , lamda ) {
	return( (lamda**x))*exp(-lamda)/(factorial(x)) ) #using poisson formula and #using factorial function
}


x<-readline("x : ")
lambda<-readline("lambda : ")

poisson(x, lambda)
