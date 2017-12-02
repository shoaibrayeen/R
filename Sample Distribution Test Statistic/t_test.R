#avg=xbar
#populationSD is variable name
#n is total value
#alpha is level of significance


#Take a flag value like if it's value equal to 0 then h1 '=' ,if 1 then h1 '>' and if 2  then '<'
#if it's one tail , pass alpha/2 while calling the function and ask to user regarding one tail things

zTest<-function(avg,mean,populationSD,n,alpha,flag) {
	temp<-sqrt(n)
	z<-temp*(avg-mean)/populationSD
	pvalue<-pnorm(z)
	if( z > 0 ) {
		pvalue<-1 - pvalue
	}
	if( flag == 0 ) {     #flag==0 means two tail cases
		pvalue<-2*pvalue     #two tail case
	}
	if( pvalue < alpha ) {
		return("Reject H0") #reject null hypothests
	}
	return("Accept H0")	#accept H0
}


#-------------------------------------------------------------------------------------------------#
tTest<-function(avg,mean,sSD,n,alpha,flag) {
	if ( n < 30 ) {
		temp<-sqrt(n)
		t<-temp*(avg-mean)/sSD #t value
		pvalue<-pt(t,n-1)
		if( t > 0 ) {
			pvalue<-1-pvalue
		}
		if(flag == 0 ) {
			pvalue<-2*pvalue
		}
		if(pvalue < alpha ) {
			return("Reject H0") #reject null hypothests
		}
		return("Accept H0")	
	}
	else {
		zTest(avg,mean,sSD,n,alpha,flag)
	}
}


avg<-readline("Average Mean of Sample : ")
mean<-readline("Average Mean of Sample For H0 : ")
sSD<-readline("Sample SD : ")
n<-readline("Sample Size : ")
alpha<-readline("Level of Significance : ")
flag<-readline("0 if two tail otherwise anything : ")

tTest(avg,mean,sSD,n,alpha,flag)
