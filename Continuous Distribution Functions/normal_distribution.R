
#normal distribution
# low and high are the integration limits (low<high)
normal<-function( mean , psd ,low , high) {
	fun<-function(x) {
		norm<-(exp((-0.5)*((x-mean)/psd)**2))/(psd*((2*pi)**0.5)) #normal function
		return(norm)
	}
	normintegrate<-integrate(fun , low , high)$value
	normintegrate<-formatC(normintegrate,digits=6,format="f")
	return(normintegrate)
}




mean<-readline("Mean : ")
psd<-readline("Standard Deviavtion : ")

low<-readline("Lower Limit to integrate Function : ")
high<-readline("Upper Limit to integrate Function : ")

normal( mean , psd ,low , high)
