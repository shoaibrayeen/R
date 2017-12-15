estVar<-function(sVar,n,pVar,alpha) {
	qvalue1<-qchisq(1 - (alpha/2) , n-1) 	#calculation chi square value for alpha/2 & and df=n-1
	qvalue2<-qchisq(alpha/2 , n-1)		#calculation chi square value for 1-alpha/2 & and df=n-1
	temp<-(n-1)*sVar/qvalue1
	interval<-temp
	temp<-(n-1)*sVar/qvalue2
	interval<-c(interval,temp)	#calculation interval
	return(interval)	#returning interval value
}

sVar<-readline("Sample Variance: ")
n<-readline("Sample Size : ")
pVar<-readline("Population Variance: ")
alpha<-readline("Level of Significance : ")

estVar(sVar,n,pVar,alpha)
