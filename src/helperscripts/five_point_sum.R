# function for five point summary 
five_point_sum <- function(data) {
  
  min.rt <- min(data, na.rm = TRUE)
  
  data <- sort(data)
  lower.rt <- data[1:round(length(data)/2)] 
  lower.h.rt <- median(lower.rt)
  
  median.rt <- median(data, na.rm = TRUE)
  mean.rt <- mean(data, na.rm = TRUE)
  
  data <- sort(data)
  upper.rt <- data[round((length(data)/2)+1):length(data)] 
  upper.h.rt <- median(upper.rt)
  
  # Max
  max.rt <- max(data, na.rm = TRUE)
  
  fivenumber <- cbind(min.rt, lower.h.rt,
                      median.rt, mean.rt, upper.h.rt,
                      max.rt)
  colnames(fivenumber) <- c("Min", "Lower-hinge",
                            "Median", "Mean", "Upper-hinge", "Max")
  
  fivenumber
}