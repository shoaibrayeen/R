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


#In probability theory and statistics, the hypergeometric distribution is a discrete probability 
#distribution that describes the probability of x successes (random draws for which the object 
#drawn has a specified feature) in n draws, without replacement, from a finite population of 
#size N that contains exactly M objects with that feature, wherein each draw is either a 
#success or a failure. 


#N= Total Population

#n= number of random draws for which the object drawn has a specified feature
#x= number of successes in n draws

#M= number of objects with that feature, wherein each draw is either a success or a failure. 

hypergeometric_distribution<-function(x,N,M,n) {
		return( combination(M,x)*combination(N-M,n-x)/combination(N,n) ) #using combination function
}

N<-readline("Total Population : ")
M<-readline("Total Number of Objects out of N  : ")
n<-readline("number of random draws : ")
x<-readline("number of successes in n draws : ")

hypergeometric_distribution(x,N,M,n)

