# use a for loop to keep going until we find a substance less dense than water

#use a counter to prevent an infinite loop of high-density liquids

num_lowdensity <- function(d, density_threshold = 1){

#error checking
if(length(d) < 10)
  return("Too little density values")

if(any(d <= 0))
  return("Density can't be negative or 0!!!")

if(any(d > 9999 ))
  return ("That's too dense!!!")

#display information about the density of the liquid
lowerdense_count = 0
total_count = 1
#we want to keep the loop going until we get 10 values
while ( (lowerdense_count < 10) && (total_count <= length(d))) {
  if (d[total_count] > density_threshold)
    # we have another day with greater than 10 so accumulate
    lowerdense_count = lowerdense_count+1
  else
    # we have to start over
    lowerdense_count = lowerdense_count
  # remember with while loops we need to increment our counter
  total_count = total_count+1
}
return(sprintf("The amount of samples with densities less than water: %d", lowerdense_count))

}

