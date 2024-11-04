calc_compartment_percent <- function(total_counts_df = total_counts, compartment = immune, compartment_name = "immune") {
  total_counts_compartment <- total_counts[, compartment]
  total_counts_compartment <- (total_counts_compartment / rowSums(total_counts_compartment)) * 100
  
  total_counts_compartment$ID <- sums[, 1]
  names(total_counts_compartment)[names(total_counts_compartment) == "ID"] <- counts_per_x
  total_counts_compartment["Type"] <- compartment_name
  
  return(total_counts_compartment)
}