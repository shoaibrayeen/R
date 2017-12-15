estDiffProportion<-function(fav1,n1,fav2,n2,alpha) {
	prob1<-fav1/n1		#calculating favourable probabilty
	prob2<-fav2/n2		#calculating favourable probabilty
	temp2<- (prob1*(1-prob1)/n1) + (prob2*(1-prob2)/n2)
	temp2<-sqrt(temp2)
	qvalue<-qnorm(alpha/2)
	temp2<-temp2*qvalue
	interval<-c( prob1 - prob2 + temp2 , prob1 - prob2 - temp2 ) #calculation interval
	return(interval)	#returning interval value
}


fav1<-readline("Favourable items for sample 1 : ")
n1<-readline("Total Items for sample 1 : ")

fav2<-readline("Favourable items for sample 2 : ")
n2<-readline("Total Items for sample 2 : ")

alpha<-readline("Level of Significance : ")

estDiffProportion(fav1,n1,fav2,n2,alpha)
