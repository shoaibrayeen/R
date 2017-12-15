estProportion<-function(fav , n , alpha ) {
	prob<-fav/n			#calculating favourable probabilty
	temp2<-prob*(1-prob)/n
	temp2<-sqrt(temp2)
	qvalue<-qnorm(alpha/2)
	temp2<-temp2*qvalue
	interval<-c( prob + temp2 , prob - temp2 ) 	#calculation interval
	return(interval)	#returning interval value
}


fav<-readline("Favourable items : ")
n<-readline("Total Items : ")
alpha<-readline("Level of Significance : ")

estProportion(fav , n , alpha )
