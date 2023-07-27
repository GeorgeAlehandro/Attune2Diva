library(flowCore)

convert_to_BD_FacsDiva <- function(inputFile, outputFile) {
  # Read FCS file
  fcs_data <- read.FCS(inputFile, emptyValue = FALSE)
  
  # Modify SRC description
  fcs_data@description$'SRC' <- fcs_data@description$'ORIGINALGUID'
  
  # Find indices of names matching "max" and "P\d+R" in the description
  indices_max <- grep("max", names(fcs_data@description))
  indices_PnR <- grep("P\\d+R$", names(fcs_data@description))
  
  # Compute the maximum value among these parameters
  max_value_max <- max(unlist(fcs_data@description[indices_max]))
  max_value_PnR <- max(unlist(fcs_data@description[indices_PnR]))
  
  # Set these parameters to their respective maximum value
  for (index in indices_max){
    fcs_data@description[[index]] <- max_value_max
  }
  for (index in indices_PnR){
    fcs_data@description[[index]] <- max_value_PnR
  }
  
  # Write the result to a new FCS file
  write.FCS(fcs_data, outputFile)
}