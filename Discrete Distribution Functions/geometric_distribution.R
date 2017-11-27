# The geometric distribution gives the probability that the first occurrence of success requires k
# independent trials, each with success probability p. If the probability of success on each trial is
# p, then the probability that the kth trial (out of k trials) is the first success is
#  P ( X =  k ) = ( (1 - p)^(k-1) ) * p


#probability=probability of success
#k= total number of trials


geometric_distribution<-function(k,probability) {
	return(probability * ((1-probability)**(k-1))))
}

k<-readline("total number of trials : ")

probability<-readline("probability of success : ")

geometric_distribution(k,probaility)


