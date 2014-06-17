library(reshape2)

mainFolder="UCI HAR Dataset/"
testFolder="UCI HAR Dataset/test/"
trainFolder="UCI HAR Dataset/train/"

## Load Global data
# Activity Labels
activity_labels <- read.table(paste(mainFolder,
                                    "activity_labels.txt", sep=""),
                              stringsAsFactors = FALSE,
                              col.names=c("id","activity"))

# Features List
features <- read.table(paste(mainFolder,
                             "features.txt", sep=""),
                       stringsAsFactors = FALSE,
                       col.names=c("id","feature"))

## Load Test Data
# Subjects from Test data
subject_test <- read.table(paste(testFolder,
                             "subject_test.txt", sep=""),
                           stringsAsFactors = FALSE,
                           col.names="subject")

# X Test Data
X_test <- read.table(paste(testFolder,
                                 "X_test.txt", sep=""),
                     stringsAsFactors = FALSE)

# Y Test data (id of activity being done)
y_test <- read.table(paste(testFolder,
                           "y_test.txt", sep=""),
                     stringsAsFactors = FALSE,
                     col.names="activity.id")

# Merge Test Data
data.test<-cbind(subject_test,y_test,X_test)


## Load Training Data
# Subjects from Train data
subject_train <- read.table(paste(trainFolder,
                                 "subject_train.txt", sep=""),
                           stringsAsFactors = FALSE,
                           col.names="subject")

# X Train Data
X_train <- read.table(paste(trainFolder,
                           "X_train.txt", sep=""),
                     stringsAsFactors = FALSE)

# Y Train data (id of activity being done)
y_train <- read.table(paste(trainFolder,
                           "y_train.txt", sep=""),
                     stringsAsFactors = FALSE,
                     col.names="activity.id")

# Merge Train Data
data.train<-cbind(subject_train,y_train,X_train)

## 1.Merges the training and the test sets to create one data set.
data.set<-rbind(data.test,data.train)

## 2. Extracts only the measurements on the mean and standard deviation 
##    for each measurement.
index<-lapply(c('mean()','std()'),grep,x=features[,2],fixed=TRUE)
index<-sort(c(index[[1]],index[[2]]))
data.tidy<-data.set[,c(1,2,index+2)]

## 3. Uses descriptive activity names to name the activities in the data set
featSel<-features[index,]
featSel$descr.name<-featSel$feature
featSel$descr.name <- gsub("tBody", "Time.Body", featSel$descr.name)
featSel$descr.name <- gsub("tGravity", "Time.Gravity", featSel$descr.name)
featSel$descr.name <- gsub("fBody", "FFT.Body", featSel$descr.name)
featSel$descr.name <- gsub("fGravity", "FFT.Gravity", featSel$descr.name)
featSel$descr.name <- gsub("-mean()-", ".Mean.", featSel$descr.name,fixed=T)
featSel$descr.name <- gsub("-std()-", ".Std.", featSel$descr.name,fixed=T)
featSel$descr.name <- gsub("-mean()", ".Mean", featSel$descr.name,fixed=T)
featSel$descr.name <- gsub("-std()", ".Std", featSel$descr.name,fixed=T)

data.tidy<-merge(data.tidy,activity_labels,by.x="activity.id",by.y="id")

## 4. Appropriately labels the data set with descriptive variable names. 
names(data.tidy)<-c("activity.id","subject",featSel$descr.name,"activity.name")
data.tidy$activity.id<-NULL

## 5. Creates a second, independent tidy data set with the average 
##    of each variable for each activity and each subject. 
tidy.melt <-melt(data.tidy,id.vars=c("activity.name","subject"))

data.tidyMean <-dcast(tidy.melt,subject+activity.name~variable,mean)

write.csv(data.tidy, file = "dataTidy.txt",row.names = FALSE)
write.csv(data.tidyMean, file = "dataTidyMean.txt",row.names = FALSE)


