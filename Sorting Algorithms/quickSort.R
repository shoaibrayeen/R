
# function to sort the values
quickSort <- function(arr) {
   
  # Pick a number at random
  random_index <- sample(seq_along(arr), 1);
  pivot <- arr[random_index]
  arr <- arr[-random_index]
   
  # Create array for left and right values.
  left <- c()
  right <- c()
   
  # Move all smaller and equal values to the
  # left and bigger values to the right.
  # compare element with pivot
  left<-arr[which(arr <= pivot)]
  right<-arr[which(arr > pivot)]
   
  if (length(left) > 1)
  {
    left <- quickSort(left)
  }
  if (length(right) > 1)
  {
    right <- quickSort(right)
  }
   
  # Return the sorted values.
  return(c(left, pivot, right))
}
 
 
# take 19 random numbers between 1 - 100
arr <- sample(1 : 100, 19)

# print sample array
print("Original Array : ");
arr

# sort the array and store the result
# in sorted_array
sorted_array <- quickSort(arr)
 
# print sorted_array
print("Sorted Array : ");
sorted_array
