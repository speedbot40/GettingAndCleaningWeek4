## run_Analysis.R
## 
## This script reads data collected for an experiment on
## Human Activity Recognition Using Smartphones.
## Details of the experiment can be found at
## archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
##
## The source datasets used for this analysis can be found at
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
##
## This script reads values representing mean() and std() data for activity
## measurements, merges and combines it with data representing the activity
## names and subjects, and produces a tidy data set containing the average of
## each variable for each combination of subject and activity.
##
## The following files from the source datasets must be present in
## your R working directory:
##
## features.txt
## X_test.txt
## X_train.txt
## subject_test.txt
## subject_train.txt
## y_test.txt
## y_train.txt
## activity_labels.txt
##
## The output tidy dataset ("HAR_summarized_tidy.txt") will be created
## in your R working directory.



## include necessary non-base packages. Suppress load and warning messages.
suppressWarnings(suppressMessages(library(sqldf)))
suppressWarnings(suppressMessages(library(dplyr)))


## read the features.txt file and assign column names
features <- read.table("features.txt")
colnames(features) <- c("id", "feature")


## retrieve the subset of features and their ids
## representing mean or std values
msfeats <- sqldf("select feature from features where 
				  feature like '%mean()%' or feature like '%std()%'")
msfeatids <- sqldf("select id from features where feature like 
				   '%mean()%' or feature like '%std()%'")


## create a character vector of the feature subset
## which will be used to apply column names to dataset
## modify column names slightly to be more descriptive
featvec <- as.vector(msfeats[, "feature"])
featvec <- tolower(gsub("[[:punct:]]", "", featvec))
featvec <- sub("tbody", "timebody", featvec)
featvec <- sub("fbody", "freqbody", featvec)
featvec <- sub("tgravity", "timegravity", featvec)
featvec <- sub("acc", "accel", featvec)


## create an integer vector of the feature id subset
## which will be used to indicate columns to retrieve
featidvec <- msfeatids[, "id"]


## define a vector to be used to retrieve only the required columns
## from the test and train data via colClasses
cc <- rep('NULL', 561)
cc[featidvec] <- 'numeric'


## read the test and train data
testdf <- read.table("X_test.txt", colClasses = cc)
traindf <- read.table("X_train.txt", colClasses = cc)
testsubs <- read.table("subject_test.txt", col.names = "subject")
trainsubs <- read.table("subject_train.txt", col.names = "subject")
testacts <- read.table("y_test.txt", col.names = "actid")
trainacts <- read.table("y_train.txt", col.names = "actid")


## read the activity label data
actlabels <- read.table("activity_labels.txt", 
                         col.names = c("actid", "activity"))

						 
## cbind the subject, activity and value data frames
testdf <- cbind(testsubs, testacts, testdf)
traindf <- cbind(trainsubs, trainacts, traindf)


## rbind the two datasets
alldf <- rbind(testdf, traindf)


## merge and re-order the values and the labels
## suppress warnings produced when dplyr calls bindrcpp package
mergedf <- merge(alldf, actlabels, by.x = "actid", by.y = "actid")
mergedf <- suppressWarnings(arrange(mergedf, mergedf$subject, mergedf$actid))
mergedf <- mergedf[,c(2, 1, 69, 3:68)]


## delete the actid column
mergedf$actid <- NULL


## rename the columns
colnames(mergedf) <- c("subject", "activity", featvec)


## group the data by subject and activity, and summarize by mean
summarized <- mergedf %>% group_by(subject, activity) %>% summarize_all(mean)


## write the data out as a text file without row names
write.table(summarized, "HAR_summarized_tidy.txt", row.names = FALSE)


## send completion message to console
message("Done. Output dataset file HAR_summarized_tidy.txt created.")
message("Note: use header=TRUE option when reading output file.")
