### 1. Merge the training and the test sets to create one data set.
testSet <- read.table("UCI HAR Dataset/test/X_test.txt")
trainSet <- read.table("UCI HAR Dataset/train/X_train.txt")
testTrainSet <- rbind(testSet,trainSet)

### 2. Extract only the measurements on the mean and standard deviation for each measurement.
### The following filters out all measurements except those with names containing  "mean" or "std".

### read the variable names
variable_name_table <- read.table("UCI HAR Dataset/features.txt")
variable_names <- variable_name_table[[2]]
### convert from factor to character vector
variable_names <- as.vector(variable_names)

### get the index set of feature names containing "mean" or "std".
meanStdIndex <- grep("mean|std",variable_names, fixed=FALSE)

### create the set with only mean and standard deviation measurements.
reducedSet <- testTrainSet[,meanStdIndex]

### 3. Use descriptive activity names to name the activities in the data set
### The following creates a descriptive activity name for each observation
### in the form <activity label>_<subject id>, which effectively encodes
### the "fixed variables" activity and subject.

### read activity labels and associated ids
activity_name_table <- read.table("UCI HAR Dataset/activity_labels.txt")

### read activity ids for each observation 
test_activity_table <- read.table("UCI HAR Dataset/test/y_test.txt")
train_activity_table <-  read.table("UCI HAR Dataset/train/y_train.txt")

### associate the activity labels and ids for each observation
test_activity_name_table <- join(test_activity_table,activity_name_table)
train_activity_name_table <- join(train_activity_table,activity_name_table)

### merge the tables and extract the activity labels for each observation
testTrain_activity_name_table <- rbind(test_activity_name_table, train_activity_name_table)
testTrain_activity_names <- testTrain_activity_name_table[[2]]
testTrain_activity_names <- as.vector(testTrain_activity_names)

### merge and extract the subject ids for each observation
test_subject_table <- read.table("UCI HAR Dataset/test/subject_test.txt")
train_subject_table <- read.table("UCI HAR Dataset/train/subject_train.txt")
testTrain_subject_table <- rbind(test_subject_table, train_subject_table)
testTrain_subject_names <- testTrain_subject_table [[1]]
testTrain_subject_names <- as.vector(testTrain_subject_names)
### format subject names as zero-padded 2-digit numbers - this will ease
### the ordering of the final table rows.
testTrain_subject_names <- sprintf("%02d", testTrain_subject_names)

### create descriptive activity names for each observation
### by concatenating activity labels and subject names.
testTrain_activity_names <- paste(testTrain_activity_names, testTrain_subject_names, sep="_")

### add the activity names to the data set as a column
### labeled "activity"
reducedSet$activity <- testTrain_activity_names

### 4. Appropriately label the data set with descriptive variable names.
### The following creates a descriptive variable name by removing
### non-alpha chars and making lowercase the original column labels 
### per Hadley Wickam's tidy data guidelines

reducedSetVariableNames <- variable_names[meanStdIndex]
#remove non-alpha chars and make lowercase 
reducedSetVariableNames <- tolower(gsub("[^[:alnum:] ]", "", reducedSetVariableNames))
### preserve activity column label
reducedSetVariableNames <- append(reducedSetVariableNames, "activity")
names(reducedSet) <- reducedSetVariableNames

### 5. Create a second, independent tidy data set with the average of each variable
###    for each activity and each subject.
### create the table of means for each activity x subject
reducedSetMeans <- ddply(reducedSet, .(activity), numcolwise(mean))

### order the table rows by the 2-level key (activity, subject)
### (the "fixed variables" using Hadley Wickam's terms),
### which is encoded in the activity names.
reducedSetMeans <- arrange(reducedSetMeans, activity)

write.table(reducedSetMeans, file="getdataProject.txt", row.name=FALSE)