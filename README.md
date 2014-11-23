Project for the Getting and Cleaning Data course
======================
Luca Schippa, November 2014
======================

This is my submission for the course project.

The data used comes from the "Human Activity Recognition Using Smartphones Dataset" Version 1.0, taken from this url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
It will be loaded in R and processed to produce a tidy data set, based on a subset of the data available.

The raw data:
======================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.
The data is split in a training set and a testing set.
The data used to produce the tidy dataset is:
- A 561-feature unlabeled vector with time and frequency domain variables (files: /UCI HAR Dataset/train/X_train.txt and /UCI HAR Dataset/test/X_test.txt)
- Its activity labels (files: /UCI HAR Dataset/train/y_train.txt and /UCI HAR Dataset/test/y_test.txt). 
- An identifier of the subject who carried out the experiment.

About the features vector:
- Features are normalized and bound within [-1,1].
- Each feature vector is a row on the text file.

For extensive information about the dataset, see the file /UCI HAR Dataset/README.txt

Running the processing script:
======================

* Extract the zipped files. They should end up in a folder named "UCI HAR Dataset"
* Set the R working directory in the parent folder of "UCI HAR Dataset"
* run the script with this command: source('~/Documents/courses/dst3_get_clean/project/run_analysis.r')
* ignore the warnings: they come from NAs being omitted and are not relevant for the final output
* a tab-delimited file called tidy.txt will be created.

Refer to the codebook in this repository (codebook.md) for a description of the dataset

Reading and viewing the tidy dataset in R:
======================

* Set the R working directory in the parent folder of "UCI HAR Dataset"
* Run the command: data <- read.table("tidy.txt", header = TRUE)
* Run the command: View(data)

Contents of this repository:
======================
* tidy.txt: the tidy dataset (tab-delimited flat file
* run_analysis.r: the script
* codebook.md: the codebook for the dataset
* this README file

