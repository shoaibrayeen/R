#uniform continous distribution
# alpha beta is the limits where uniform distribution lies
# low and high are the integration limits (low<high)
uniform<-function(alpha, beta ,low , high ) {
	result<-(b-a)/(beta-alpha)
	result<-formatC(result,digits=6,format="f")
	return(result)
}



alpha<-readline("Lower Limit of Function : ")
beta<-readline("Upper Limit of Function : ")

low<-readline("Lower Limit to integrate Function : ")
high<-readline("Upper Limit to integrate Function : ")

uniform(alpha, beta ,low , high )
