---
title: "CODEBOOK"
author: "preethi"
date: "8/1/2019"
output: word_document
---
The list of Variable names in the file tidy.txt are as follows

 [1] "Subject_number"       - The identifier for the subject (1-30)                             
 
 [2] "activity_name"        - signifies the five activities the subjects were doing:  WALKING,
 WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING    
 
 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals timeAccelorometer-XYZ and timeGyroscope-XYZ. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and timeGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, timeBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencyBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequecyBodyAccelerometerJerkMagnitude, frequencyBodyGyroscopeMagnitude, frequencyBodyGyroscopeJerkMagnitude. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
 
Mean and Standard deviation of these signals were calculated

The list of variables are as follows

 [3] "TimeBodyAccelerometer-mean()-X"                    
 [4] "TimeBodyAccelerometer-mean()-Y"                    
 [5] "TimeBodyAccelerometer-mean()-Z"                    
 [6] "TimeBodyAccelerometer-SD()-X"                      
 [7] "TimeBodyAccelerometer-SD()-Y"                      
 [8] "TimeBodyAccelerometer-SD()-Z"                      
 [9] "TimeGravityAccelerometer-mean()-X"                 
[10] "TimeGravityAccelerometer-mean()-Y"                 
[11] "TimeGravityAccelerometer-mean()-Z"                 
[12] "TimeGravityAccelerometer-SD()-X"                   
[13] "TimeGravityAccelerometer-SD()-Y"                   
[14] "TimeGravityAccelerometer-SD()-Z"                   
[15] "TimeBodyAccelerometerJerk-mean()-X"                
[16] "TimeBodyAccelerometerJerk-mean()-Y"                
[17] "TimeBodyAccelerometerJerk-mean()-Z"                
[18] "TimeBodyAccelerometerJerk-SD()-X"                  
[19] "TimeBodyAccelerometerJerk-SD()-Y"                  
[20] "TimeBodyAccelerometerJerk-SD()-Z"                  
[21] "TimeBodyGyroscopeo-mean()-X"                       
[22] "TimeBodyGyroscopeo-mean()-Y"                       
[23] "TimeBodyGyroscopeo-mean()-Z"                       
[24] "TimeBodyGyroscopeo-SD()-X"                         
[25] "TimeBodyGyroscopeo-SD()-Y"                         
[26] "TimeBodyGyroscopeo-SD()-Z"                         
[27] "TimeBodyGyroscopeoJerk-mean()-X"                   
[28] "TimeBodyGyroscopeoJerk-mean()-Y"                   
[29] "TimeBodyGyroscopeoJerk-mean()-Z"                   
[30] "TimeBodyGyroscopeoJerk-SD()-X"                     
[31] "TimeBodyGyroscopeoJerk-SD()-Y"                     
[32] "TimeBodyGyroscopeoJerk-SD()-Z"                     
[33] "TimeBodyAccelerometerMagnitude-mean()"             
[34] "TimeBodyAccelerometerMagnitude-SD()"               
[35] "TimeGravityAccelerometerMagnitude-mean()"          
[36] "TimeGravityAccelerometerMagnitude-SD()"            
[37] "TimeBodyAccelerometerJerkMagnitude-mean()"         
[38] "TimeBodyAccelerometerJerkMagnitude-SD()"           
[39] "TimeBodyGyroscopeoMagnitude-mean()"                
[40] "TimeBodyGyroscopeoMagnitude-SD()"                  
[41] "TimeBodyGyroscopeoJerkMagnitude-mean()"            
[42] "TimeBodyGyroscopeoJerkMagnitude-SD()"              
[43] "FrequencyBodyAccelerometer-mean()-X"               
[44] "FrequencyBodyAccelerometer-mean()-Y"               
[45] "FrequencyBodyAccelerometer-mean()-Z"               
[46] "FrequencyBodyAccelerometer-SD()-X"                 
[47] "FrequencyBodyAccelerometer-SD()-Y"                 
[48] "FrequencyBodyAccelerometer-SD()-Z"                 
[49] "FrequencyBodyAccelerometer-meanFreq()-X"           
[50] "FrequencyBodyAccelerometer-meanFreq()-Y"           
[51] "FrequencyBodyAccelerometer-meanFreq()-Z"           
[52] "FrequencyBodyAccelerometerJerk-mean()-X"           
[53] "FrequencyBodyAccelerometerJerk-mean()-Y"           
[54] "FrequencyBodyAccelerometerJerk-mean()-Z"           
[55] "FrequencyBodyAccelerometerJerk-SD()-X"             
[56] "FrequencyBodyAccelerometerJerk-SD()-Y"             
[57] "FrequencyBodyAccelerometerJerk-SD()-Z"             
[58] "FrequencyBodyAccelerometerJerk-meanFreq()-X"       
[59] "FrequencyBodyAccelerometerJerk-meanFreq()-Y"       
[60] "FrequencyBodyAccelerometerJerk-meanFreq()-Z"       
[61] "FrequencyBodyGyroscopeo-mean()-X"                  
[62] "FrequencyBodyGyroscopeo-mean()-Y"                  
[63] "FrequencyBodyGyroscopeo-mean()-Z"                  
[64] "FrequencyBodyGyroscopeo-SD()-X"                    
[65] "FrequencyBodyGyroscopeo-SD()-Y"                    
[66] "FrequencyBodyGyroscopeo-SD()-Z"                    
[67] "FrequencyBodyGyroscopeo-meanFreq()-X"              
[68] "FrequencyBodyGyroscopeo-meanFreq()-Y"              
[69] "FrequencyBodyGyroscopeo-meanFreq()-Z"              
[70] "FrequencyBodyAccelerometerMagnitude-mean()"        
[71] "FrequencyBodyAccelerometerMagnitude-SD()"          
[72] "FrequencyBodyAccelerometerMagnitude-meanFreq()"    
[73] "FrequencyBodyAccelerometerJerkMagnitude-mean()"    
[74] "FrequencyBodyAccelerometerJerkMagnitude-SD()"      
[75] "FrequencyBodyAccelerometerJerkMagnitude-meanFreq()"
[76] "FrequencyBodyGyroscopeoMagnitude-mean()"           
[77] "FrequencyBodyGyroscopeoMagnitude-SD()"             
[78] "FrequencyBodyGyroscopeoMagnitude-meanFreq()"       
[79] "FrequencyBodyGyroscopeoJerkMagnitude-mean()"       
[80] "FrequencyBodyGyroscopeoJerkMagnitude-SD()"         
[81] "FrequencyBodyGyroscopeoJerkMagnitude-meanFreq()"   
[82] "angle(tBodyAccelerometerMean,gravity)"             
[83] "angle(tBodyAccelerometerJerkMean),gravityMean)"    
[84] "angle(tBodyGyroscopeoMean,gravityMean)"            
[85] "angle(tBodyGyroscopeoJerkMean,gravityMean)"        
[86] "angle(X,gravityMean)"                              
[87] "angle(Y,gravityMean)"                              
[88] "angle(Z,gravityMean)"   