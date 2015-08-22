# Source data: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# This run_analysis.R does the following:


# 1. Merges the training and the test sets to create one data set.
X <- rbind(read.table("train/X_train.txt"), read.table("test/X_test.txt"))
S <- rbind(read.table("train/subject_train.txt"),  read.table("test/subject_test.txt"))
Y <- rbind(read.table("train/y_train.txt"), read.table("test/y_test.txt"))


# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
index <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, index]
names(X) <- features[index, 2]
names(X) <- gsub("\\(|\\)", "", names(X))
names(X) <- tolower(names(X))


# 3. Uses descriptive activity names to name the activities in the data set.
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", tolower(as.character(activities[, 2])))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "activity"


# 4. Appropriately labels the data set with descriptive activity names.
names(S) <- "subject"
cleaned <- cbind(S, Y, X)
write.table(cleaned, "merged_clean_data.txt")


# 5. Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.
Subjects = unique(S)[,1]
numofSubjects = length(unique(S)[,1])
numofActivities = length(activities[,1])
numofCols = dim(cleaned)[2]
result = cleaned[1:(numofSubjects*numofActivities), ]

row = 1
for (s in 1:numofSubjects) {
  for (a in 1:numofActivities) {
    result[row, 1] = Subjects[s]
    result[row, 2] = activities[a, 2]
    tmp <- cleaned[cleaned$subject==s & cleaned$activity==activities[a, 2], ]
    result[row, 3:numofCols] <- colMeans(tmp[, 3:numofCols])
    row = row+1
  }
}
write.table(result, "tidy_data_set_with_the_average.txt",row.name = FALSE)
