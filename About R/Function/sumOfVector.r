# Vector Input
readInput <- function(){
  j <- 0
  size <- readline("size : ")
  array<-as.numeric()
  while( j < size ) {
    y<-as.numeric(readline("Enter Data : "))
    array<-as.numeric(c(array,y))
    j <- j+1
  }
  return(array)
}

sumOfArray <- function(array) {
  len <- length(array)
  #return(sum(array))
  i <- 1
  sumVar <- 0
  while ( i <= len ) {
    sumVar = sumVar + array[i]
    i <- i + 1
  }
  return(sumVar)
}

array <-readInput()
print(sumOfArray(array))
