Project for the Getting and Cleaning Data course
======================
CodeBook for the dataset tidy.txt
=============================

The data used comes from the "Human Activity Recognition Using Smartphones Dataset" Version 1.0, taken from this url:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description of the dataset can be found in the file /UCI HAR Dataset/README.txt

Data selection:
======================
As asked in the assignment, only the features containing "mean" or "std" were used to produce the tidy dataset.
This leaves us with 86 features out of the original 561.

The list of the variables whose mean and standard deviation are shown for each axis X,Y and Z, is the following:

* angle(gravity)
* fBodyAcc
* fBodyAccFreq
* fBodyAccJerk
* fBodyAccJerkFreq
* fBodyGyro
* fBodyGyroFreq
* tBodyAcc
* tBodyAccJerk
* tBodyGyro
* tBodyGyroJerk
* tGravityAcc


The list of the variables whose mean and standard deviation are shown as a single value (not one per axis), is the following:
* tBodyAccMag
* tBodyAccMag
* tGravityAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroMag
* tBodyGyroJerkMag
* tBodyGyroJerkMag
* fBodyAccMag
* fBodyAccMagFreq
* fBodyBodyAccJerkMag
* fBodyBodyAccJerkMagFreq
* fBodyBodyGyroMag
* fBodyBodyGyroMagFreq
* fBodyBodyGyroJerkMag
* fBodyBodyGyroJerkMagFreq
* angle(tBodyAcc,gravity)
* angle(tBodyAccJerk),gravity)
* angle(tBodyGyro,gravity)
* angle(tBodyGyroJerk,gravity)

The features are reported for 30 subjects, each subjects performin all of the following 6 activities:

1	WALKING
2	WALKING_UPSTAIRS
3	WALKING_DOWNSTAIRS
4	SITTING
5	STANDING
6	LAYING

Note: features are normalized and bound within [-1,1].

Data summarization:
======================
The data was summarized by taking the mean mer subject and activity of each selected feature.
The data is on a "wide" format, with each row representing a subject and activity, and one column for the mean of each feature.

Column names:
======================
The column names are in this format: tBodyAcc_mean()-X
containing featurename, mean or std, and axis if applicable.
There are also 2 columns indicating the subject and the activity for each row.

Ouput file:
======================
The file tidy.txt is a tab-delimited flat file.
To read it back in R and view it:
* Set the R working directory in the parent folder of "UCI HAR Dataset"
* Run the command: data <- read.table("tidy.txt", header = TRUE)
* Run the command: View(data)


