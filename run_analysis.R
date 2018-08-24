#downloading and unzipping dataset

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"


if(!file.exists("Dataset.zip")){
  
         download.file(fileUrl,destfile="Dataset.zip")
         unzip(zipfile="Dataset.zip")
}

#-------------------------------------------------------------------------------

#reading data from dataset


#reading the training data
training_subjects <-read.table("./UCI HAR Dataset/train/subject_train.txt")
training_values <- read.table("./UCI HAR Dataset/train/X_train.txt")
training_activity <- read.table("./UCI HAR Dataset/train/y_train.txt")



#reading the testing data
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_values <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt")

#reading the feature labels

feature <- read.table("./UCI HAR Dataset/features.txt", as.is = TRUE)

#reading the activity labels

activity <- read.table("./UCI HAR Dataset/activity_labels.txt")


#-------------------------------------------------------------------------------
# Merging the training and the test sets to create one data set.

train_table <- cbind(training_subjects,training_values,training_activity)
test_table <- cbind(test_subjects,test_values,test_activity)

merged_data <- rbind(train_table, test_table)

#removing all initial tables as they are no longer needed

rm(train_table, test_table, training_activity, training_subjects, 
   training_values, test_activity, test_subjects, test_values)

#assigning appropriate column names

colnames(merged_data) <- c("subject", feature[,2], "activity")

needed_columns<-feature$V2[grep("mean\\(\\)|std\\(\\)",feature$V2)]

needed_columns <- c(as.character(needed_columns), "subject", "activity")

merged_data<-subset(merged_data, select=needed_columns)


#-------------------------------------------------------------------------------

#Extracting the mean and standard deviation for each measurement.

required_columns <- grepl("subject|activity|mean|std", colnames(merged_data))


#updated merged table with only the required columns

merged_data <- merged_data[, required_columns]


#-------------------------------------------------------------------------------

#Using descriptive activity names to name the activities in the data set

merged_data$activity <- factor(merged_data$activity, levels=activity[,1], 
                               labels = activity[,2])


#-------------------------------------------------------------------------------

#Labelling the merged dataset with descriptive variable names

colNames <- colnames(merged_data)


colNames <- gsub("mean", ".Mean", colNames)
colNames <- gsub("std", ".StandardDeviation", colNames)
colNames <- gsub("Freq", "Frequency", colNames)
colNames <- gsub("^t", "TimeDomain", colNames)
colNames <- gsub("^f", "FrequencyDomain", colNames)
colNames <- gsub("Mag", "Magnitude", colNames)
colNames <- gsub("Gyro", "Gyroscope", colNames)
colNames <- gsub("Acc", "Acceleration", colNames)
colNames <- gsub("BodyBody", "Body", colNames)
colNames <- gsub("tbody", "TimeBody", colNames)


colNames <- gsub("[\\(\\)-]" , "", colNames)

colnames(merged_data)<-colNames
#-------------------------------------------------------------------------------

#Taking the average of each variable for each activity & each subject.

tidy_set <- reshape2::melt(merged_data, id = c('subject', 'activity'))

tidy_set <- reshape2::dcast(tidy_set, subject + activity ~ variable, mean)


write.table(tidy_set, "tidy_data.txt", row.names = FALSE, quote = FALSE)




