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

## Variables Transformation
<table>
<tr><td>original id</td><td>original name</td><td>descriptive name</td></tr>
<tr><td>1</td><td>"tBodyAcc-mean()-X"</td><td>"Time.BodyAcc.Mean.X</td></tr>
<tr><td>2</td><td>"tBodyAcc-mean()-Y"</td><td>"Time.BodyAcc.Mean.Y</td></tr>
<tr><td>3</td><td>"tBodyAcc-mean()-Z"</td><td>"Time.BodyAcc.Mean.Z</td></tr>
<tr><td>4</td><td>"tBodyAcc-std()-X"</td><td>"Time.BodyAcc.Std.X</td></tr>
<tr><td>5</td><td>"tBodyAcc-std()-Y"</td><td>"Time.BodyAcc.Std.Y</td></tr>
<tr><td>6</td><td>"tBodyAcc-std()-Z"</td><td>"Time.BodyAcc.Std.Z</td></tr>
<tr><td>41</td><td>"tGravityAcc-mean()-X"</td><td>"Time.GravityAcc.Mean.X</td></tr>
<tr><td>42</td><td>"tGravityAcc-mean()-Y"</td><td>"Time.GravityAcc.Mean.Y</td></tr>
<tr><td>43</td><td>"tGravityAcc-mean()-Z"</td><td>"Time.GravityAcc.Mean.Z</td></tr>
<tr><td>44</td><td>"tGravityAcc-std()-X"</td><td>"Time.GravityAcc.Std.X</td></tr>
<tr><td>45</td><td>"tGravityAcc-std()-Y"</td><td>"Time.GravityAcc.Std.Y</td></tr>
<tr><td>46</td><td>"tGravityAcc-std()-Z"</td><td>"Time.GravityAcc.Std.Z</td></tr>
<tr><td>81</td><td>"tBodyAccJerk-mean()-X"</td><td>"Time.BodyAccJerk.Mean.X</td></tr>
<tr><td>82</td><td>"tBodyAccJerk-mean()-Y"</td><td>"Time.BodyAccJerk.Mean.Y</td></tr>
<tr><td>83</td><td>"tBodyAccJerk-mean()-Z"</td><td>"Time.BodyAccJerk.Mean.Z</td></tr>
<tr><td>84</td><td>"tBodyAccJerk-std()-X"</td><td>"Time.BodyAccJerk.Std.X</td></tr>
<tr><td>85</td><td>"tBodyAccJerk-std()-Y"</td><td>"Time.BodyAccJerk.Std.Y</td></tr>
<tr><td>86</td><td>"tBodyAccJerk-std()-Z"</td><td>"Time.BodyAccJerk.Std.Z</td></tr>
<tr><td>121</td><td>"tBodyGyro-mean()-X"</td><td>"Time.BodyGyro.Mean.X</td></tr>
<tr><td>122</td><td>"tBodyGyro-mean()-Y"</td><td>"Time.BodyGyro.Mean.Y</td></tr>
<tr><td>123</td><td>"tBodyGyro-mean()-Z"</td><td>"Time.BodyGyro.Mean.Z</td></tr>
<tr><td>124</td><td>"tBodyGyro-std()-X"</td><td>"Time.BodyGyro.Std.X</td></tr>
<tr><td>125</td><td>"tBodyGyro-std()-Y"</td><td>"Time.BodyGyro.Std.Y</td></tr>
<tr><td>126</td><td>"tBodyGyro-std()-Z"</td><td>"Time.BodyGyro.Std.Z</td></tr>
<tr><td>161</td><td>"tBodyGyroJerk-mean()-X"</td><td>"Time.BodyGyroJerk.Mean.X</td></tr>
<tr><td>162</td><td>"tBodyGyroJerk-mean()-Y"</td><td>"Time.BodyGyroJerk.Mean.Y</td></tr>
<tr><td>163</td><td>"tBodyGyroJerk-mean()-Z"</td><td>"Time.BodyGyroJerk.Mean.Z</td></tr>
<tr><td>164</td><td>"tBodyGyroJerk-std()-X"</td><td>"Time.BodyGyroJerk.Std.X</td></tr>
<tr><td>165</td><td>"tBodyGyroJerk-std()-Y"</td><td>"Time.BodyGyroJerk.Std.Y</td></tr>
<tr><td>166</td><td>"tBodyGyroJerk-std()-Z"</td><td>"Time.BodyGyroJerk.Std.Z</td></tr>
<tr><td>201</td><td>"tBodyAccMag-mean()"</td><td>"Time.BodyAccMag.Mean</td></tr>
<tr><td>202</td><td>"tBodyAccMag-std()"</td><td>"Time.BodyAccMag.Std</td></tr>
<tr><td>214</td><td>"tGravityAccMag-mean()"</td><td>"Time.GravityAccMag.Mean</td></tr>
<tr><td>215</td><td>"tGravityAccMag-std()"</td><td>"Time.GravityAccMag.Std</td></tr>
<tr><td>227</td><td>"tBodyAccJerkMag-mean()"</td><td>"Time.BodyAccJerkMag.Mean</td></tr>
<tr><td>228</td><td>"tBodyAccJerkMag-std()"</td><td>"Time.BodyAccJerkMag.Std</td></tr>
<tr><td>240</td><td>"tBodyGyroMag-mean()"</td><td>"Time.BodyGyroMag.Mean</td></tr>
<tr><td>241</td><td>"tBodyGyroMag-std()"</td><td>"Time.BodyGyroMag.Std</td></tr>
<tr><td>253</td><td>"tBodyGyroJerkMag-mean()"</td><td>"Time.BodyGyroJerkMag.Mean</td></tr>
<tr><td>254</td><td>"tBodyGyroJerkMag-std()"</td><td>"Time.BodyGyroJerkMag.Std</td></tr>
<tr><td>266</td><td>"fBodyAcc-mean()-X"</td><td>"FFT.BodyAcc.Mean.X</td></tr>
<tr><td>267</td><td>"fBodyAcc-mean()-Y"</td><td>"FFT.BodyAcc.Mean.Y</td></tr>
<tr><td>268</td><td>"fBodyAcc-mean()-Z"</td><td>"FFT.BodyAcc.Mean.Z</td></tr>
<tr><td>269</td><td>"fBodyAcc-std()-X"</td><td>"FFT.BodyAcc.Std.X</td></tr>
<tr><td>270</td><td>"fBodyAcc-std()-Y"</td><td>"FFT.BodyAcc.Std.Y</td></tr>
<tr><td>271</td><td>"fBodyAcc-std()-Z"</td><td>"FFT.BodyAcc.Std.Z</td></tr>
<tr><td>345</td><td>"fBodyAccJerk-mean()-X"</td><td>"FFT.BodyAccJerk.Mean.X</td></tr>
<tr><td>346</td><td>"fBodyAccJerk-mean()-Y"</td><td>"FFT.BodyAccJerk.Mean.Y</td></tr>
<tr><td>347</td><td>"fBodyAccJerk-mean()-Z"</td><td>"FFT.BodyAccJerk.Mean.Z</td></tr>
<tr><td>348</td><td>"fBodyAccJerk-std()-X"</td><td>"FFT.BodyAccJerk.Std.X</td></tr>
<tr><td>349</td><td>"fBodyAccJerk-std()-Y"</td><td>"FFT.BodyAccJerk.Std.Y</td></tr>
<tr><td>350</td><td>"fBodyAccJerk-std()-Z"</td><td>"FFT.BodyAccJerk.Std.Z</td></tr>
<tr><td>424</td><td>"fBodyGyro-mean()-X"</td><td>"FFT.BodyGyro.Mean.X</td></tr>
<tr><td>425</td><td>"fBodyGyro-mean()-Y"</td><td>"FFT.BodyGyro.Mean.Y</td></tr>
<tr><td>426</td><td>"fBodyGyro-mean()-Z"</td><td>"FFT.BodyGyro.Mean.Z</td></tr>
<tr><td>427</td><td>"fBodyGyro-std()-X"</td><td>"FFT.BodyGyro.Std.X</td></tr>
<tr><td>428</td><td>"fBodyGyro-std()-Y"</td><td>"FFT.BodyGyro.Std.Y</td></tr>
<tr><td>429</td><td>"fBodyGyro-std()-Z"</td><td>"FFT.BodyGyro.Std.Z</td></tr>
<tr><td>503</td><td>"fBodyAccMag-mean()"</td><td>"FFT.BodyAccMag.Mean</td></tr>
<tr><td>504</td><td>"fBodyAccMag-std()"</td><td>"FFT.BodyAccMag.Std</td></tr>
<tr><td>516</td><td>"fBodyBodyAccJerkMag-mean()"</td><td>"FFT.BodyBodyAccJerkMag.Mean</td></tr>
<tr><td>517</td><td>"fBodyBodyAccJerkMag-std()"</td><td>"FFT.BodyBodyAccJerkMag.Std</td></tr>
<tr><td>529</td><td>"fBodyBodyGyroMag-mean()"</td><td>"FFT.BodyBodyGyroMag.Mean</td></tr>
<tr><td>530</td><td>"fBodyBodyGyroMag-std()"</td><td>"FFT.BodyBodyGyroMag.Std</td></tr>
<tr><td>542</td><td>"fBodyBodyGyroJerkMag-mean()"</td><td>"FFT.BodyBodyGyroJerkMag.Mean</td></tr>
<tr><td>543</td><td>"fBodyBodyGyroJerkMag-std()"</td><td>"FFT.BodyBodyGyroJerkMag.Std</td></tr>
<tr><td></td></tr>
</table>

