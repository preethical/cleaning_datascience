library(data.table)
readdata <- data.table::fread("C:/Users/Preethi's Laptop/Documents/R/datasciencecoursera/Cleaning_datascience/getdata_data_ss06hid.csv")
x <- readdata[VAL==24, .N]
