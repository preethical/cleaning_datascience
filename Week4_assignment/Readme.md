---
title: "README"
author: "preethi"
date: "8/1/2019"
output: html_document
---

README document for the run_analysis program. 

This was a part of the Getting and Cleaning Data course in the Data Science Specialization. 

The data for the project was from the Samsung Galaxy S smartphones accelorometer. 
The data for the project was obtained from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

Each person performed six activities (activity_labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. The experiments were video-recorded to data labelled manually. The obtained dataset was been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Feature Selection 
=================
For each record in the dataset, there is a 
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment

The dataset given included the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

Training folder

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'Subject_train.txt': Subject identifiers in training dataset 

Test Folder

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'subject_test.txt': Subject identifiers in test dataset

The Program
=========================================

The run_analysis script works on the assumption that the file has been downloaded and extracted and placed in the working directory. 

First the two libraries data.table and dplyr are loaded. 

After which text files with the meta-data are read (i.e. the features_info.txt and the activity_labels.txt) 

After which the training and test data (3 files) are read with Header = FALSE since the first line is not the variable names. 

The test and the training data are then merged into 3 seperate files namely: Subject(subject identifiers for test and training), activity (test and training labels) and features(Test and training set).

Names of the columns are then added using the metadata provided and a complete dataset is created by merging the subject, activity and features. 

Then the columns containing only the mean and standard deviation are extracted into a new dataframe.

And then the new dataframe is merged with the activity labels (metafile) so as to also include the activity name that corresponds to the activity number that already exists in the dataframe. 

Then using the gsub functiont the descriptors are made more elaborate. 

From this dataset then the average of each variable for the activity and subject number are calculate using the aggregate function and it gives a new data set. 

To this dataset, I used the order function to order it based on subject and activity and remove the activity_num since that seemed redunant. 

This tidy set was then written into a file tidy.txt which has been saved in this repository.


