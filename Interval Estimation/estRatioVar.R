estRatioVar<-function(sVar1,n1,pVar1,sVar2,n2,pVar2,alpha) {
	qvalue1<-qf(1-(alpha/2) , n1-1 , n2-1)	#calculation f value for df1=n1-1 and df2=n2-1
	qvalue2<-qf(1-(alpha/2) , n2-1 , n1-1)	#calcualtion f value for df1=n2-1 and df2=n1-1
	temp<-(sVar1/sVar2)*(1/qvalue1)
	interval<-temp
	temp<-(sVar1/sVar2)*(qvalue2)
	interval<-c(interval,temp)	#calculation interval
	return(interval) 	#returning interval value
}

sVar1<-readline("Sample Variance for 1st group: ")
n1<-readline("Sample Size 1st group : ")
pVar1<-readline("Population Variance 1st group : ")

sVar2<-readline("Sample Variance 2nd group: ")
n2<-readline("Sample Size 2nd group : ")
pVar2<-readline("Population Variance 2nd group : ")
alpha<-readline("Level of Significance : ")

estRatioVar(sVar1,n1,pVar1,sVar2,n2,pVar2,alpha)
