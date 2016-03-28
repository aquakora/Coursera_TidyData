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
