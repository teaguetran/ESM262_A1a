# calculate density of unknown liquids

calculate_density <- function(m, V, density_threshold = 1){
  d = m/V
  if(length(m) != length(V))
    return("You must match the number of mass and volume values.")

  if(m <= 0)
    return("Mass can't be negative or 0!!!")

  if(V <= 0)
    return ("That's too dense!!!")
  return(d)
}
