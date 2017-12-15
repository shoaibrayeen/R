#flag=0 '=' case
#flag=1 '<' case
#flag=2 '>' case
data<-c(97.5,95.2,97.3,96.0,96.8,100.3,97.4,95.3,93.2,99.1,96.1,97.6,98.2,98.5,94.9)
signTest<-function(data , mean , alpha , flag ) {
	x<-0				
	discard<-0			
	n<-length(data)			# total values
	for ( i in 1:n ) {
		if( data[i] > mean ) {
			x<-x+1			#count values > than mean
		}
		if( data[i] == mean ) {
			discard<-discard + 1	#count values = to mean
		}
	}
	n<- n - discard				#total values after discarding
	if( n < 30 ) {				# if n < 30 use binomial distribution
		temp<-binomial( x , n , 0.5) 	#using binomial function
		if(flag==1) {
			temp<-1-temp
		}
		if ( flag==0 ) {
			temp<-2*temp
		}
		if(temp < alpha) {
			return("Reject H0")
		}
		return("Accept H0")
	}
	else {				# if n>=30 , use normal distribution
		pSD<-sqrt(n*0.25)
		z<-(x-n*0.5)/pSD
		pvalue<-pnorm(z)
		if ( z > 0 ) {
			pvalue<-1-pvalue
		}
		if ( flag==0 ) {
			pvalue<-2*pvalue
		}
		if( pvalue < alpha ) {
			return("Reject H0") #reject null hypothests
		}
    
		return("Accept H0")	#accept H0
	}
}

signTest(data ,98.5 , 0.05 , 0 )
