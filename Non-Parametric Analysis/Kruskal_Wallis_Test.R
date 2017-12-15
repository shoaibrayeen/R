data1<-c(94,88,91,74,87,97)
data2<-c(85,82,79,84,61,72,80)
data3<-c(89,67,72,76,69)
#implemented for three dataset
kruskal_wallis<-function(data1,data2,data3,alpha) {
	temp<-c(data1,data2,data3)
	temp<-sort(temp) #sort temp
	n1<-length(data1) #length of 1st data
	n2<-length(data2) #length of 2nd data
	n3<-length(data3) #length of 2nd data
	n<-n1+n2+n2          #total data
	R1<-0
	R2<-0
	R3<-0
	for(i in 1:n) {
		for(j in 1:n) {
			if(temp[i]==data1[j] && j<=n1 && i<=(n1+n2+n3)) {
				R1<-R1+i #calculating R1
			}
			if(temp[i]==data2[j] && j<=n2 && i<=(n1+n2+n3)) {
				R2<-R2+i #calculating R2
			}
			if(temp[i]==data3[j] && j<=n3 && i<=(n1+n2+n3)) {
				R3<-R3+i #calculating R3
			}
		}
	}
	H<-(12/(n*(n+1)))*( (R1**2)/n1  +  (R2**2)/n2   + (R3**2)/n3 ) - 3*(n+1) #calculating H value
	qvalue<-qchisq(1-alpha,2)						#calculating qvalue
	if(qvalue <= H) {
			return("Reject Null Hypothesis")
	}
	return("Don't Reject Null Hypothesis")
}

kruskal_wallis(data1,data2,data3,0.05)
