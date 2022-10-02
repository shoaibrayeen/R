factorial <- function(number) {
  if ( number == 0) {
    return(1)
  }
  if ( number < 0 ) {
    return("Factorial Not Possible")
  }
  result <- 1
  for ( i in 1:number) {
    result = result * i 
  }
  return(result)
}

# User Input
number <-readline("Enter Element : ")
factorial(number)
