## Getting and Cleaning Data Project

The data linked represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data Source:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

This project will perform the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

## Script

The scripts used to process the raw data is called run_analysis.R and uses the reshape2 library for some functions. 
It process the raw data of training and tests and uses only the variables of mean and standard deviation.
To run the script you need to set the working directory to the folder where the unzipped files have been located.

## Return
The script return two text files:
1. dataTidy.txt      -> tidy data with variables of mean and std
2. dataTidyMean.txt  -> tidy data with the average of each variable for each activity and each subject
