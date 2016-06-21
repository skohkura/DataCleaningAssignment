
library(dplyr)

dir = "UCI HAR Dataset/"

# Read in all the relevant raw data
features <- read.table(paste0(dir, "features.txt"))
activity_labels <- read.table(paste0(dir, "activity_labels.txt"))
subject_train <- read.table(paste0(dir, "train/subject_train.txt"))
x_train <- read.table(paste0(dir, "train/X_train.txt"))
y_train <- read.table(paste0(dir, "train/y_train.txt"))
subject_test <- read.table(paste0(dir, "test/subject_test.txt"))
x_test <- read.table(paste0(dir, "test/X_test.txt"))
y_test <- read.table(paste0(dir, "test/y_test.txt"))

# Find indices of all variables in X that are the mean or standard deviation of some measurement
# and store variable names of result in vars
indices <- grep("mean\\(|std\\(", features[,2])
vars <- as.character(features[indices, 2])

# Remove unneeded variables from x
x_train <- x_train[,indices]
x_test <- x_test[,indices]

# Add columns for subject and label to front of train and test data, and add these new variables to vars
train <- cbind(subject_train, y_train, x_train)
test <- cbind(subject_test, y_test, x_test)
vars <- c("subject", "activity", vars)

# Combine the train and test data into a single dataframe
data <- rbind(train, test)

# Give the columns of data appropriate variable names
colnames(data) <- vars

# Replace values in the activity variable with appropriate activity name
data <- mutate(data, activity = activity_labels[,2][as.factor(activity)])

# Create separate dataframe containing average of each variable for each subject-activity pair
grouped <- group_by(data, subject, activity)
data.means <- summarize_each(grouped, funs(mean))

# Remove all intermediary objects created, leaving only the 2 tidy datasets in environment
rm(activity_labels, features, subject_test, subject_train, test, train, x_test, x_train, y_test, y_train, dir, indices, 
   vars, grouped)

# Write dataframes to .txt files
write.table(data, file="data.txt", row.name = FALSE)
write.table(data.means, file="datameans.txt", row.name = FALSE)