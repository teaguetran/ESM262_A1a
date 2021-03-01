density_comparison <- function(d, density_threshold = 1){

  #error checking
  if(length(d) < 10)
    return("Too little density values")

  if(d <= 0)
    return("Density can't be negative or 0!!!")

  if(d > 9999 )
    return ("That's too dense!!!")

  # use a for loop to keep going until we find a substance less dense than water

  #use a counter to prevent an infinite loop of high-density liquids

  lowerdense_count = 0
  total_count = 0
  #we want to keep the loop going until we either get 10 values or a value that is less than 1 mg/L
  while ( lowerdense_count < 5 &  total_count < 10) {
    if(d < density_threshold)
      lowerdense_count = lowerdense_count + 1 &
        total_count = total_count + 1
        else
          total_count = total_count + 1

  }
  #display information about the density of the liquid

  #compute mean density
  mean_density = mean(d)

  if (lowerdense_count <= 5 & total_count <= 10) {
    density = case_when (
      mean_density > 1 ~ "Mean density is denser than water",
      mean_density < 1 ~ "Mean density is less dense than water",
      mean_density = 1 ~ "Mean density is equally as dense as water")
  } else
    density = "Too little values"

  return(density)
}
