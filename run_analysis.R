## For Details on Purpose and Use of This Script See: README.md and CodeBook.md

library(readr)
library(dplyr)

## Check that working directory is clean
if(length(list.files()) != 0){
  stop("Please create a clean working directory and try again")
}

## Download Data and Extract Only Requried Files
main.site <- "https://d396qusza40orc.cloudfront.net/"
download.file(
  paste0(main.site, "getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"),
  "0_accelerometer_data.zip", method = "curl")

folder <- "UCI HAR Dataset/"
extract.files <- c("test/X_test.txt", "test/subject_test.txt",
                   "test/y_test.txt", "train/X_train.txt",
                   "train/subject_train.txt", "train/y_train.txt",
                   "activity_labels.txt", "features.txt",
                   "features_info.txt", "README.txt")
extract.files <- lapply(extract.files, function(x) paste0(folder, x))
extract.files <- as.character(extract.files)

unzip(list.files()[1], files = extract.files, junkpaths = TRUE)
data.files <- list.files() # for easy reading below
rm(main.site, folder, extract.files)

## Load, select, and standardize features
features <- read_lines(data.files[4])
mean.std <- grep("mean\\(|std\\(", features) # identify mean and std only
features <- features[mean.std] # select only mean and std
features <- gsub("^\\d*\\st", "time.", tolower(features))
features <- gsub("^\\d*\\sf", "freq.", features)
features <- gsub("\\(\\)$", "", features)
features <- gsub("-|\\(\\)-", ".", features)

## Load data and Combine
measurements <- rbind(read_fwf(data.files[8], fwf_empty(data.files[8])),
                       read_fwf(data.files[9], fwf_empty(data.files[9]))) %>%
  select(mean.std)
names(measurements) <- features

subject <- c(read_lines(data.files[6]), read_lines(data.files[7]))
activity.id <- c(as.integer(read_lines(data.files[10])),
                    as.integer(read_lines(data.files[11])))

combined.data <- cbind(subject, activity.id, measurements)

## Clean up environment
rm(features, mean.std, measurements, subject, activity.id)

## Add activity descriptions
combined.data <- combined.data %>%
  left_join(read_table(data.files[2], col_names = c("activity.id", "activity")),
            by = "activity.id") %>% # read in and join activity decsription
  select(1, 69, 3:68) # reorder columns; drop activity ID

## Create new dataset with average per variable per subject
averages <- aggregate(combined.data[, 3:ncol(combined.data)],
                      by = list(subject = combined.data$subject,
                                activity = combined.data$activity), mean)

write_csv(averages, "activity_averages.csv")

## Clean Up
rm(data.files, combined.data, averages)