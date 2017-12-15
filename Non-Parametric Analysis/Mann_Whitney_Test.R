data1<-c(14.9,11.3,13.2,16.6,17.0,14.1,15.4,13.0,16.8)
data2<-c(15.2,19.8,14.7,18.3,16.2,21.2,18.9,12.2,15.3,19.4)
mann_whitney<-function(data1,data2,alpha,flag) {
	temp<-c(data1,data2)
	temp<-sort(temp) #sort temp
	n1<-length(data1) #length of 1st data
	n2<-length(data2) #length of 2nd data
	n<-n1+n2          #total data
	w1<-0
	w2<-0
	for(i in 1:n) {
		for(j in 1:n) {
			if(temp[i] == data1[j] && j<=n1) {
				w1<-w1+i #calculating w1
			}
			if(temp[i]==data2[j] && j<=n2) {
				w2<-w2+i #calculating w2
			}
		}
	}
	calculated<-0
	u1<-w1-(n1*(n1+1)/2) #calculating u1
	u2<-w2-(n2*(n2+1)/2) #calculating u2
	if(flag==0) {
		qvalue<-qwilcox(alpha,n1-1,n2-1) #two Tail
		calculated<-min(u1,u2)
	}
	else if(flag==1) {
		qvalue<-qwilcox(2*alpha,n1-1,n2-1) #left tail
		calculated<-u1
	}
	else if(flag==2) {
		qvalue<-qwilcox(2*alpha,n1-1,n2-1) #right tail
		calculated<-u2
	}
	if(calculated<=qvalue) {
			return("Reject Null Hypothesis")
		}
	return("Don't Reject Null Hypothesis")
}

mann_whitney(data1,data2,0.05,1)
