This repository contains run\_analysis.R, an R script that converts the UCI HAR Dataset into 2 tidy dataframes: data and data.means. data contains both the training and test data and only retains the variables of the raw data that are of the mean and standard deviation of measurements while adding extra variables for the subject and activity. data.means records the means of every measurement variable in data grouped by subject-activity pairs.

run\_analysis.R assumes the UCI HAR Dataset is in the same directory as the script.

codebook.md is a markdown file that explains the data and its variables.
