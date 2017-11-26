

#prob=probability of success
# x = 1 -> success
# x = 0 -> failure

bernoulli<-function(prob,x) { #x is boolean
	if(x==1) {
		return (prob)
	}
	else {
		return (1-prob)	
	}
}

prob<-readline("Probability of Success : ")
x<-readline("x (1 for success and 0 for failure) : ")

bernoulli(prob,x)
