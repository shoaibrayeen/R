readInput<-function() {
	j<-0
	n<-readline("size : ")
	array<-as.numeric()
	while(j<n) {
		y<-as.numeric(readline("Enter Data : "))
		array<-as.numeric(c(array,y))
		j<-j+1
	}
	return(array)
}

pareto_chart<-function(data){

  library(qcc)

  # defect <- c(80, 27, 66, 94, 33)
  # names(defect) <- c("price code", "schedule date", "supplier code", "contact num.", "part num.")
  # pareto.chart(defect, ylab = "Error frequency")
  # pareto.chart(defect, ylab = "Error frequency", xlab = "Error causes", las=1)
  # pareto.chart(defect, ylab = "Error frequency", col=rainbow(length(defect)))
  # pareto.chart(defect, cumperc = seq(0, 100, by = 5), ylab2 = "A finer tickmarks grid")
  
  pareto.chart(data, ylab = "Frequency")
}

data<-readInput()
pareto_chart(data)
