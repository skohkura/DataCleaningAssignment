The data was collected from an experiment involving 30 participants performing 6 types of physical activities. An embedded accelerometer and gyroscope measured 3-axial linear acceleration and 3-axial angular velocity.

The script run\_analysis.R results in 2 dataframes: data and data.means. data.means is a supplementary dataframe that contains the mean of variables in data grouped by participant-activity pairs.

The variables of the data are as follows:

-   subject: ID for the participant. Is an integer between 1 and 30 representing one of the 30 participants of the experiment.
-   activity: A factor representing one of the six possible activities that the subject performed during the experiment.

The rest of the variables are for various measurements made. Each variable has a column for both the mean and the standard deviation for the measurement. Every measurement is normalized and bounded within [-1,1], thus there are no units for these measurements because every value is a ratio.

-   tBodyAcc-XYZ: body accelerometer data in time domain, XYZ denoting one of the 3 axis
-   tGravityAcc-XYZ: gravity accelerometer data in time domain, XYZ denoting one of the 3 axis
-   tBodyAccJerk-XYZ: body accelerometer jerk data in time domain, XYZ denoting one of the 3 axis
-   tBodyGyro-XYZ: body gyroscope data in time domain, XYZ denoting one of the 3 axis
-   tBodyGyroJerk-XYZ: body gyroscope jerk data in time domain, XYZ denoting one of the 3 axis
-   tBodyAccMag: magnitude of body accelerometer data in time domain, calculated via Euclidian norm
-   tGravityAccMag: magnitude of gravity accelerometer data in time domain, calculated via Euclidian norm
-   tBodyAccJerkMag: magnitude of body accelerometer jerk data in time domain, calculated via Euclidian norm
-   tBodyGyroMag: magnitude of body gyroscope data in time domain, calculated via Euclidian norm
-   tBodyGyroJerkMag: magnitude of body gyroscope jerk data in time domain, calculated via Euclidian norm
-   fBodyAcc-XYZ: body accelerometer data in frequency domain, XYZ denoting one of the 3 axis
-   fBodyAccJerk-XYZ: body accelerometer jerk data in frequency domain, XYZ denoting one of the 3 axis
-   fBodyGyro-XYZ: body gyroscope data in frequency domain, XYZ denoting one of the 3 axis
-   fBodyAccMag: magnitude of body accelerometer data in frequency domain, calculated via Euclidian norm
-   fBodyAccJerkMag: magnitude of body accelerometer jerk data in frequency domain, calculated via Euclidian norm
-   fBodyGyroMag: magnitude of body gyroscope data in frequency domain, calculated via Euclidian norm
