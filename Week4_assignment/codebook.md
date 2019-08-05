---
title: "CODEBOOK"
author: "preethi"
date: "8/1/2019"
output: "html_document"
---

The variables
=========================================

[1] "Subject_number"       - The identifier for the subject (1-30)                             
 
[2] "activity_name"        - signifies the five activities the subjects were doing:  WALKING,
 WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING    
[3-66] Variables described below

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelorometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequecyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
The Mean and Standard deviation of the follwing signals were collected in X, Y and Z dimensions. 

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The dataset : "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

Training folder
=========================================

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'Subject_train.txt': Subject identifiers in training dataset 

Test Folder
=========================================

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'subject_test.txt': Subject identifiers in test dataset


Run_analysis.R program
=========================================

First the data is downloaded, extracted and placed in the working directory. 
The script then does the following. 

- First the two libraries data.table and dplyr are loaded. 

- After which text files with the meta-data are read (i.e. the features_info.txt and the activity_labels.txt) 

- Then the training and test data (3 files) are read with Header = FALSE since the first line is not the variable names. 

- The test and the training data are then merged into 3 seperate files namely: Subject(subject identifiers for test and training), activity (test and training labels) and features(Test and training set).

- Names of the columns are then added using the metadata provided and a complete dataset is created by merging the subject, activity and features. 

- Then the columns containing only the mean and standard deviation are extracted into a new dataframe.

- And then the new dataframe is merged with the activity labels (metafile) so as to also include the activity name that corresponds to the activity number that already exists in the dataframe. 

- Then using the gsub functiont the descriptors are made more readable 

- From this dataset then the average of each variable for the activity and subject number are calculate using the aggregate function and it gives a new data set. 

- To this dataset, I used the order function to order it based on subject and activity and remove the activity_num since that seeme
