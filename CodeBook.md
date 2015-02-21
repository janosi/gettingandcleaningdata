#Codebook for the result file of the course project of Coursera's Getting and Cleaning Data course

##Source of the data

The original data was collected as part of this project:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The data come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The data was provided for course participants at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data is processed by the run_analysis.R script, and a new, tidy data set is created. This codebook describes the elements of that tidy data set

##Naming conventions
The data set uses the variable names that were used in the original data set. Though, only the variables representing mean and standard deviation are present, as it was a requirement in the course project to include only those variables from the original data set.

The variable names in the data set are composed from abbreviations. Here we list the abbreviations and their meanings:
`id` - identity
`t` -  time, indicates that the value is interpreted in the time domain
`f` - frequency, indicates that the value is interpreted in the frequency domain
`Acc` - acceleration
`X` - the X axis, indicates that the value has been measured according to the X axis in space
`Y` - the Y axis, indicates that the value has been measured according to the Y axis in space
`Z` - the Z axis, indicates that the value has been measured according to the Z axis in space
`Mag` - magnitude
`std` - standard deviation

##Variable values
Activity ID values represent the activity name performed by a subject
Subject ID values represent the exact subject who performed the activity
All other fields in the same row are the mean values of the given variable for the given activity performed by the given subject.


##Variables
`activity_id`
Identity of the activity. Possible values are:
* LAYING
* SITTING
* STANDING
* WALKING
* WALKING UP
* WALKING DOWN

`subject_id`
The ID of the subject performing the given activity. Possible values are between 1 and 30

`tBodyAcc-mean()-X`
Mean value of body acceleration in the time domain, on the X axis

`tBodyAcc-mean()-Y`
Mean value of body acceleration in the time domain, on the Y axis

`tBodyAcc-mean()-Z`
Mean value of body acceleration in the time domain, on the Z axis

**Note' From now on we do not write down the same variable on each axis separately, but we use the -XYZ notation here. In the data set those are in 3 separate variables.

`tGravityAcc-mean()-XYZ`
Mean valus of gravity acceleration in the time domain

`tBodyAccJerk-mean()-XYZ`
Mean value of the Jerk signal derived from body acceleration in the time domain

`tBodyGyro-mean()-XYZ`
Mean value of gyroscope data in the time domain

`tBodyGyroJerk-mean()-XYZ`
Mean value of the Jerk signal derived from gyroscope data in the time domain

`tBodyAccMag-mean()`
Mean vale of the magnitude of the body acceleration, in the time domain

`tGravityAccMag-mean()`
Mean value of the magnitude of gravity acceleration, in the time domain

`tBodyAccJerkMag-mean()`
Mean value of the magnitude of Jerk signal derived from body acceleration, in the time domain

`tBodyGyroMag-mean()`
Mean value of the magnitude of gyroscope data, in the time domain

`tBodyGyroJerkMag-mean()`
Mean value of the magnitude of the Jerk signal derived from the gyroscope data, in the time domain

`fBodyAcc-mean()-XYZ`
Mean value of body acceleration, in frequency domain

`fBodyAcc-meanFreq()-XYZ`
Mean frequency of the body acceleration

`fBodyAccJerk-mean()-XYZ`
Mean value of the Jerk signal derived from the body acceleration, in the frequency domain  

`fBodyAccJerk-meanFreq()-XYZ`
Mean frequency of the Jerk signal derived from the body acceleration, in the frequency domain

`fBodyGyro-mean()-XYZ`
Mean value of the gyroscope data, in the frequency domain

`fBodyGyro-meanFreq()-XYZ`
Mean frequency of the gyroscope data, in the frequency domain

`fBodyAccMag-mean()`
Mean value of the magnitude of body acceleration data, in the frequency domain

`fBodyAccMag-meanFreq()`
Mean frequency of the magnitude of the body acceleration data, in the frequency domain

`fBodyBodyAccJerkMag-mean()`
Mean value of the Jerk signal derived from the body acceleration data, in the frequency domain

`fBodyBodyAccJerkMag-meanFreq()`
Mean frequency of the Jerk signal derived from the body acceleration data, in the frequency domain

`fBodyBodyGyroMag-mean()`
Mean value of the magnitude of the gyroscope data, in the frequency domain

`fBodyBodyGyroMag-meanFreq()`
Mean frequency of the magnitude of the gyroscope data, in the frequency domain

`fBodyBodyGyroJerkMag-mean()`
Mean value of the magnitude of the Jerk signal derived from the gyroscope data, in the frequency domain

`BodyBodyGyroJerkMag-meanFreq()`
Mean frequency of the magnitude of the Jerk signal derived from the gyroscope data, in the frequency domain

`tBodyAcc-std()-XYZ`
Standard deviation of the body acceleration, in the time domain

`tGravityAcc-std()-XYZ`
Standard deviation of the gravity acceleration, in the time domain

`tBodyAccJerk-std()-XYZ`
Standard deviation of the Jerk signal derived from the body acceleration, in the time domain

`tBodyGyro-std()-XYZ`
Standard deviation of the gyroscope data, in the time domain

`tBodyGyroJerk-std()-XYZ`
Standard deviation of the Jerk signal derived from the gyroscope data, in the time domain

`tBodyAccMag-std()`
Standard deviation of the magnitude of body acceleration, in the time domain

`tGravityAccMag-std()`
Standard deviation of the magnitude of gravity acceleration, in the time domain

`tBodyAccJerkMag-std()`
Standard deviation of the magnitude of the Jerk signal derived from the body acceleration, in the time domain

`tBodyGyroMag-std()`
Standard deviation of the magnitude of gyroscope data, in the time domain

`tBodyGyroJerkMag-std()`
Standard deviation of the magnitude of Jerk signal derived from gyroscope data, in the time domain

`fBodyAcc-std()-XYZ`
Standard deviation of body acceleration, in the frequency domain

`fBodyAccJerk-std()-XYZ`
Standard deviation of the Jerk signal derived from body acceleration, in the frequency domain

`fBodyGyro-std()-XYZ`
Standard deviation of gyroscope data, in the frequency domain

`fBodyAccMag-std()`
Standard deviation of the magnitude of body acceleration, in the frequency domain

`fBodyBodyAccJerkMag-std()`
Standard deviation of the magnitude of Jerk signal derived from the body acceleration, in the frequency domain

`fBodyBodyGyroMag-std()`
Standard deviation of the magnitude of gyroscope data, in the frequency domain

`fBodyBodyGyroJerkMag-std()`
Standard deviation of the magnitude of the Jerk signal derived from the gyroscope data, in the frequency domain 