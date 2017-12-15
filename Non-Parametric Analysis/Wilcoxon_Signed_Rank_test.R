#flag=0 '=' case
#flag=1 '<' case
#flag=2 '>' case
data<-c(97.5,95.2,97.3,96.0,96.8,100.3,97.4,95.3,93.2,99.1,96.1,97.6,98.2,98.5,94.9)
signedRank<-function(data , mean , alpha,flag ) {
	sortDif<-sort(abs(data-mean))
	n<-length(data)
	negcount<-0  #Negative Rank
	poscount<-0  #Positive Rank
	discard<-0   #number of elements which are discarded
	count1<-0    #for discarded element it must be subtracted from the total value for Negative Rank
	count2<-0    #for discarded element it must be subtracted from the total value for positive Rank
	for(i in 1:n) {
		if(data[i]==mean){
			discard<-discard+1	#calculating discarded element
		}
	}
	for(i in 1:n) {
		for( j in (1+discard):n) {
			if(sortDif[j]!=0) {
				if(abs(data[i]-mean)==sortDif[j] && (data[i]-mean)<0 ) {
					negcount<-negcount+j #calculating negative rank
					count1<-count1+1
					break
				}
				else if(abs(data[i]-mean)==sortDif[j] && (data[i]-mean)>0 ) {
					poscount<-poscount+j #calculating positive rank
					count2<-count2+1
					break
				}
			}
		}
	}
	negcount<-negcount-count1*discard
	poscount<-poscount-count2*discard
	calculated<-0
	if(flag==0) {
		qvalue<-qsignrank(alpha,n-discard-1) #two Tail
		calculated<-min(negcount,poscount)
	}
	else if(flag==1) {
		qvalue<-qsignrank(2*alpha,n-discard-1) #left tail
		calculated<-poscount
	}
	else if(flag==2) {
		qvalue<-qsignrank(2*alpha,n-discard-1) #right tail
		calculated<-negcount
	}
	if(calculated<=qvalue) {
			return("Reject Null Hypothesis")
		}
	return("Don't Reject Null Hypothesis")
}


signedRank(data,98.5,0.05,0)
