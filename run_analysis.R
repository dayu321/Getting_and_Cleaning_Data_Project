





test <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_label <- read.table("./UCI HAR Dataset/test/y_test.txt")
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
train_label <- read.table("./UCI HAR Dataset/train/y_train.txt")

label <- rbind(test_label, train_label)
total <- rbind(test, train)

features <- read.table("./UCI HAR Dataset/features.txt")
features_name <- as.character(features$V2)
total_mean_std_cols <- (grepl("mean[(][)]", features_name) | grepl("std[(][)]", features_name))
total_mean_cols <- grepl("mean[(][)]", features_name)

features_name <- gsub("^angle[(]", "", features_name)
features_name <- gsub("^t", "Time domain ", features_name)
features_name <- gsub("^f", "Frequency domain ", features_name)
features_name <- gsub("^f", "Frequency domain ", features_name)
features_name <- gsub("Acc", " Acceleration ", features_name)
features_name <- gsub("Gyro", " Angular velocity ", features_name)
features_name <- gsub("Jerk", "Jerk signals ", features_name)
features_name <- gsub("Mag", "Magnitude ", features_name)
features_name <- gsub("-mean[(][)]", "Mean value", features_name)
features_name <- gsub("-std[(][)]", "Standard deviation", features_name)
features_name <- gsub("-mad[(][)]", "Median absolute deviation", features_name)
features_name <- gsub("-max[(][)]", "Largest value", features_name)
features_name <- gsub("-min[(][)]", "Smallest value", features_name)
features_name <- gsub("-sma[(][)]", "Signal magnitude area", features_name)
features_name <- gsub("-energy[(][)]", "Energy measure", features_name)
features_name <- gsub("-iqr[(][)]", "Interquartile range", features_name)
features_name <- gsub("-entropy[(][)]", "Signal entropy", features_name)
features_name <- gsub("-arCoeff[(][)]", "Autorregresion coefficients", features_name)
features_name <- gsub("-correlation[(][)]", "correlation coefficient", features_name)
features_name <- gsub("-maxInds[(][)]", "index of the frequency component with largest magnitude", features_name)
features_name <- gsub("-meanFreq[(][)]", "Weighted average of the frequency components", features_name)
features_name <- gsub("-skewness[(][)]", "skewness", features_name)
features_name <- gsub("-kurtosis[(][)]", "kurtosis", features_name)
features_name <- gsub("-bandsEnergy[(][)]", "Energy of a frequency interval", features_name)
features_name <- gsub("interval-", "interval ", features_name)
features_name <- gsub("-angle[(][)]", "Angle", features_name)
features_name <- gsub("-X", " of X", features_name)
features_name <- gsub("-Y", " of Y", features_name)
features_name <- gsub("-Z", " of Z", features_name)
features_name <- gsub("[)]?,gravityMean[)]", " averaging in a signal window sample with Gravity mean", features_name)
features_name <- gsub("[)]$", "", features_name)
names(total) <- features_name

total_mean_std <- total[, total_mean_std_cols]
total_mean <- total[, total_mean_cols]
total_with_label <- cbind(label$V1, total)
names(total_with_label)[1] <- "The number of the Person where Data came from"


write.table(total_mean, file = "tidy_data-total_mean.txt")
write.table(total_mean_std, file = "tidy_data-total_mean_std.txt")
write.table(total_with_label, file = "tidy_data-total_with_label.txt")
write.table(total, file = "tidy_data-total.txt")




