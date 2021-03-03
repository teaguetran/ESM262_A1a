# calculate density of unknown liquids

calculate_density <- function(m, V, density_threshold = 1){

  if(length(m) != length(V))
    return("You must match the number of mass and volume values.")

  if(any(m <= 0))
    return("Mass can't be negative or 0!!!")

  if(any(V <= 0))
    return ("That's too dense!!!")

  d = m/V
  return(d)
}
