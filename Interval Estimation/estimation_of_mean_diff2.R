estDiffMean1<-function(avg1,avg2,pVar1,pVar2,n1,n2,alpha) {
	temp<-(pVar1/n1) + (pVar2/n2)
	temp<-sqrt(temp)	#calculation avg population SD
	qvalue<-qnorm(alpha/2)
	temp<-temp*qvalue
	interval<-c(avg1-avg2 + temp,avg1-avg2-temp)	#calculation interval
	return(interval)	#returning interval value
}

estDiffMean2<-function(avg1,avg2,sVar1,sVar2,n1,n2,alpha) {
	if ( n1 < 30  && n2 < 30 ) {	#if n1 < 30 & n2 < 30  , then use t value
		qvalue<-qt(alpha/2,n1+n2-2)
		temp<-(1/n1)+(1/n2)
		temp<-sqrt(temp)
		avgSD<-((n1-1)*sVar1) + ((n2-1)*sVar2)
		avgSD<-sqrt((avgSD)/(n1+n2-2))      # calculating average Sample SD
		temp<-temp*avgSD*qvalue
		interval<-c(avg1-avg2 + temp,avg1-avg2-temp)	#calculation interval
		return(interval)	#returning interval value
	}
	else {
		estDiffMean1(avg1,avg2,sVar1,sVar2,n1,n2,alpha)	# if n1 >= 30 & n2 >=30, then use z value
	}
}

avg1<-readline("Average Mean of Sample for 1st sample : ")
sVar1<-readline("Sample Variance for 1st sample: ")
n1<-readline("Sample Size for 1st sample: ")

avg2<-readline("Average Mean of Sample for 2nd sample: ")
sVar2<-readline("Sample Variance for 2nd sample: ")
n2<-readline("Sample Size for 2nd sample: ")

alpha<-readline("Level of Significance : ")
estDiffMean2(avg1,avg2,pVar1,pVar2,n1,n2,alpha)
