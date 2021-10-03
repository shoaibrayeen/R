insertion_sort <- function(x)
{
      # calculate the length of array
    n <- length(x)
      # outer loop
    for (i in 2 : (n))
    {
          # store first element as key
        key = x[i]
        j   = i - 1
          # compare key with elements for
          # its correct position
        while (j > 0 && x[j] > key)
        {
          x[j + 1] = x[j]
          j = j - 1
        }
      # Place key at its correct position
      x[j + 1] = key
    }
      # return sorted array
    x
}
 
# take 19 random numbers between 1 - 100
arr <- sample(1 : 100, 19)

# print sample array
print("Original Array : ");
arr

# sort the array and store the result
# in sorted_array
sorted_array <- insertion_sort(arr)
 
# print sorted_array
print("Sorted Array : ");
sorted_array
