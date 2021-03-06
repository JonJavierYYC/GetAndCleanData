### All tasks associated to this project are related to the Peer-graded Assignment: Getting and Cleaning Data Course Project

The Original ReadMe.txt located in the UCI HAR Dataset folder provides the foundation for how this information was sourced. The goal of this ReadMe is to explains how this script works and how files from UCI HAR Dataset are connected. License information for this data can be found at the end of the file

----------
The R script called run_analysis.R does the following (commented by section ie. '#SECTION 1#, #SECTION 2#':

 1. Download and unzip the necessary data (if necessary) located at: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
 
 2. Read the following files:
	 - read *activity_labels.txt* to obtain the types of activities that occurred during the dataset
	 - read *features.txt* to obtain the list of measurement variables available for the dataset
	 - search the *features* information to identify which variables contain the targeted mean and standard deviation measurements
	 - modify the targeted variable names for mean and standard deviation to tidy data standards
	 - store the index of targeted variables for loading

 3. Read and combine information from train and test datasets **only loading those features variables identified in Step 2** using cbind and rbind
	 - files locations
		 - UCI HAR Dataset/test/X_test.txt
		 - UCI HAR Dataset/test/y_test.txt
		 - UCI HAR Dataset/test/subject_test.txt
		 - UCI HAR Dataset/train/X_train.txt
		 - UCI HAR Dataset/train/y_train.txt
		 - UCI HAR Dataset/train/subject_train.txt
	 - coerce activity and subject values into factors to assign  descriptive activity names to name the activities and appropriately label the data set with descriptive variable names
	 - store the merged data into a data frame called *'mydata'* 
 4. Use the aggregate function to calculate the average of each variable for each activity and each subject and store it in a data frame called *'mydatamean'*
 5. From the data set *'mydatamean'* created in step 4, output a second, independent tidy data set .
	 - this output is written to the working directory with the filename "***tidydataset.txt***"



###Additional Information
You can find additional information regarding the variables, data and transformations in the CodeBook.MD file.

##Original ReadMe.md for the UCI HAR Dataset

----------

    Human Activity Recognition Using Smartphones Dataset
    Version 1.0
    ==================================================================
    Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
    Smartlab - Non Linear Complex Systems Laboratory
    DITEN - UniversitÓ degli Studi di Genova.
    Via Opera Pia 11A, I-16145, Genoa, Italy.
    activityrecognition@smartlab.ws
    www.smartlab.ws
    ==================================================================
    
    The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
    
    The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
    
    For each record it is provided:
    ======================================
    
    - Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
    - Triaxial Angular velocity from the gyroscope. 
    - A 561-feature vector with time and frequency domain variables. 
    - Its activity label. 
    - An identifier of the subject who carried out the experiment.
    
    The dataset includes the following files:
    =========================================
    
    - 'README.txt'
    
    - 'features_info.txt': Shows information about the variables used on the feature vector.
    
    - 'features.txt': List of all features.
    
    - 'activity_labels.txt': Links the class labels with their activity name.
    
    - 'train/X_train.txt': Training set.
    
    - 'train/y_train.txt': Training labels.
    
    - 'test/X_test.txt': Test set.
    
    - 'test/y_test.txt': Test labels.
    
    The following files are available for the train and test data. Their descriptions are equivalent. 
    
    - 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
    
    - 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
    
    - 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
    
    - 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
    
    Notes: 
    ======
    - Features are normalized and bounded within [-1,1].
    - Each feature vector is a row on the text file.
    
    For more information about this dataset contact: activityrecognition@smartlab.ws
    
    
    #License:
    Use of this dataset in publications must be acknowledged by referencing the following publication [1] 
    
    [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
    
    This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
    
    Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


