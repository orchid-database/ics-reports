# This script inokes the RMarkdown report generation process
# HL 06-07-2021
#
library(tidyverse)
library(readxl) #package for reading Excel files
library(fs) #package for file operations
library(zip) #File for creating zip archives
library(rJava)
library(xlsx)
library(zoo)

start.time <- Sys.time()


#Set file output path
reportOutputPath <-  "ICS_reports"
# File import
file="Social Prescribing Report_1.1.xlsx"
colnames_ICS_A = c("region_index",	"region_name",	"ics_name",	"fiscal_year",	"category",	"ref_std",	"ref_rate",
                   "ref_ci_low",	"ref_ci_high",	"dec_std",	"dec_rate",	"dec_ci_low",	"dec_ci_high")

coltypes_ICS_A =  c("numeric",	"text",	"text",	"text",	"text",	"numeric",	"numeric",	"numeric",	"numeric",	
                    "numeric",	"numeric",	"numeric",	"numeric")
dfICS<-read_excel(file,"ICS report - Group A", col_names = colnames_ICS_A, col_types = coltypes_ICS_A, skip=1)

##Getting a list of ICSs
ics_list_temp <- as.vector(dfICS %>%
  select(ics_name) %>%
  distinct(ics_name))


ics_list <- dplyr::pull(ics_list_temp, ics_name) 

##For excel import
dfICSRepA_excel_import <-read_excel(file,"ICS report - Group A")
dfICSRepCD_excel_import <-read_excel(file,"ICS report - Group C and D")


# Iterate through the ICS list and invoke RMarkdown reports



for(icsx in ics_list)
{ 

    print(icsx)
  #icsx = "Cumbria and North East ICS"
  
    ics_filepath = paste0(reportOutputPath,"/",gsub(" ", "_",icsx))
    print(ics_filepath)

    rmarkdown::render("ICS-report1-20210706.Rmd",
                      params = list(ics = icsx),
                      output_dir = ics_filepath,
                      output_file = paste0("1-social-need-summary-",gsub(" ", "_",icsx),".pdf")
                      )

    rmarkdown::render("ICS-report2-20210706.Rmd",
                      params = list(ics = ics),
                      output_dir = ics_filepath,
                      output_file = paste0("2-social-need-full-",gsub(" ", "_",ics),".pdf")
    )

    rmarkdown::render("ICS-report3-20210706.Rmd",
                      params = list(ics = ics),
                      output_dir = ics_filepath,
                      output_file = paste0("3-interventions-summary-",gsub(" ", "_",ics),".pdf")
    )

    rmarkdown::render("ICS-report4-20210706.Rmd",
                      params = list(ics = ics),
                      output_dir = ics_filepath,
                      output_file = paste0("4-interventions-full-",gsub(" ", "_",ics),".pdf")
    )
    
    #generate ICS specific data file
    
    dfICSSubset<- dfICSRepA_excel_import %>% 
      filter(ICSNameEngland ==icsx)
    
    write.xlsx(dfICSSubset, file = paste0(ics_filepath,"/","ICS-data-July2021-",icsx,".xlsx"),
               sheetName = "ICS report - Group A", append = FALSE)
    dfICSSubset<- dfICSRepCD_excel_import  %>% 
      filter(ICSNameEngland ==icsx)
    
    write.xlsx(dfICSSubset, file = paste0(ics_filepath,"/","ICS-data-July2021-",icsx,".xlsx"),
               sheetName = "ICS report - Group C and D", append = TRUE)

}

#timing code executing
end.time <- Sys.time()

elapsed.time <- round((end.time - start.time), 3)

print(elapsed.time)
