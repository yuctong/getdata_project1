# Code Book

## Data Source

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
(for more details read README.md)

## Raw Data
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

## Process
The script run_analysis.R loads all the raw data from the UCI HAR Dataset and merges all the train, test, subjects, variables descriptions and activities datasets into one dataset. Then it proceeds to extract the mean and standard deviation variables, which then saves as dataTidy.txt.
Afterwards, it performs a summary of dataTidy as the average of the variables per subject and variable and saves it as dataTidyMean.txt

# Variables
id    original name	tidy data name
1	tBodyAcc-mean()-X	Time.BodyAcc.Mean.X
2	tBodyAcc-mean()-Y	Time.BodyAcc.Mean.Y
3	tBodyAcc-mean()-Z	Time.BodyAcc.Mean.Z
4	tBodyAcc-std()-X	Time.BodyAcc.Std.X
5	tBodyAcc-std()-Y	Time.BodyAcc.Std.Y
6	tBodyAcc-std()-Z	Time.BodyAcc.Std.Z
41	tGravityAcc-mean()-X	Time.GravityAcc.Mean.X
42	tGravityAcc-mean()-Y	Time.GravityAcc.Mean.Y
43	tGravityAcc-mean()-Z	Time.GravityAcc.Mean.Z
44	tGravityAcc-std()-X	Time.GravityAcc.Std.X
45	tGravityAcc-std()-Y	Time.GravityAcc.Std.Y
46	tGravityAcc-std()-Z	Time.GravityAcc.Std.Z
81	tBodyAccJerk-mean()-X	Time.BodyAccJerk.Mean.X
82	tBodyAccJerk-mean()-Y	Time.BodyAccJerk.Mean.Y
83	tBodyAccJerk-mean()-Z	Time.BodyAccJerk.Mean.Z
84	tBodyAccJerk-std()-X	Time.BodyAccJerk.Std.X
85	tBodyAccJerk-std()-Y	Time.BodyAccJerk.Std.Y
86	tBodyAccJerk-std()-Z	Time.BodyAccJerk.Std.Z
121	tBodyGyro-mean()-X	Time.BodyGyro.Mean.X
122	tBodyGyro-mean()-Y	Time.BodyGyro.Mean.Y
123	tBodyGyro-mean()-Z	Time.BodyGyro.Mean.Z
124	tBodyGyro-std()-X	Time.BodyGyro.Std.X
125	tBodyGyro-std()-Y	Time.BodyGyro.Std.Y
126	tBodyGyro-std()-Z	Time.BodyGyro.Std.Z
161	tBodyGyroJerk-mean()-X	Time.BodyGyroJerk.Mean.X
162	tBodyGyroJerk-mean()-Y	Time.BodyGyroJerk.Mean.Y
163	tBodyGyroJerk-mean()-Z	Time.BodyGyroJerk.Mean.Z
164	tBodyGyroJerk-std()-X	Time.BodyGyroJerk.Std.X
165	tBodyGyroJerk-std()-Y	Time.BodyGyroJerk.Std.Y
166	tBodyGyroJerk-std()-Z	Time.BodyGyroJerk.Std.Z
201	tBodyAccMag-mean()	Time.BodyAccMag.Mean
202	tBodyAccMag-std()	Time.BodyAccMag.Std
214	tGravityAccMag-mean()	Time.GravityAccMag.Mean
215	tGravityAccMag-std()	Time.GravityAccMag.Std
227	tBodyAccJerkMag-mean()	Time.BodyAccJerkMag.Mean
228	tBodyAccJerkMag-std()	Time.BodyAccJerkMag.Std
240	tBodyGyroMag-mean()	Time.BodyGyroMag.Mean
241	tBodyGyroMag-std()	Time.BodyGyroMag.Std
253	tBodyGyroJerkMag-mean()	Time.BodyGyroJerkMag.Mean
254	tBodyGyroJerkMag-std()	Time.BodyGyroJerkMag.Std
266	fBodyAcc-mean()-X	FFT.BodyAcc.Mean.X
267	fBodyAcc-mean()-Y	FFT.BodyAcc.Mean.Y
268	fBodyAcc-mean()-Z	FFT.BodyAcc.Mean.Z
269	fBodyAcc-std()-X	FFT.BodyAcc.Std.X
270	fBodyAcc-std()-Y	FFT.BodyAcc.Std.Y
271	fBodyAcc-std()-Z	FFT.BodyAcc.Std.Z
345	fBodyAccJerk-mean()-X	FFT.BodyAccJerk.Mean.X
346	fBodyAccJerk-mean()-Y	FFT.BodyAccJerk.Mean.Y
347	fBodyAccJerk-mean()-Z	FFT.BodyAccJerk.Mean.Z
348	fBodyAccJerk-std()-X	FFT.BodyAccJerk.Std.X
349	fBodyAccJerk-std()-Y	FFT.BodyAccJerk.Std.Y
350	fBodyAccJerk-std()-Z	FFT.BodyAccJerk.Std.Z
424	fBodyGyro-mean()-X	FFT.BodyGyro.Mean.X
425	fBodyGyro-mean()-Y	FFT.BodyGyro.Mean.Y
426	fBodyGyro-mean()-Z	FFT.BodyGyro.Mean.Z
427	fBodyGyro-std()-X	FFT.BodyGyro.Std.X
428	fBodyGyro-std()-Y	FFT.BodyGyro.Std.Y
429	fBodyGyro-std()-Z	FFT.BodyGyro.Std.Z
503	fBodyAccMag-mean()	FFT.BodyAccMag.Mean
504	fBodyAccMag-std()	FFT.BodyAccMag.Std
516	fBodyBodyAccJerkMag-mean()	FFT.BodyBodyAccJerkMag.Mean
517	fBodyBodyAccJerkMag-std()	FFT.BodyBodyAccJerkMag.Std
529	fBodyBodyGyroMag-mean()	FFT.BodyBodyGyroMag.Mean
530	fBodyBodyGyroMag-std()	FFT.BodyBodyGyroMag.Std
542	fBodyBodyGyroJerkMag-mean()	FFT.BodyBodyGyroJerkMag.Mean
543	fBodyBodyGyroJerkMag-std()	FFT.BodyBodyGyroJerkMag.Std

