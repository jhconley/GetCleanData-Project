Code Book.

Summary Choices.

The tidy data summarises data selected from the UCI HAR Dataset. The
original data set comprises 561 measurements from the time and
frequency domains. The measurements are related to smarphone sensor
readings obtained from 30 subjects as they were engaged in 6 different
activities. See the UCI HAR Dataset README.txt file for more
information about the original data set.

The tidy data columns contain the means of measurements on the mean
and standard deviation in the orginal data. The table rows comprise
the means for each combination of test subject and activity.

The first column, labelled "activity", identifies one of the 180
combinations of activity and subject. As such, it summarizes the fixed
variables "activity" and "subject" in the original data. The table
rows are ordered based on the values in this column, primarily on the
activity and then on the subject using a lexical sort.

The remaining 79 columns pertain to a subset of the original 561
measured variables, namely those with names containing "mean" or
"std". For each measured variable in the subset, and for each
combination of activity and subject, a tidy datum is the mean of the
measured values.

The next section describes these variables in more detail.

Variables.

activity.
  a string of the form <activity label>_<subject id> where
    <activity label> is one of 
      WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, 
      SITTING, STANDING, or LAYING.
    <subject id> is one of 1, 2, 3, 4, 5, or 6.

The remaining 79 columns contain means of measured variable values in
the original UCI HAR Dataset. The following table identifies these
measured variables.  The left side of each entry is a tidy data column
label and on the right is the name of the associated measured
variable.  The table is ordered according to the tidy data left-to
right column order. Refer to the files UCI HAR Dataset features.txt
and feature_info.txt for descriptions of the measured variables,
including their units.

  tbodyaccmeanx - tBodyAcc-mean()-X                             
  tbodyaccmeany - tBodyAcc-mean()-Y                             
  tbodyaccmeanz - tBodyAcc-mean()-Z                             
  tbodyaccstdx - tBodyAcc-std()-X                               
  tbodyaccstdy - tBodyAcc-std()-Y                               
  tbodyaccstdz - tBodyAcc-std()-Z                               
  tgravityaccmeanx - tGravityAcc-mean()-X                       
  tgravityaccmeany - tGravityAcc-mean()-Y                       
  tgravityaccmeanz - tGravityAcc-mean()-Z                       
  tgravityaccstdx - tGravityAcc-std()-X                         
  tgravityaccstdy - tGravityAcc-std()-Y                         
  tgravityaccstdz - tGravityAcc-std()-Z                         
  tbodyaccjerkmeanx - tBodyAccJerk-mean()-X                     
  tbodyaccjerkmeany - tBodyAccJerk-mean()-Y                     
  tbodyaccjerkmeanz - tBodyAccJerk-mean()-Z                     
  tbodyaccjerkstdx - tBodyAccJerk-std()-X                       
  tbodyaccjerkstdy - tBodyAccJerk-std()-Y                       
  tbodyaccjerkstdz - tBodyAccJerk-std()-Z                       
  tbodygyromeanx - tBodyGyro-mean()-X                           
  tbodygyromeany - tBodyGyro-mean()-Y                           
  tbodygyromeanz - tBodyGyro-mean()-Z                           
  tbodygyrostdx - tBodyGyro-std()-X                             
  tbodygyrostdy - tBodyGyro-std()-Y                             
  tbodygyrostdz - tBodyGyro-std()-Z                             
  tbodygyrojerkmeanx - tBodyGyroJerk-mean()-X                   
  tbodygyrojerkmeany - tBodyGyroJerk-mean()-Y                   
  tbodygyrojerkmeanz - tBodyGyroJerk-mean()-Z                   
  tbodygyrojerkstdx - tBodyGyroJerk-std()-X                     
  tbodygyrojerkstdy - tBodyGyroJerk-std()-Y                     
  tbodygyrojerkstdz - tBodyGyroJerk-std()-Z                     
  tbodyaccmagmean - tBodyAccMag-mean()                          
  tbodyaccmagstd - tBodyAccMag-std()                            
  tgravityaccmagmean - tGravityAccMag-mean()                    
  tgravityaccmagstd - tGravityAccMag-std()                      
  tbodyaccjerkmagmean - tBodyAccJerkMag-mean()                  
  tbodyaccjerkmagstd - tBodyAccJerkMag-std()                    
  tbodygyromagmean - tBodyGyroMag-mean()                        
  tbodygyromagstd - tBodyGyroMag-std()                          
  tbodygyrojerkmagmean - tBodyGyroJerkMag-mean()                
  tbodygyrojerkmagstd - tBodyGyroJerkMag-std()                  
  fbodyaccmeanx - fBodyAcc-mean()-X                             
  fbodyaccmeany - fBodyAcc-mean()-Y                             
  fbodyaccmeanz - fBodyAcc-mean()-Z                             
  fbodyaccstdx - fBodyAcc-std()-X                               
  fbodyaccstdy - fBodyAcc-std()-Y                               
  fbodyaccstdz - fBodyAcc-std()-Z                               
  fbodyaccmeanfreqx - fBodyAcc-meanFreq()-X                     
  fbodyaccmeanfreqy - fBodyAcc-meanFreq()-Y                     
  fbodyaccmeanfreqz - fBodyAcc-meanFreq()-Z                     
  fbodyaccjerkmeanx - fBodyAccJerk-mean()-X                     
  fbodyaccjerkmeany - fBodyAccJerk-mean()-Y                     
  fbodyaccjerkmeanz - fBodyAccJerk-mean()-Z                     
  fbodyaccjerkstdx - fBodyAccJerk-std()-X                       
  fbodyaccjerkstdy - fBodyAccJerk-std()-Y                       
  fbodyaccjerkstdz - fBodyAccJerk-std()-Z                       
  fbodyaccjerkmeanfreqx - fBodyAccJerk-meanFreq()-X             
  fbodyaccjerkmeanfreqy - fBodyAccJerk-meanFreq()-Y             
  fbodyaccjerkmeanfreqz - fBodyAccJerk-meanFreq()-Z             
  fbodygyromeanx - fBodyGyro-mean()-X                           
  fbodygyromeany - fBodyGyro-mean()-Y                           
  fbodygyromeanz - fBodyGyro-mean()-Z                           
  fbodygyrostdx - fBodyGyro-std()-X                             
  fbodygyrostdy - fBodyGyro-std()-Y                             
  fbodygyrostdz - fBodyGyro-std()-Z                             
  fbodygyromeanfreqx - fBodyGyro-meanFreq()-X                   
  fbodygyromeanfreqy - fBodyGyro-meanFreq()-Y                   
  fbodygyromeanfreqz - fBodyGyro-meanFreq()-Z                   
  fbodyaccmagmean - fBodyAccMag-mean()                          
  fbodyaccmagstd - fBodyAccMag-std()                            
  fbodyaccmagmeanfreq - fBodyAccMag-meanFreq()                  
  fbodybodyaccjerkmagmean - fBodyBodyAccJerkMag-mean()          
  fbodybodyaccjerkmagstd - fBodyBodyAccJerkMag-std()            
  fbodybodyaccjerkmagmeanfreq - fBodyBodyAccJerkMag-meanFreq()  
  fbodybodygyromagmean - fBodyBodyGyroMag-mean()                
  fbodybodygyromagstd - fBodyBodyGyroMag-std()                  
  fbodybodygyromagmeanfreq - fBodyBodyGyroMag-meanFreq()        
  fbodybodygyrojerkmagmean - fBodyBodyGyroJerkMag-mean()        
  fbodybodygyrojerkmagstd - fBodyBodyGyroJerkMag-std()          
  fbodybodygyrojerkmagmeanfreq - fBodyBodyGyroJerkMag-meanFreq()

Study Design.

See the UCI HAR Dataset README.txt file and the documents that it
refers to for the original Study Design.

