## run_analysis works on the assumption that the files from
##"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
##have been downloaded and extracted and placed in the working directory
##setwd("~/R/datasciencecoursera/Cleaning_datascience/Week4_assignment")

##load required libraries

library(data.table)
library(dplyr)

## Read the features and activity labels, i.e. the metadata
feature_names <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/features.txt")
activity_labels <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header=FALSE)

##Read the training data
subject_training <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
training_features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE)
training_activity <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE)

##Read Test data
subject_test <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
test_features <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
test_activity <- read.table("getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE)

## 1. merge the training and test data
subject <- rbind(subject_training, subject_test)
activity <- rbind(training_activity, test_activity)
features <- rbind(training_features, test_features)

##naming the columns

colnames(features) <- t(feature_names[,2])
colnames(activity) <- "activity_num"
colnames(subject) <- "Subject_number"
setnames(activity_labels, names(activity_labels), c("activity_num", "activity_name"))

##Create complete dataset

Complete_data <- cbind(features,activity,subject)

## 2. extract columns for mean and standard deviation

Mean_std_colums <- grep(".*mean.*|.*std.*",names(Complete_data), ignore.case =TRUE)
required_dataframe <- c(Mean_std_colums,562,563)
extracted_columns <- Complete_data[,required_dataframe]

##3. Uses descriptive activity names to name the activities in the data set

new_table <- merge(activity_labels,extracted_columns,by = "activity_num", all.x = TRUE)
new_table$activity_name <- as.character(new_table$activity_name)

##4. Appropriately labels the data set with descriptive variable names

names(new_table) <- gsub("Acc", "Accelerometer", names(new_table))
names(new_table) <- gsub("Gyr", "Gyroscope", names(new_table))
names(new_table) <- gsub("Mag", "Magnitude", names(new_table))
names(new_table) <- gsub("BodyBody", "Body", names(new_table))
names(new_table) <- gsub("^t", "Time", names(new_table))
names(new_table) <- gsub("^f", "Frequemcy", names(new_table))
names(new_table) <- gsub("MEAN", "Mean", names(new_table))
names(new_table) <- gsub("std", "SD", names(new_table))

##5. From the data set in step 4, creates a second, independent tidy data set with the 
##average of each variable for each activity and each subject.

new_table$Subject_number <- as.factor(new_table$Subject_number)
tidy_data <- aggregate(. ~Subject_number + activity_name, new_table, mean)
tidy_data <- tidy_data[order(tidy_data$Subject_number, tidy_data$activity_name),]
tidy_data$activity_num <- NULL

write.table(tidy_data, file = "tidy.txt", row.names = FALSE)





