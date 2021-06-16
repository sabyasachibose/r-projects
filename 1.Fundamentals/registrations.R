options(scipen = 100) 

library(readxl)
library(writexl)

merge_files <- function(base_path, all_files, number_of_columns, column_names) {
  data <- NULL
  
  for (file in all_files){
    # skip excel temporary files which are created when file is open
    if(startsWith(file, "~")) {
      next
    }
    
    # Clean up variables
    current = NULL
    
    
    file_with_path <- paste(base_path,file,sep="/")               # Create the file name including path
    print(paste("Processing file: ", file_with_path))             # Print filename on console

    # Read and merge content
    current <-  readxl::read_excel(file_with_path)                # Read excel
    colnames(current) <- column_names                             # Change column names to be consistent across files
    current$"Referred by" <- NULL                                 # Referred by column is present in few files. Remove for now
    current <- cbind("File" = file, current)                      # Add file name as first column
    current <- current[1:number_of_columns]                       # Remove extra columns
    data <-  rbind(data, current)                                 # Merge
  }
  
  return(data)
}

project_path <- "/Users/sabyasachibose/projects/cypher"

# -----------------------------Registration----------------------------------------------------------------------------------------------------------------------------
# merge registrations
registration_files_path <- paste(project_path, "Registration", sep="/")
all_registration_files <- list.files(registration_files_path, pattern="*.xls*")
registration_column_names <- c("Timestamp", "Email Address",	"Full Name", "Location", "Phone Number", "Qualification", "Designation", "Organization")
registrations = merge_files(registration_files_path, all_registration_files, 9, registration_column_names)

# identify additional information from data
registrations$course_date = ""
registrations$course_name = ""
registrations$Country = ""

# add column for country
# unique(registrations$Location)
registrations$Country = ifelse(toupper(registrations$Location) == "INDIA", "India", registrations$Country)
registrations$Country = ifelse(startsWith(registrations$"Phone Number", "+91"), "India", registrations$Country)

registrations$Country = ifelse(toupper(registrations$Location) == "SRI LANKA", "Sri Lanka", registrations$Country)
registrations$Country = ifelse(startsWith(registrations$"Phone Number", "+94"), "Sri Lanka", registrations$Country)

# export dataframe to excel
export_filename = "consolidated_registration_data.xlsx"
write_xlsx(registrations, paste(project_path,export_filename,sep="/"))

# -----------------------------Certificate----------------------------------------------------------------------------------------------------------------------------
# merge certifications
certificate_files_path <- paste(project_path, "Certificate", sep="/")
all_certificate_files <- list.files(certificate_files_path, pattern="*.xls*")
certificate_column_names <- c("Timestamp", "Email Address",	"Full Name", "Phone Number", "Payment Receipt")
certificate = merge_files(certificate_files_path, all_certificate_files, 6, certificate_column_names)

# export dataframe to excel
export_filename = "consolidated_certificate_data.xlsx"
write_xlsx(certificate, paste(project_path,export_filename,sep="/"))
