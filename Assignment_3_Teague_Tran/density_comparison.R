
#@param d = density (g/mL)
#@param density threshold (water) = 1 g/mL


density_comparison <- function(d){

  #error checking
  if(length(d) < 10)
    return("Too little density values")

  if(any(d <= 0))
    return("Density can't be negative or 0!!!")

  if(any(d > 9999))
    return ("That's too dense!!!")

  # use a for loop to keep going until we find a substance less dense than water

  #use a counter to prevent an infinite loop of high-density liquids

  #display information about the density of the liquid

  #compute mean density
  mean_density = mean(d)

  density = case_when (
    mean_density > 1 ~ "Mean density is denser than water",
    mean_density < 1 ~ "Mean density is less dense than water",
    mean_density = 1 ~ "Mean density is equally as dense as water")

  return(density)
}



