
density_while_loop <- function(d, density_threshold = 1){

#error checking
if(length(d) < 10)
  return("Too little density values")

if(d <= 0)
  return("Density can't be negative or 0!!!")

if(d > 9999 )
  return ("That's too dense!!!")
#display information about the density of the liquid
lowerdense_count = 0
total_count = 0
#we want to keep the loop going until we either get 10 values or a value that is less than 1 mg/L
while ( lowerdense_count < 5 & total_count < 10) {
  if(d < density_threshold)
    lowerdense_count = lowerdense_count + 1 &
      total_count = total_count + 1
      else
      total_count = total_count + 1
}
return("The amount of samples with densities less than water:")
return(length(lowerdense_count))
}

