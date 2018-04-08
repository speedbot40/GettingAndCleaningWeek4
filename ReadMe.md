# run_Analysis.R

This script reads data collected for an experiment on Human Activity Recognition Using Smartphones.
Details of the experiment can be found at:

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The source datasets used for this analysis can be found at:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

This script reads values representing mean() and std() data for activity
measurements, merges and combines it with data representing the activity
names and subjects, and produces a tidy data set containing the average of
each variable for each combination of subject and activity.

# Script Execution:

This script requires that you have the sqldf and dplyr packages already installed.

To execute this script, first ensure that the run_Analysis.R file,
and the following files from the source datasets, are present in
your R working directory:

* features.txt
* X_test.txt
* X_train.txt
* subject_test.txt
* subject_train.txt
* y_test.txt
* y_train.txt
* activity_labels.txt

Then start R and enter

source("run_Analysis.R")

The script will execute and a tidy dataset ("HAR_summarized_tidy.txt") will be created
in your R working directory.


# Script Methodology:

The source datasets for the measurement values are quite large and contain data for Features
not included in the summary dataset. Therefore, for purposes of efficiency, the script
first interrogates the features.txt data to determine which columns represent mean and
standard deviation data and produces two vectors, one vector (featvec) representing the names of the
relevant features and a second vector (featidvec) representing the indexes of those
features in the values data.

The values in the featvec vector are then modified to make the feature names more descriptive.
This vector is later used when renaming the columns in the final dataset.

The featidvec vector is then used to generate a vector which is passed to the colClasses
parameter of read.table() so that only the relevent columns are retrieved.

The data values for the Test and Train data are then separately retrieved and combined with their
associated subject identifier and activity identifier data.

The Test and Train data are then combined into a single dataset and the activity identfiers are
replaced with the descriptive activity labels.

The column names in the combined dataset are then renamed.

The combined dataset is then summarized by grouping by subject and activity, and applying the mean.

Finally, the summarized data set is output to the working directory as "HAR_summarized_tidy.txt".

Note that the "header=TRUE" option must be used when reading the output file with read.table().

