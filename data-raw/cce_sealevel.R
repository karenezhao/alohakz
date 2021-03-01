## code to prepare `cce_sealevel` dataset goes here

# Attach packages
library(usethis)
library(metajam)

# Save link location for the data package:
cce_url <- "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-cce.153.7&entityid=812abbef1190868158d4847da0f33fa1"

# Download the data package with metajam
cce_download <- download_d1_data(data_url = cce_url, path = tempdir(), dir_name="cce_sealevel")

# Read in data
cce_files <- read_d1_files(cce_download)
cce_sealevel <- cce_files$data %>%
  clean_names()

usethis::use_data(cce_sealevel, overwrite = TRUE)
