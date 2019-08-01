table <- read.csv("C:/Users/Preethi's Laptop/Documents/R/datasciencecoursera/Cleaning_datascience/getdata_data_ss06hid.csv")
agricultureLogical <- table$ACR == 3 & table$AGS == 6
which(agricultureLogical)