---
title: "README"
author: "preethi"
date: "8/1/2019"
output: 
---

README document for the run_analysis program. 

This repository was created as a part of the Getting and Cleaning Data course in the Data Science Specialization. 

First download and extract the data file from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" into your R working directory and then download the run_analysis.R script into your working directory. Source the code to generate your tidy data file. 

Details of the files included in this repository
=========================================

Run_analysis.R - The Program
=========================================

The run_analysis script works on the assumption that the files have been downloaded and extracted and placed in the working directory. It generates a tidy.txt file which is a part of the repository

Codebook.md
=========================================
The codebook.md describes the variables, and the work that was performed included the specific .txt files used to clean up the data moving into specifics about the run_analysis.R program

tidy.txt
=========================================
The tidy.txt file which is the clean end product of the run_analysis program has 180 observations and 68 variables.


Given below is a description of the data

Data
=================

The data for the project was from the Samsung Galaxy S smartphones accelorometer. 
The data for the project was obtained from "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

The experiments were carried out with a group of 30 volunteers within an age bracket of 19-48 years. 

Each person performed six activities (activity_labels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz was captured. The experiments were video-recorded to data labelled manually. The obtained dataset was been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

Feature Selection 
=================
For each record in the dataset, there is a 

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. - Triaxial Angular velocity from the gyroscope
- A 561-feature vector with time and frequency domain variables
- Its activity label
- An identifier of the subject who carried out the experiment

The dataset given includs the following files:
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







