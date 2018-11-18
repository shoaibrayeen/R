#if it's one tail , pass alpha/2 while calling the function and ask to user regarding one tail things
#need to calculate sample variance to compute chisquare value

chiSquaretest<-function(sVariance , pVariance ,n ,alpha,flag) {
	df<-ln-1
	chi<-df*sVariance/pVariance
	pvalue<-pchisq(chi,df)
	if(flag==0) {
		pvalue<-2*pvalue
	}
	if(pvalue < alpha ) {
			return("Reject H0") #reject null hypothests
		}
	return("Accept H0")	#accept H0
}


sVariance<-readline("Sample Variance : ")
pVariance<-readline("Population Variance for H0 : ")
n<-readline("Sample Size : ")
alpha<-readline("Level of Significance : ")
flag<-readline("0 if two tail otherwise anything : ")

chiSquaretest(sVariance , pVariance ,n ,alpha,flag) 
