#  load packages

library(tidyverse)
library(janitor)
library(readxl)

#  Download 2021 district demographics file from DESE comprehensive data site https://apps.dese.mo.gov/MCDS/Home.aspx

download.file(url = "https://apps.dese.mo.gov/MCDS/FileDownloadWebHandler.ashx?filename=0c9fea60-5278District%20Demographic%20Data.xlsx",
              mode = "wb",
              destfile = "data-raw/district-demographics-2021.xlsx")

# Import data 

district_demographics <- read_excel(path = "data-raw/district-demographics-2021.xlsx",
                               sheet = "Sheet1")
