#Solution for Course Project for Coursera's Getting and Cleaning Data course

##Introduction

This repo consists of files, that provide the solution for the course project of Coursera's Getting and Cleaning Data course.

##Description of the files

* run_analysis.R - The script file that implements the solution for the task
* result.txt - the file that contains the tidy data set produces by the run_analysis.R script
* CodeBook.md - the codebook that explains the content of the tidy data set
* README.md - the readme text that explains the solution

##Running the script

run_analysis.R works with the files provided by the instructors:
* features.txt
* y_test.txt
* subject_test.txt
* X_test.txt
* y_train.txt
* subject_train.txt
* X_train.txt

The files listed above shall be in the same directory with this executable. The script performs the following:

1. Merges the training and the test sets (the content of *_test.txt and *_train.txt files) to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Labels the data set with variable names. Actually, the names are the original names from the original data sets(features.txt). The reason:
The original names are unambiguous already, an they are short enough to explain the purpose of the variables. Especially together with the provided codebook.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
6. In the end the result data frame is written to a file named result.txt

In order to execute the script

1. Copy all files listed above and the run_analysis.R file into the same directory
2. Start R console
3. Set the work directory to the directory which contains all the files mentioned in step 1
4. Execute the command `source("run_analysis.R")`
5. As the script runs, it prints out in which state it is, so you have feedback about its progress 

**Note!** The column names in result.txt are the same as in the original feature set. However, the actual values are the means calculated in step 5.