library(readxl)
library(writexl)

project_path <- "G:/projects/Cypher"
data_files_path <- paste(project_path, "Registration", sep="/")

all_files <- list.files(data_files_path, pattern="*.xls*", all.files=FALSE, full.names=FALSE)

data = NULL
for (file in all_files){
  print(paste("Processing file: ", file_with_path))
  
  # Clean up variables
  current_data_raw = NULL
  current_data_raw_with_filename = NULL
  current_data_ready_to_merge = NULL
  
  # Create the file name including path
  file_with_path <- paste(data_files_path,file,sep="/")
  
  current_data_raw <-  readxl::read_excel(file_with_path)                     # Read excel
  current_data_raw_with_filename <- cbind("File" = file, current_data_raw)    # Add file name as first column
  current_data_ready_to_merge <- current_data_raw_with_filename[1:9]          # Remove extra columns
  data <-  rbind(data, current_data_ready_to_merge)                           # Merge
}

# export dataframe to excel
export_filename = "consolidated_registration_data.xlsx"
write_xlsx(data, paste(project_path,export_filename,sep="/"))
