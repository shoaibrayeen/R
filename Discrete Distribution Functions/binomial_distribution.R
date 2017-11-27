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

#favourable=number of successes out of total trials
#total = total number of trials 
#probability=probability of success
binomial<-function(favourable , total , probability ) { 
	prob<-combination(total,favourable)*(probability**favourable)((1-probability)**(total-favourable)) #using combination function
	return(prob)
}

favourable<-readline("favourable Trials : ")
total<-readline("total Trials : ")
probability<-readline("probability of success : ")


binomial(favourable , total , probability )
