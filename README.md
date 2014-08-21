Script name: runAnalysis.R
Required packages: plyr
Output: getdataProject.txt

The script processes the data contained in the UCI HAR Dataset into a
table. The table columns contain the means of measurements on the mean
and standard deviation in the orginal data. The table rows comprise
the means for each combination of test subject and activity.

The script assumes that the current working directory contains the
project data subdirectory, i.e. "UCI HAR Dataset".

Using Hadley Wickam's terms from his paper "Tidy Data", the fixed
variables are the activities and subjects and the measured variables
are the features.

The script works as follows.

Step 1. Merge the training and the test sets to create one data set.

The measured values are read into separate tables from the files
X_test.txt and X_train.txt. The merged table results from appending
the train table to the test table.

Step 2. Extract only the measurements on the mean and standard
        deviation for each measurement.

The script filters out of the merged table all measurements except
those with names containing "mean" or "std". To do this, it first
extracts the character names from the file features.txt into a
vector. It then applies the grep function to produce the list of
indexes of those names which contain "mean" or "std". Finally, it
extracts the desired columns into a new table using this list as a
column index into the merged table.

Step 3. Use descriptive activity names to name the activities in the
        data set.

The script creates a descriptive activity name for each observation
in the form <activity label>_<subject id>, which effectively encodes
the values of the fixed variables.

The raw data for this step are:

  -associations of activity id with activity name, from activity_labels.txt.
  -activity ids for each observation, from y_test.txt and y_train.txt.
  -subject ids for each observation, from subject_test.txt and subject_train.txt. 

The script converts the observation activity ids to labels using the
activity-name associations. It then concatenates respective activity
labels and subject ids to obtain lists of the final descriptive
names. Finally, it adds the the merged lists to the merged table as a
column labeled "activity".

Step 4. Appropriately label the data set with descriptive variable names.

Using the filtered vector of feature names created in step 1, the
script creates a list of descriptive variable names by removing
non-alpha chars and making lowercase the original feature names, per
Hadley Wickam's tidy data guidelines. The result, with "activity"
appended, replaces the merged table's names attribute.

5. Create a second, independent tidy data set with the average of each variable
   for each activity and each subject.

Using plyr functions, the script splits the data frame along the
activity levels and applies the mean function to the other
columns. The rows of the resulting, unsplit table are then sorted in
order of ascending activity label. By construction of the activity
labels, this order is based on the values of the fixed variables, per
the convention described in Hadley's "Tidy Data".

The resulting table is written to the file getdataProject.txt.