library(jpeg)
myurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fjeff.jpg"
z <- tempfile()
download.file(myurl,z,mode="wb")
ans <- readJPEG(z, native = TRUE)
answer <- quantile(ans, probs =c(0.3, 0.8))
answer

