KM_plot_prep <- function(df_KM_plots = df_KM_plots, x = "test") {
  df_test <- df_results %>% filter(Cell_Type == x)
  df_KM_plots[,paste0(x,"_group")] <- ifelse(df_KM_plots[,x] > sum(as.numeric(df_test$Median)), "high", "low")
  df_KM_plots[,paste0(x,"_group")] <- as.factor(df_KM_plots[, paste0(x,"_group")][[1]])
  return(df_KM_plots)
}