# variables description
<table>
<tr><td>variable</td><td>class</td><td>description</td></tr>
<tr><td>subject</td><td>integer</td><td>Subject of the test</td></tr>
<tr><td>Time.BodyAcc.Mean.X</td><td>numeric</td><td>Time Body Acceleration Mean of axis X</td></tr>
<tr><td>Time.BodyAcc.Mean.Y</td><td>numeric</td><td>Time Body Acceleration Mean of axis Y</td></tr>
<tr><td>Time.BodyAcc.Mean.Z</td><td>numeric</td><td>Time Body Acceleration Mean of axis Z</td></tr>
<tr><td>Time.BodyAcc.Std.X</td><td>numeric</td><td>Time Body Acceleration Standard Deviation of axis X</td></tr>
<tr><td>Time.BodyAcc.Std.Y</td><td>numeric</td><td>Time Body Acceleration Standard Deviation of axis Y</td></tr>
<tr><td>Time.BodyAcc.Std.Z</td><td>numeric</td><td>Time Body Acceleration Standard Deviation of axis Z</td></tr>
<tr><td>Time.GravityAcc.Mean.X</td><td>numeric</td><td>Time Gravity Acceleration Mean of axis X</td></tr>
<tr><td>Time.GravityAcc.Mean.Y</td><td>numeric</td><td>Time Gravity Acceleration Mean of axis Y</td></tr>
<tr><td>Time.GravityAcc.Mean.Z</td><td>numeric</td><td>Time Gravity Acceleration Mean of axis Z</td></tr>
<tr><td>Time.GravityAcc.Std.X</td><td>numeric</td><td>Time Gravity Acceleration Standard Deviation of axis X</td></tr>
<tr><td>Time.GravityAcc.Std.Y</td><td>numeric</td><td>Time Gravity Acceleration Standard Deviation of axis Y</td></tr>
<tr><td>Time.GravityAcc.Std.Z</td><td>numeric</td><td>Time Gravity Acceleration Standard Deviation of axis Z</td></tr>
<tr><td>Time.BodyAccJerk.Mean.X</td><td>numeric</td><td>Time Body Acceleration Jerk Mean of axis X</td></tr>
<tr><td>Time.BodyAccJerk.Mean.Y</td><td>numeric</td><td>Time Body Acceleration Jerk Mean of axis Y</td></tr>
<tr><td>Time.BodyAccJerk.Mean.Z</td><td>numeric</td><td>Time Body Acceleration Jerk Mean of axis Z</td></tr>
<tr><td>Time.BodyAccJerk.Std.X</td><td>numeric</td><td>Time Body Acceleration Jerk Standard Deviation of axis X</td></tr>
<tr><td>Time.BodyAccJerk.Std.Y</td><td>numeric</td><td>Time Body Acceleration Jerk Standard Deviation of axis Y</td></tr>
<tr><td>Time.BodyAccJerk.Std.Z</td><td>numeric</td><td>Time Body Acceleration Jerk Standard Deviation of axis Z</td></tr>
<tr><td>Time.BodyGyro.Mean.X</td><td>numeric</td><td>Time Body Gyroscope Mean of axis X</td></tr>
<tr><td>Time.BodyGyro.Mean.Y</td><td>numeric</td><td>Time Body Gyroscope Mean of axis Y</td></tr>
<tr><td>Time.BodyGyro.Mean.Z</td><td>numeric</td><td>Time Body Gyroscope Mean of axis Z</td></tr>
<tr><td>Time.BodyGyro.Std.X</td><td>numeric</td><td>Time Body Gyroscope St. Deviation of axis X</td></tr>
<tr><td>Time.BodyGyro.Std.Y</td><td>numeric</td><td>Time Body Gyroscope St. Deviation of axis Y</td></tr>
<tr><td>Time.BodyGyro.Std.Z</td><td>numeric</td><td>Time Body Gyroscope St. Deviation of axis Z</td></tr>
<tr><td>Time.BodyGyroJerk.Mean.X</td><td>numeric</td><td>Time Body Gyroscope Jerk Mean of axis X</td></tr>
<tr><td>Time.BodyGyroJerk.Mean.Y</td><td>numeric</td><td>Time Body Gyroscope Jerk Mean of axis Y</td></tr>
<tr><td>Time.BodyGyroJerk.Mean.Z</td><td>numeric</td><td>Time Body Gyroscope Jerk Mean of axis Z</td></tr>
<tr><td>Time.BodyGyroJerk.Std.X</td><td>numeric</td><td>Time Body Gyroscope Jerk St. Deviation of axis X</td></tr>
<tr><td>Time.BodyGyroJerk.Std.Y</td><td>numeric</td><td>Time Body Gyroscope Jerk St. Deviation of axis Y</td></tr>
<tr><td>Time.BodyGyroJerk.Std.Z</td><td>numeric</td><td>Time Body Gyroscope Jerk St. Deviation of axis Z</td></tr>
<tr><td>Time.BodyAccMag.Mean</td><td>numeric</td><td>Time Body Acceleration Euclidean Norm Mean</td></tr>
<tr><td>Time.BodyAccMag.Std</td><td>numeric</td><td>Time Body Acceleration Euclidean Norm St.Dev</td></tr>
<tr><td>Time.GravityAccMag.Mean</td><td>numeric</td><td>Time Gravity Acceleration Euclidean Norm Mean</td></tr>
<tr><td>Time.GravityAccMag.Std</td><td>numeric</td><td>Time Gravity Acceleration Euclidean Norm St.Dev</td></tr>
<tr><td>Time.BodyAccJerkMag.Mean</td><td>numeric</td><td>Time Body Acceleration Jerk Euclidean Norm Mean</td></tr>
<tr><td>Time.BodyAccJerkMag.Std</td><td>numeric</td><td>Time Body Acceleration Jerk Euclidean Norm St.Dev</td></tr>
<tr><td>Time.BodyGyroMag.Mean</td><td>numeric</td><td>Time Body Gyroscope Euclidean Norm Mean</td></tr>
<tr><td>Time.BodyGyroMag.Std</td><td>numeric</td><td>Time Body Gyroscope Euclidean Norm St.Dev</td></tr>
<tr><td>Time.BodyGyroJerkMag.Mean</td><td>numeric</td><td>Time Body Gyroscope Euclidean Norm Jerk Mean</td></tr>
<tr><td>Time.BodyGyroJerkMag.Std</td><td>numeric</td><td>Time Body Gyroscope Euclidean Norm Jerk St.Dev</td></tr>
<tr><td>FFT.BodyAcc.Mean.X</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAcc.Mean.Y</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAcc.Mean.Z</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAcc.Std.X</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAcc.Std.Y</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAcc.Std.Z</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration</td></tr>
<tr><td>FFT.BodyAccJerk.Mean.X</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyAccJerk.Mean.Y</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyAccJerk.Mean.Z</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyAccJerk.Std.X</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyAccJerk.Std.Y</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyAccJerk.Std.Z</td><td>numeric</td><td>Fast Fourier Transform of Body Acceleration Jerk</td></tr>
<tr><td>FFT.BodyGyro.Mean.X</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyGyro.Mean.Y</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyGyro.Mean.Z</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyGyro.Std.X</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyGyro.Std.Y</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyGyro.Std.Z</td><td>numeric</td><td>Fast Fourier Transform of Gyroscope</td></tr>
<tr><td>FFT.BodyAccMag.Mean</td><td>numeric</td><td>Fast Fourier Transform Body Acceleration Euclidean norm</td></tr>
<tr><td>FFT.BodyAccMag.Std</td><td>numeric</td><td>Fast Fourier Transform Body Acceleration Euclidean norm</td></tr>
<tr><td>FFT.BodyBodyAccJerkMag.Mean</td><td>numeric</td><td>Fast Fourier Transform Body Acceleration Jerk Euclidean norm</td></tr>
<tr><td>FFT.BodyBodyAccJerkMag.Std</td><td>numeric</td><td>Fast Fourier Transform Body Acceleration Jerk Euclidean norm</td></tr>
<tr><td>FFT.BodyBodyGyroMag.Mean</td><td>numeric</td><td>Fast Fourier Transform of Body Gyroscope Euclidean Norm</td></tr>
<tr><td>FFT.BodyBodyGyroMag.Std</td><td>numeric</td><td>Fast Fourier Transform of Body Gyroscope Euclidean Norm</td></tr>
<tr><td>FFT.BodyBodyGyroJerkMag.Mean</td><td>numeric</td><td>Fast Fourier Transform of Body Gyroscope Jerk Euclidean Norm</td></tr>
<tr><td>FFT.BodyBodyGyroJerkMag.Std</td><td>numeric</td><td>Fast Fourier Transform of Body Gyroscope Jerk Euclidean Norm</td></tr>
<tr><td>activity.name</td><td>character</td><td>description of the activity being done by the subject</td></tr>
<tr><td></td></tr>
</table>


# data.tidy dataset
Where each row is an observation of a given subject and activity for the variables

# data.tidyMean dataset
Where each row is the mean of the variables per subject and activity.




