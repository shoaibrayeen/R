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

number<-readline("Number : ")
factorial(number)
