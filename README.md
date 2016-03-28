# README
This is the README file for the run_analysis.R script and it's output activity_averages.csv
For complete details on source data see the README.txt file included with the original data
For details on activity_averages.csv see CodeBook.md

## Script Purpose
Create a new dataset containing the average of each variable selected from the original data set for each activity and each subject.

## Requirements
This script assumes you are running OS X.
- An empty working directory.
- libraries: readr & tidyr

## Script Variables
- main.site: the main site containing the data to download
- folder: the folder inside the zip file that contains the files needed
- extract.files: the files, with subfolders if necessary, to extract from the zip file
- data.files: all the files in the working directory after downloading and unzipping the source data
- features: 561 features from features.txt
- mead.std: identifiers for features containing *mean* or *std* (standard deviation) in their name
- measurements: measurement data from files X_test.txt & X_train.txt
- subject: subject ids from files subject_test.txt & subject_train.txt
- activity.id: activity ids from files y_test.txt & y_train.txt
- combined.data: subject + activity.id + measurements
- averages: the mean of each of the 66 features selected, calculated by activity by subject

## Source Data
Original data: accelerometer data collected from the Samsung Galaxy S.
Variables selected: all mean and standard deviation variables identified with mean() & std().

Summary of features:
Prefix 't' denotes time.
Prefix 'f' denotes frequency.
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
Additional features obtained by averaging the signals in a sample window.

Examples:
tBodyAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

**It is not necessary to download the source file in advance.** The script will download and unzip the data.
Details: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## License
See README.txt with the original dataset for license details
