selection_sort <- function(x)
{
      # length of array
    n <- length(x)
      for (i in 1 : (n - 1))
    {
          # assume element at i is minimum
        min_index <- i
          for (j in (i + 1) : (n))
        {
              # check if element at j is smaller
              # than element at min_index
            if (x[j] < x[min_index]) {
                  # if yes, update min_index
                min_index = j
            }
        }
          # swap element at i with element at min_index
        temp <- x[i]
          x[i] <- x[min_index]
          x[min_index] <- temp
    }
    x
}
 
# take 19 random numbers between 1 - 100
arr <- sample(1 : 100, 19)

# print sample array
print("Original Array : ");
arr

# sort the array and store the result
# in sorted_array
sorted_array <- selection_sort(arr)
 
# print sorted_array
print("Sorted Array : ");
sorted_array
