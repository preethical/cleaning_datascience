library(dplyr)
dataframe2 <- read.csv("getdata_data_GDP.csv")
dataframe_sub <- as.numeric(gsub(",","",dataframe2[,5]))
x <- mean(as.numeric(dataframe_sub[1:219]),na.rm=TRUE)
dataframe2 %>% rename(Countrynames = X.2)



                            