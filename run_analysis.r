#set the working directory
setwd("~/Documents/courses/dst3_get_clean/project")
#get the data
trainingset <- read.csv("UCI HAR Dataset/train/X_train.txt", sep="", header=FALSE)
testingset <- read.csv("UCI HAR Dataset/test/X_test.txt", sep="", header=FALSE)
#add Activity and Subject data
actcol<- length(testingset)+1
subcol<- length(testingset)+2
testingset[,actcol] <- read.csv("UCI HAR Dataset/test/y_test.txt", sep="", header=FALSE)
testingset[,subcol] <- read.csv("UCI HAR Dataset/test/subject_test.txt", sep="", header=FALSE)
trainingset[,actcol] <- read.csv("UCI HAR Dataset/train/y_train.txt", sep="", header=FALSE)
trainingset[,subcol] <- read.csv("UCI HAR Dataset/train/subject_train.txt", sep="", header=FALSE)

# Merge training and test sets together
wholeset <- rbind(trainingset, testingset)

#retrieve labels
activity_labels <- read.csv("UCI HAR Dataset/activity_labels.txt", sep="", header=FALSE)

#get the column names for the dataset, and format them to easily identify mean and stdev
feat_names <- read.csv("UCI HAR Dataset/features.txt", sep="", header=FALSE)
feat_names[,2] <- gsub('Mean', '_mean', feat_names[,2])
feat_names[,2] <- gsub('-mean', '_mean', feat_names[,2])
feat_names[,2] <- gsub('-std', '_std', feat_names[,2])

feat_names <- feat_names[grep(".*mean.*|.*std.*", feat_names[,2]),]
wholeset <- wholeset[,c(feat_names$V1, actcol, subcol)]
# put the features names as column names
colnames(wholeset) <- c(feat_names$V2, "activity", "subject")
# give appropriate names to the labels
actnum = 1
for (actlab in activity_labels$V2) {
  wholeset$activity <- gsub(actnum, actlab, wholeset$activity)
  actnum <- actnum + 1
}
wholeset$activity <- as.factor(wholeset$activity)
wholeset$subject <- as.factor(wholeset$subject)

tidyset <- aggregate(wholeset, by=list(activity = wholeset$activity, subject=wholeset$subject), mean)
# exclude the last 2 columns
colset <- length(tidyset) 
tidyset <- tidyset[,1:(colset-2)]
# write the data to a file
write.table(tidyset, "tidy.txt",row.names = FALSE, sep="\t")
## the tidy data can be read with the following command:
#data <- read.table("tidy.txt", header = TRUE)
#View(data)
