library(dplyr)

# 0. Reading and assigning datasets to tables with readable naming

# Read variable names
variable_names <- read.table("./UCI HAR Dataset/features.txt", col.names = c("n","functions"))

# Read activity labels
activity_labels <-  read.table("./UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

# Read train datasets
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = variable_names$functions)
Y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "code")
subj_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject")

# Read test datasets
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = variable_names$functions)
Y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "code")
subj_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject")

# 1. Merges the training and the test sets to create one data set.
X_total <- rbind(X_train, X_test)
Y_total <- rbind(Y_train, Y_test)
subj_total <- rbind(subj_train, subj_test)
merged_data <- cbind(subj_total, X_total, Y_total)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
tidy_data <- merged_data %>% 
  select(subject, code, contains("mean"), contains("std"))

# 3. Uses descriptive activity names to name the activities in the data set
tidy_data$code <- activity_labels[tidy_data$code, 2]

# 4. Appropriately labels the data set with descriptive variable names.
names(tidy_data)[2] = "activity"
names(tidy_data) <- gsub("Acc", "Accelerometer", names(tidy_data))
names(tidy_data) <- gsub("Gyro", "Gyroscope", names(tidy_data))
names(tidy_data) <- gsub("BodyBody", "Body", names(tidy_data))
names(tidy_data) <- gsub("Mag", "Magnitude", names(tidy_data))
names(tidy_data) <- gsub("^t", "Time", names(tidy_data))
names(tidy_data) <- gsub("^f", "Frequency", names(tidy_data))
names(tidy_data) <- gsub("tBody", "TimeBody", names(tidy_data))
names(tidy_data) <- gsub("-mean()", "Mean", names(tidy_data), ignore.case = TRUE)
names(tidy_data) <- gsub("-std()", "STD", names(tidy_data), ignore.case = TRUE)
names(tidy_data) <- gsub("-freq()", "Frequency", names(tidy_data), ignore.case = TRUE)
names(tidy_data) <- gsub("angle", "Angle", names(tidy_data))
names(tidy_data) <- gsub("gravity", "Gravity", names(tidy_data))

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final_data <- tidy_data %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))
write.table(final_data, "final_data.txt", row.name=FALSE)
str(final_data)
