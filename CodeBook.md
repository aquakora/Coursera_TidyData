# Codebook for activity_averages.csv - Output from run_analysis.R
This codebook is a reference file for the file: averages.csv
File source: run_analysis.R script
For details on the script, original data source, etc. see the README.md file. For complete details on the original data, see the README.txt file that accomplanies the data.

### File Properties
**Name:** activity_averages
**Format:** comma seperated values (.csv)
**Size:** 224kB
**Rows:** 180
**Columns:** 68

## Variables
### Identifiers
| Name | Definition | Type | Value Ranges |
| --- | --- | --- | --- |
| subject |	subject ID | integer | 1 - 30 |
| activity  | name of activity | character | LAYING; SITTING; STANDING; WALKING; WALKING_DOWNSTAIRS; WALKING_UPSTAIRS |


### Measurement Means
All measurement means are of type double
| Name | Source Feature | Source Feature Number |
| --- | --- | --- |
| time.bodyacc.mean.x | tBodyAcc-mean()-X | 1 | 
| time.bodyacc.mean.y | tBodyAcc-mean()-Y | 2 |
| time.bodyacc.mean.z | tBodyAcc-mean()-Z | 3 |
| time.bodyacc.std.x | tBodyAcc-std()-X | 4 |
| time.bodyacc.std.y | tBodyAcc-std()-Y | 5 |
| time.bodyacc.std.z | tBodyAcc-std()-Z | 6 |
| time.gravityacc.mean.x | tGravityAcc-mean()-X | 41 |
| time.gravityacc.mean.y | tGravityAcc-mean()-Y | 42 |
| time.gravityacc.mean.z | tGravityAcc-mean()-Z | 43 |
| time.gravityacc.std.x | tGravityAcc-std()-X | 44 |
| time.gravityacc.std.y | tGravityAcc-std()-Y  | 45 |
| time.gravityacc.std.z | tGravityAcc-std()-Z | 46 |
| time.bodyaccjerk.mean.x | tBodyAccJerk-mean()-X | 81 |
| time.bodyaccjerk.mean.y | tBodyAccJerk-mean()-Y | 82 |
| time.bodyaccjerk.mean.z | tBodyAccJerk-mean()-Z | 83 |
| time.bodyaccjerk.std.x | tBodyAccJerk-std()-X | 84 |
| time.bodyaccjerk.std.y | tBodyAccJerk-std()-Y | 85 |
| time.bodyaccjerk.std.z | tBodyAccJerk-std()-Z | 86 |
| time.bodygyro.mean.x | tBodyGyro-mean()-X | 121 |
| time.bodygyro.mean.y | tBodyGyro-mean()-Y | 122 |
| time.bodygyro.mean.z | tBodyGyro-mean()-Z | 123 |
| time.bodygyro.std.x | tBodyGyro-std()-X | 124 |
| time.bodygyro.std.y | tBodyGyro-std()-Y | 125 |
| time.bodygyro.std.z | tBodyGyro-std()-Z | 126 |
| time.bodygyrojerk.mean.x | tBodyGyroJerk-mean()-X | 161 |
| time.bodygyrojerk.mean.y | tBodyGyroJerk-mean()-Y | 162 |
| time.bodygyrojerk.mean.z | tBodyGyroJerk-mean()-Z | 163 |
| time.bodygyrojerk.std.x | tBodyGyroJerk-std()-X | 164 |
| time.bodygyrojerk.std.y | tBodyGyroJerk-std()-Y | 165 |
| time.bodygyrojerk.std.z | tBodyGyroJerk-std()-Z | 166 |
| time.bodyaccmag.mean | tBodyAccMag-mean() | 201 |
| time.bodyaccmag.std | tBodyAccMag-std() | 202 |
| time.gravityaccmag.mean | tGravityAccMag-mean() | 214 |
| time.gravityaccmag.std | tGravityAccMag-std() | 215 |
| time.bodyaccjerkmag.mean | tBodyAccJerkMag-mean() |227 |
| time.bodyaccjerkmag.std | tBodyAccJerkMag-std() | 228 |
| time.bodygyromag.mean | tBodyGyroMag-mean() | 240 |
| time.bodygyromag.std | tBodyGyroMag-std() | 241 |
| time.bodygyrojerkmag.mean | tBodyGyroJerkMag-mean() | 253 |
| time.bodygyrojerkmag.std  | tBodyGyroJerkMag-std() | 254 |
| freq.bodyacc.mean.x | fBodyAcc-mean()-X | 266 |
| freq.bodyacc.mean.y | fBodyAcc-mean()-Y | 267 |
| freq.bodyacc.mean.z | fBodyAcc-mean()-Z | 268 |
| freq.bodyacc.std.x | fBodyAcc-std()-X | 269 |
| freq.bodyacc.std.y | fBodyAcc-std()-Y | 270 |
| freq.bodyacc.std.z | fBodyAcc-std()-Z | 271 |
| freq.bodyaccjerk.mean.x | fBodyAccJerk-mean()-X | 345 |
| freq.bodyaccjerk.mean.y | fBodyAccJerk-mean()-Y | 346 |
| freq.bodyaccjerk.mean.z | fBodyAccJerk-mean()-Z | 347 |
| freq.bodyaccjerk.std.x | fBodyAccJerk-std()-X | 348 |
| freq.bodyaccjerk.std.y | fBodyAccJerk-std()-Y | 349 |
| freq.bodyaccjerk.std.z | fBodyAccJerk-std()-Z | 350 |
| freq.bodygyro.mean.x | fBodyGyro-mean()-X | 424 |
| freq.bodygyro.mean.y | fBodyGyro-mean()-Y | 425 |
| freq.bodygyro.mean.z | fBodyGyro-mean()-Z | 426 |
| freq.bodygyro.std.x  | fBodyGyro-std()-X | 427 |
| freq.bodygyro.std.y  | fBodyGyro-std()-Y | 428 |
| freq.bodygyro.std.z  | fBodyGyro-std()-Z | 429 |
| freq.bodyaccmag.mean | fBodyAccMag-mean() | 503 |
| freq.bodyaccmag.std  | fBodyAccMag-std() | 504 |
| freq.bodybodyaccjerkmag.mean | fBodyBodyAccJerkMag-mean() | 516 |
| freq.bodybodyaccjerkmag.std  | fBodyBodyAccJerkMag-std() | 517 |
| freq.bodybodygyromag.mean | fBodyBodyGyroMag-mean() | 529 |
| freq.bodybodygyromag.std  | fBodyBodyGyroMag-std() | 530 |
| freq.bodybodygyrojerkmag.mean | fBodyBodyGyroJerkMag-mean() | 542 |
| freq.bodybodygyrojerkmag.std  | fBodyBodyGyroJerkMag-std() | 543 |
