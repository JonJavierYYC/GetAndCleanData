## Getting and Cleaning Data - Course project
## The R script - run_analysis.R does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for 
##    each measurement.
## 3. Assigns descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.

########## SECTION 1 ##########

## Download and unzip the dataset:
f <- "dataset.zip"
if (!file.exists(f)){
  url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(url, f)
}  

## unzip downloaded file 
if (!file.exists("UCI HAR Dataset")) { 
  unzip(f) 
}

########## SECTION 2 ##########

## read the activity_labels.txt and features.txt
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

##identify features variables associated to mean and std deviation
targetfeatures <- grep("-mean|-std",features$V2,value = TRUE)

## obtain list of variables to be extracted
targetfeaturescol <- grep("-mean|-std",features$V2)

##clean variable names before use
##remove brackets
targetfeatures <- gsub("\\(|\\)", "", targetfeatures)

##replace -mean with Mean
targetfeatures <- gsub("-mean","Mean",targetfeatures)

##replace -std with STD for standard deviation
targetfeatures <- gsub("-std","STD",targetfeatures)

##remove dashes
targetfeatures <- gsub("-","",targetfeatures)

##remove duplicate BodyBody 
targetfeatures <- gsub("BodyBody","Body",targetfeatures)

##replace Acc with Accelerometer
targetfeatures <- gsub("Acc","Accelerometer",targetfeatures)

##replace Gyro with Gyroscope
targetfeatures <- gsub("Gyro","Gyroscope",targetfeatures)

##replace Freq with Frequency
targetfeatures <- gsub("Freq","Frequency",targetfeatures)

##replace tbody with TimedBody
targetfeatures <- gsub("tBody","TimedBody",targetfeatures)

##replace fbody with FrequencyBody
targetfeatures <- gsub("fBody","FrequencyBody",targetfeatures)

##replace Mag with Magnitude
targetfeatures <- gsub("Mag","Magnitude",targetfeatures)

########## SECTION 3 ##########
## read the train, test and subject dataset
trainx <- read.table("UCI HAR Dataset/train/X_train.txt")[targetfeaturescol]
trainy <- read.table("UCI HAR Dataset/train/y_train.txt")
subjecttrain <- read.table("UCI HAR Dataset/train/subject_train.txt")

testx <- read.table("UCI HAR Dataset/test/X_test.txt")[targetfeaturescol]
testy <- read.table("UCI HAR Dataset/test/y_test.txt")
subjecttest <- read.table("UCI HAR Dataset/test/subject_test.txt")

##combine datasets and assign variable names
trainall <- cbind(subjecttrain, trainy, trainx)
testall <- cbind(subjecttest, testy,testx)
mydata <- rbind(trainall,testall)
colnames(mydata) <- c("subject","activity",targetfeatures)

# coerce activity & subject variables into factor to assign labels
mydata$activity <- factor(mydata$activity, levels = activity_labels[,1], labels = activity_labels[,2])
mydata$subject <- as.factor(mydata$subject)

########## SECTION 4 ##########
##use aggregate to calcuate average for each variable per subject/activity
mydatamean <- aggregate(. ~subject + activity,mydata,mean)

########## SECTION 5 ##########
##creates a second, independent tidy data set with the average of each variable
##for each activity and each subject.
write.table(mydatamean, "tidydataset.txt", row.names = FALSE)
