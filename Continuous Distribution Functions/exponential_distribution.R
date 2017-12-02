#Exponential distribution
#alpha and beta are the parameters of gamma distribution
# low and high are the integration limits (low<high)
gamma<-function( alpha , beta ,low , high ) {
	gfun<-function(x){
		temp<-(x**(alpha-1))*exp(-x)
		return temp
	}
	galpha<-integrate(gfun,0,Inf)$value	#calculation gamma of alpha

	fun<-function(x) {
		gvalue<-beta**alpha
		gvalue<-(1/gvalue)*(galpha)
		gvalue<-gvalue*(x**(alpha-1))*(exp(-x/beta)) #gamma function
		return(gvalue)
	}
	
	if(low < 0 ) {
		low=0
	}
	gammaIntegrate<-integrate(fun , low , high)$value
	gammaIntegrate<-formatC(gammaIntegrate,digits=6,format="f")
	return(gammaIntegrate)
}



# low and high are the integration limits (low<high)
# special case of gamma distribution alpha=1 and beta=1/lambda

exponential<-function( lambda ,low , high ) {
	gamma(1,1/lambda,low,high)	
}


lambda<-readline("Parameter Lambda : ")
low<-readline("Lower Limit to integrate Function : ")
high<-readline("Upper Limit to integrate Function : ")

exponential( lambda ,low , high )
