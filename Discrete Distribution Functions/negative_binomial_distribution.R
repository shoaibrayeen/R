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

#k=number of successes out of total trials
#x = total number of trials 
#probability=probability of success

#A negative binomial random variable is the number x of repeated trials to produce k successes in a 
#negative binomial experiment. The probability distribution of a negative binomial random variable 
#is called a negative binomial distribution. 
#The negative binomial distribution is also known as the Pascal distribution.

negative_binomial<-function( x ,k , probability ) { 
		prob<-probability*combination(x-1,k-1)*(probability**(k-1))((1-probability)**(x-k)) #using combination function
	  return(prob)
}

k<-readline("number of successes : ")
x<-readline("number of repeated trials : ")
probability<-readline("probability of success : ")


negative_binomial(x ,k , probability )
