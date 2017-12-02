#avg=xbar
#populationSD is variable name
#n is total value
#alpha is level of significance


estMean1<-function(avg,populationSD,n,alpha) {   #when variance is known
	temp<-sqrt(n)
	qvalue<-qnorm(alpha/2)		#using qnorm function
	temp2<-qvalue*populationSD/temp 
	interval<-c(avg+temp2,avg-temp2) #calculation interval
	return(interval)	#returning interval value
}


estMean2<-function(avg,sSD,n,alpha)) { #when variance is unknown
	if ( n < 30 ) {			#if n < 30  , then use t value
		qvalue<-qt(alpha/2,n-1)
		temp2<-qvalue*sSD/sqrt(n)
		interval<-c(avg+temp2,avg-temp2)	#calculation interval
		return(interval)	#returning interval value
	}
	else {
    
		estMean1(avg,sSD,n,alpha) # if n >= 30 , then use z value
	}
}


avg<-readline("Average Mean of Sample : ")
sSD<-readline("Sample SD : ")
n<-readline("Sample Size : ")
alpha<-readline("Level of Significance : ")
estMean2(avg,sSD,n,alpha)
