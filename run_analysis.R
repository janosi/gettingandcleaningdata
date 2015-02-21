## This executable R file is the solution of the Course Project of Coursera's Getting and Cleaning Data course.
## This executable works with the files provided by the instructors:
## features.txt
## y_test.txt
## subject_test.txt
## X_test.txt
## y_train.txt
## subject_train.txt
## X_train.txt
##
## The files listed above shall be in the same directory with this executable. The logic defined here performs the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each
##    activity and each subject.
## In the end the result data frame is written to a file named result.txt
##
## Note! The column names in the result.txt are the same as in the original feature set. However, the actual values are 
## the means calculated in step 5.


print("Reading features from features.txt")
features <- read.table("features.txt")

print("Processing test data...it may take a while...")
activity <- read.table("y_test.txt")
subject <- read.table("subject_test.txt")
meas <- read.table("X_test.txt")

names(subject) <- "subject_id"
names(activity) <- "activity_id"
names(meas) <- features[,2]

act_and_meas <- cbind(activity,meas)
test_data <- cbind(subject, act_and_meas)

print("Processing training data set...it may take a while...")
activity <- read.table("y_train.txt")
subject <- read.table("subject_train.txt")
meas <- read.table("X_train.txt")

names(subject) <- "subject_id"
names(activity) <- "activity_id"
names(meas) <- features[,2]

act_and_meas <- cbind(activity, meas)
train_data <- cbind(subject, act_and_meas)

print("Merging test and train data into a single data frame")
data <- rbind(train_data,test_data)

print("Extracting columns that hold mean or standard deviation values")
extracted <- data[,c(1,2,grep("mean()",names(data)), grep("std()",names(data)))]

print("Change activity ID values from numbers to activity names")
extracted$activity_id[extracted$activity_id == "1"] <- "WALKING"
extracted$activity_id[extracted$activity_id == "2"] <- "WALKING UP"
extracted$activity_id[extracted$activity_id == "3"] <- "WALKING DOWN"
extracted$activity_id[extracted$activity_id == "4"] <- "SITTING"
extracted$activity_id[extracted$activity_id == "5"] <- "STANDING"
extracted$activity_id[extracted$activity_id == "6"] <- "LAYING"

print("Groupping rows by activity ID and subject ID, and calculating the mean for each group")
library(dplyr)
final_data <- extracted %>% group_by(activity_id, subject_id) %>% summarise_each(funs(mean))

print("Writing the result data set into result.txt")
write.table(final_data,"result.txt", row.names=FALSE)

rm(final_data)
rm(extracted)
rm(data)
rm(subject)
rm(activity)
rm(meas)
rm(act_and_meas)
rm(train_data)
rm(test_data)
rm(features)