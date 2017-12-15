estDiffMean1<-function(avg1,avg2,pVar1,pVar2,n1,n2,alpha) {
	temp<-(pVar1/n1) + (pVar2/n2)
	temp<-sqrt(temp)	#calculation avg population SD
	qvalue<-qnorm(alpha/2)
	temp<-temp*qvalue
	interval<-c(avg1-avg2 + temp,avg1-avg2-temp)	#calculation interval
	return(interval)	#returning interval value
}


avg1<-readline("Average Mean of Sample for 1st sample : ")
pVar1<-readline("Population Variance for 1st sample: ")
n1<-readline("Sample Size for 1st sample: ")

avg2<-readline("Average Mean of Sample for 2nd sample: ")
pVar2<-readline("Population Variance for 2nd sample: ")
n2<-readline("Sample Size for 2nd sample: ")

alpha<-readline("Level of Significance : ")
estDiffMean1(avg1,avg2,pVar1,pVar2,n1,n2,alpha)
