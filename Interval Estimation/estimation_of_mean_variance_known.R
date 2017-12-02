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

avg<-readline("Average Mean of Sample : ")
populationSD<-readline("Population SD : ")
n<-readline("Sample Size : ")
alpha<-readline("Level of Significance : ")

estMean1(avg,populationSD,n,alpha)
