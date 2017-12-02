fTest<-function(sVar1,sVar2,n1,n2,alpha) {
	f<-sVar1/sVar2
	qvalue1<-qf(alpha,n1-1,n2-1)
	qvalue2<-qf(1-alpha,n1-1,n2-1)
	if(f > qvalue1  && f < qvalue2 ) {
		return("Accept H0") #reject null hypothests
	}
	return("Reject H0")
}
#True for All Hypothesis pVar1=pVar2
sVar1<-readline("Sample Variance of 1st Data: ")
sVar2<-readline("Sample Variance of 2nd Data: ")
n1<-readline("Sample Size of 1st Data: ")
n2<-readline("Sample Size of 2nd Data: ")
alpha<-readline("Level of Significance : ")

fTest(sVar1,sVar2,n1,n2,alpha)
