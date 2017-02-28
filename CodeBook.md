


> This code book modifies and updates the available codebooks related to the data below to indicate all the variables and summaries calculated, along with units, and any other relevant information for the resulting data fields in `tidydataset.txt`.

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

###Identifiers
* **subject** - The ID of the test subject. Extracted from *subject_train.txt* and *subject_test.txt*
* **activity** - The type of activity performed when the corresponding measurements were taken. Extracted from *y_train.txt* and *y_test.txt*

###Activity Labels
Extracted from *activity_labels.txt*
* **WALKING**: subject was walking during the test (value '1')
* **WALKING_UPSTAIRS**: subject was walking up a staircase during the test (value '2')
* **WALKING_DOWNSTAIRS**: subject was walking down a staircase during the test (value '3')
* **SITTING**: subject was sitting during the test (value '4')
* **STANDING**: subject was standing during the test  (value '5')
* **LAYING**: subject was laying down during the test  (value '6')

###Variable Name modification
* removal of all brackets and dashes
* 'mean()-' is replaced by 'Mean'
* 'std()-' is replaced by 'STD'
* 'BodyBody' is replaced by 'Body'
* 'Acc' is replaced by 'Accelerometer'
* 'Gyro' is replaced by 'Gyroscope'
* 'Freq' is replaced by 'Frequency'
* 'tbody' is replaced with 'TimedBody'
* 'fbody' is replaced with 'FrequencyBody'
* 'Mag' is replaced with 'Magnitude'


