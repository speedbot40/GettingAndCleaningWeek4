# Human Activity Recognition Summary Data Set

This dataset (HAR_summarized_tidy.txt) contains a summary of a subset of measurements for a
Human Activity Recognition Using Smartphones experiment, representing data collected from the
accelerometers from the Samsung Galaxy S smartphone.

A full description of the experiment is available at the site where the data were obtained:

(http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


The data used for this summary data set comes from a snapshot of the original experiment data.
A zip file containing this snapshot data, and the original data set descriptions, can be found here:

(https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


The original data were split into multiple datasets representing:
* The descriptions of the original calculated measurements (Features)
* Data values for calculated for the Features in the Training arm of the experiment
* Data values for calculated for the Features in the Test arm of the experiment
* Subject identifiers related to each record in the Training arm values data
* Subject identifiers related to each record in the Test arm values data
* Activity identifiers related to each record in the Training arm values data
* Activity identifiers related to each record in the Test arm values data
* Activity names which describe the activity identifiers


This summary dataset provides the average value, across each subject and activity,
for Features representing mean and standard deviation values. The features_info.txt file in
the original data set description documentation indicates that Features containing the strings
"mean()" and "std()" represent the Mean Value and Standard Deviation, only these Features are included
in this summary dataset even though other Features in the original data also contain the string "mean".


This summary data set was produced by:
* Separately extracting the relevant columns of data values for the Test and Train data
* Separately combining the Test and Train data values with the associated subject identifier and activity identifier data
* Combining the Test and Train data into a single dataset
* Replacing the activity identifiers with the activity names in the combined dataset
* Renaming the columns in the combined dataset to make them more descriptive
* Outputting the combined dataset using the row.name=FALSE option


	
## Columns included in this summary dataset:


subject
* identifier of subject performing the activity, ranged from 1 to 30

activity
* activity performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)

timebodyaccelmeanx
* average of x-axis body acceleration mean values in the time domain (standard gravity units)

timebodyaccelmeany
* average of y-axis body acceleration mean values in the time domain (standard gravity units)

timebodyaccelmeanz
* average of z-axis body acceleration mean values in the time domain (standard gravity units)

timebodyaccelstdx
* average of x-axis body acceleration standard deviation values in the time domain (standard gravity units)

timebodyaccelstdy
* average of y-axis body acceleration standard deviation values in the time domain (standard gravity units)

timebodyaccelstdz
* average of z-axis body acceleration standard deviation values in the time domain (standard gravity units)

timegravityaccelmeanx
* average of x-axis gravity acceleration mean values in the time domain (standard gravity units)

timegravityaccelmeany
* average of y-axis gravity acceleration mean values in the time domain (standard gravity units)

timegravityaccelmeanz
* average of z-axis gravity acceleration mean values in the time domain (standard gravity units)

timegravityaccelstdx
* average of x-axis gravity acceleration standard deviation values in the time domain (standard gravity units)

timegravityaccelstdy
* average of y-axis gravity acceleration standard deviation values in the time domain (standard gravity units)

timegravityaccelstdz
* average of z-axis gravity acceleration standard deviation values in the time domain (standard gravity units)

timebodyacceljerkmeanx
* average of x-axis body acceleration jerk signal mean values in the time domain (standard gravity units)

timebodyacceljerkmeany
* average of y-axis body acceleration jerk signal mean values in the time domain (standard gravity units)

timebodyacceljerkmeanz
* average of z-axis body acceleration jerk signal mean values in the time domain (standard gravity units)

timebodyacceljerkstdx
* average of x-axis body acceleration jerk signal standard deviation values in the time domain (standard gravity units)

timebodyacceljerkstdy
* average of y-axis body acceleration jerk signal standard deviation values in the time domain (standard gravity units)

timebodyacceljerkstdz
* average of z-axis body acceleration jerk signal standard deviation values in the time domain (standard gravity units)

timebodygyromeanx
* average of x-axis angular velocity mean values in the time domain (radians/second)

timebodygyromeany
* average of y-axis angular velocity mean values in the time domain (radians/second)

timebodygyromeanz
* average of z-axis angular velocity mean values in the time domain (radians/second)

timebodygyrostdx
* average of x-axis angular velocity standard deviation values in the time domain (radians/second)

timebodygyrostdy
* average of y-axis angular velocity standard deviation values in the time domain (radians/second)

timebodygyrostdz
* average of z-axis angular velocity standard deviation values in the time domain (radians/second)

timebodygyrojerkmeanx
* average of x-axis angular velocity jerk signal mean values in the time domain (radians/second)

timebodygyrojerkmeany
* average of y-axis angular velocity jerk signal mean values in the time domain (radians/second)

timebodygyrojerkmeanz
* average of z-axis angular velocity jerk signal mean values in the time domain (radians/second)

timebodygyrojerkstdx
* average of x-axis angular velocity jerk signal standard deviation values in the time domain (radians/second)

timebodygyrojerkstdy
* average of x-axis angular velocity jerk signal standard deviation values in the time domain (radians/second)

timebodygyrojerkstdz
* average of x-axis angular velocity jerk signal standard deviation values in the time domain (radians/second)

timebodyaccelmagmean
* average of body acceleration magnitude mean values in the time domain

timebodyaccelmagstd
* average of body acceleration magnitude standard deviation values in the time domain

timegravityaccelmagmean
* average of gravity acceleration magnitude mean values in the time domain

timegravityaccelmagstd
* average of gravity acceleration magnitude standard deviation values in the time domain

timebodyacceljerkmagmean
* average of body acceleration jerk signal magnitude mean values in the time domain

timebodyacceljerkmagstd
* average of body acceleration jerk signal magnitude standard deviation values in the time domain

timebodygyromagmean
* average of angular velocity magnitude mean values in the time domain

timebodygyromagstd
* average of angular velocity magnitude standard deviation values in the time domain

timebodygyrojerkmagmean
* average of angular velocity jerk signal magnitude mean values in the time domain

timebodygyrojerkmagstd
* average of angular velocity jerk signal magnitude standard deviation values in the time domain

freqbodyaccelmeanx
* average of x-axis body acceleration mean values in the frequency domain (standard gravity units)

freqbodyaccelmeany
* average of y-axis body acceleration mean values in the frequency domain (standard gravity units)

freqbodyaccelmeanz
* average of z-axis body acceleration mean values in the frequency domain (standard gravity units)

freqbodyaccelstdx
* average of x-axis body acceleration standard deviation values in the frequency domain (standard gravity units)

freqbodyaccelstdy
* average of y-axis body acceleration standard deviation values in the frequency domain (standard gravity units)

freqbodyaccelstdz
* average of z-axis body acceleration standard deviation values in the frequency domain (standard gravity units)

freqbodyacceljerkmeanx
* average of x-axis body acceleration jerk signal mean values in the frequency domain (standard gravity units)

freqbodyacceljerkmeany
* average of y-axis body acceleration jerk signal mean values in the frequency domain (standard gravity units)

freqbodyacceljerkmeanz
* average of z-axis body acceleration jerk signal mean values in the frequency domain (standard gravity units)

freqbodyacceljerkstdx
* average of x-axis body acceleration jerk signal standard deviation values in the frequency domain (standard gravity units)

freqbodyacceljerkstdy
* average of y-axis body acceleration jerk signal standard deviation values in the frequency domain (standard gravity units)

freqbodyacceljerkstdz
* average of z-axis body acceleration jerk signal standard deviation values in the frequency domain (standard gravity units)

freqbodygyromeanx
* average of x-axis angular velocity mean values in the frequency domain (radians/second)

freqbodygyromeany
* average of y-axis angular velocity mean values in the frequency domain (radians/second)

freqbodygyromeanz
* average of z-axis angular velocity mean values in the frequency domain (radians/second)

freqbodygyrostdx
* average of x-axis angular velocity standard deviation values in the frequency domain (radians/second)

freqbodygyrostdy
* average of y-axis angular velocity standard deviation values in the frequency domain (radians/second)

freqbodygyrostdz
* average of z-axis angular velocity standard deviation values in the frequency domain (radians/second)

freqbodyaccelmagmean
* average of body acceleration magnitude mean values in the frequency domain

freqbodyaccelmagstd
* average of body acceleration magnitude standard deviation values in the frequency domain

freqbodybodyacceljerkmagmean
* average of body acceleration jerk signal magnitude mean values in the frequency domain

freqbodybodyacceljerkmagstd
* average of body acceleration jerk signal magnitude standard deviation values in the frequency domain

freqbodybodygyromagmean
* average of angular velocity magnitude mean values in the frequency domain

freqbodybodygyromagstd
* average of angular velocity magnitude standard deviation values in the frequency domain

freqbodybodygyrojerkmagmean
* average of angular velocity jerk signal magnitude mean values in the frequency domain

freqbodybodygyrojerkmagstd
* average of angular velocity jerk signal magnitude standard deviation values in the frequency domain