# Coursera *Getting and Cleaning Data* course project
***


## Source Data
***

The source data set this project uses was data collected from the accelerometers and gyroscope of the Samsung Galaxy S smartphone. A full description is available at the site 
where the data was obtained:

[Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data used specifically for this project:

[Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)


## Creating the data set 
***

The following instructions were given to complete this project: 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


The *run_analysis.R* script retrieves the source data and then transforms it, producing the final data set called *"tidy_data.txt"* (see the code book as well as the comments
in the script for further details).

The script produces the final data set following the below mentioned steps that are in accordance to the instructions provided:

- It downloads and unzips the source data if it doesn't already exist in the working directory.
- It reads data.
- Training and test data sets are then merged to one data set.
- From that one data set only the mean and standard deviation for each measurement is extracted.
- The activities in the data set are given descriptive names to make them self-explanatory.
- Similarly, the labels in the data set are also given descriptive variable names.
- A second, independent tidy set is created with the average of each variable for each activity and each subject.
- That second data set is then written to the `tidy_data.txt` file.


## Repository 
***

This repository contains the following files:

- `README.md`, provides an overview of the data set and how it was created.
- `tidy_data.txt`, contains the data set.
- `CodeBook.md`, describes the contents of the final data set (data, variables and transformations used to generate the data).
- `run_analysis.R`, the R script that was used to create the data set 


The `tidy_data.txt` in this repository was created by running the `run_analysis.R` script using R version 3.5.1 (2018-07-02) -- "Feather Spray" on Windows 8.1 64-bit edition.
The final data set contains 68 variables and 180 rows.