###Variables/Columns
These are the resulting ***revised*** variables based on string filtering for '-mean' and '-std' within source column names. All definitions are retained from previous codebooks stored within the UCI HAR Dataset

     [1] "TimedBodyAccelerometerMeanX"                         
     [2] "TimedBodyAccelerometerMeanY"                         
     [3] "TimedBodyAccelerometerMeanZ"                         
     [4] "TimedBodyAccelerometerSTDX"                          
     [5] "TimedBodyAccelerometerSTDY"                          
     [6] "TimedBodyAccelerometerSTDZ"                          
     [7] "tGravityAccelerometerMeanX"                          
     [8] "tGravityAccelerometerMeanY"                          
     [9] "tGravityAccelerometerMeanZ"                          
    [10] "tGravityAccelerometerSTDX"                           
    [11] "tGravityAccelerometerSTDY"                           
    [12] "tGravityAccelerometerSTDZ"                           
    [13] "TimedBodyAccelerometerJerkMeanX"                     
    [14] "TimedBodyAccelerometerJerkMeanY"                     
    [15] "TimedBodyAccelerometerJerkMeanZ"                     
    [16] "TimedBodyAccelerometerJerkSTDX"                      
    [17] "TimedBodyAccelerometerJerkSTDY"                      
    [18] "TimedBodyAccelerometerJerkSTDZ"                      
    [19] "TimedBodyGyroscopeMeanX"                             
    [20] "TimedBodyGyroscopeMeanY"                             
    [21] "TimedBodyGyroscopeMeanZ"                             
    [22] "TimedBodyGyroscopeSTDX"                              
    [23] "TimedBodyGyroscopeSTDY"                              
    [24] "TimedBodyGyroscopeSTDZ"                              
    [25] "TimedBodyGyroscopeJerkMeanX"                         
    [26] "TimedBodyGyroscopeJerkMeanY"                         
    [27] "TimedBodyGyroscopeJerkMeanZ"                         
    [28] "TimedBodyGyroscopeJerkSTDX"                          
    [29] "TimedBodyGyroscopeJerkSTDY"                          
    [30] "TimedBodyGyroscopeJerkSTDZ"                          
    [31] "TimedBodyAccelerometerMagnitudeMean"                 
    [32] "TimedBodyAccelerometerMagnitudeSTD"                  
    [33] "tGravityAccelerometerMagnitudeMean"                  
    [34] "tGravityAccelerometerMagnitudeSTD"                   
    [35] "TimedBodyAccelerometerJerkMagnitudeMean"             
    [36] "TimedBodyAccelerometerJerkMagnitudeSTD"              
    [37] "TimedBodyGyroscopeMagnitudeMean"                     
    [38] "TimedBodyGyroscopeMagnitudeSTD"                      
    [39] "TimedBodyGyroscopeJerkMagnitudeMean"                 
    [40] "TimedBodyGyroscopeJerkMagnitudeSTD"                  
    [41] "FrequencyBodyAccelerometerMeanX"                     
    [42] "FrequencyBodyAccelerometerMeanY"                     
    [43] "FrequencyBodyAccelerometerMeanZ"                     
    [44] "FrequencyBodyAccelerometerSTDX"                      
    [45] "FrequencyBodyAccelerometerSTDY"                      
    [46] "FrequencyBodyAccelerometerSTDZ"                      
    [47] "FrequencyBodyAccelerometerMeanFrequencyX"            
    [48] "FrequencyBodyAccelerometerMeanFrequencyY"            
    [49] "FrequencyBodyAccelerometerMeanFrequencyZ"            
    [50] "FrequencyBodyAccelerometerJerkMeanX"                 
    [51] "FrequencyBodyAccelerometerJerkMeanY"                 
    [52] "FrequencyBodyAccelerometerJerkMeanZ"                 
    [53] "FrequencyBodyAccelerometerJerkSTDX"                  
    [54] "FrequencyBodyAccelerometerJerkSTDY"                  
    [55] "FrequencyBodyAccelerometerJerkSTDZ"                  
    [56] "FrequencyBodyAccelerometerJerkMeanFrequencyX"        
    [57] "FrequencyBodyAccelerometerJerkMeanFrequencyY"        
    [58] "FrequencyBodyAccelerometerJerkMeanFrequencyZ"        
    [59] "FrequencyBodyGyroscopeMeanX"                         
    [60] "FrequencyBodyGyroscopeMeanY"                         
    [61] "FrequencyBodyGyroscopeMeanZ"                         
    [62] "FrequencyBodyGyroscopeSTDX"                          
    [63] "FrequencyBodyGyroscopeSTDY"                          
    [64] "FrequencyBodyGyroscopeSTDZ"                          
    [65] "FrequencyBodyGyroscopeMeanFrequencyX"                
    [66] "FrequencyBodyGyroscopeMeanFrequencyY"                
    [67] "FrequencyBodyGyroscopeMeanFrequencyZ"                
    [68] "FrequencyBodyAccelerometerMagnitudeMean"             
    [69] "FrequencyBodyAccelerometerMagnitudeSTD"              
    [70] "FrequencyBodyAccelerometerMagnitudeMeanFrequency"    
    [71] "FrequencyBodyAccelerometerJerkMagnitudeMean"         
    [72] "FrequencyBodyAccelerometerJerkMagnitudeSTD"          
    [73] "FrequencyBodyAccelerometerJerkMagnitudeMeanFrequency"
    [74] "FrequencyBodyGyroscopeMagnitudeMean"                 
    [75] "FrequencyBodyGyroscopeMagnitudeSTD"                  
    [76] "FrequencyBodyGyroscopeMagnitudeMeanFrequency"        
    [77] "FrequencyBodyGyroscopeJerkMagnitudeMean"             
    [78] "FrequencyBodyGyroscopeJerkMagnitudeSTD"              
    [79] "FrequencyBodyGyroscopeJerkMagnitudeMeanFrequency"    

###Merging the Data
After utilizing cbind and rbind functions. The data is merged into a single data frame available for analysis. See sample str(mydata) below displaying a portion of the data frame:

    > str(mydata)
    'data.frame':	10299 obs. of  81 variables:
     $ subject                                             : Factor w/ 30 levels "1","2","3","4",..: 1 1 1 1 1 1 1 1 1 1 ...
     $ activity                                            : Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 5 5 5 5 5 5 5 5 5 5 ...
     $ TimedBodyAccelerometerMeanX                         : num  0.289 0.278 0.28 0.279 0.277 ...
     $ TimedBodyAccelerometerMeanY                         : num  -0.0203 -0.0164 -0.0195 -0.0262 -0.0166 ...
     $ TimedBodyAccelerometerMeanZ                         : num  -0.133 -0.124 -0.113 -0.123 -0.115 ...
     $ TimedBodyAccelerometerSTDX                          : num  -0.995 -0.998 -0.995 -0.996 -0.998 ...
     $ TimedBodyAccelerometerSTDY                          : num  -0.983 -0.975 -0.967 -0.983 -0.981 ...
     $ TimedBodyAccelerometerSTDZ                          : num  -0.914 -0.96 -0.979 -0.991 -0.99 ...
     $ tGravityAccelerometerMeanX                          : num  0.963 0.967 0.967 0.968 0.968 ...



