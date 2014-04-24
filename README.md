Getting_and_Cleaning_Data_Project
=================================

User Guide:
1, put directory "UCI HAR Dataset" in your working directory.
    you can use following commands to get your current working directory and to change it.
getwd() will give you current working directory
setwd("target_working_directory")  will change to working directory between ""

2, Run the script in Rstudio or R then you have 6 tidy data in your workspace for the next step use:
total : The from origin data, and its colomns have been well modified.
total_mean_std : The extracted mean and std from origin data, and its colomns have been well modified.
total_with_label : The origin data with label indicates from who the data came from in case you will need to identify who the result came from.

total_mean : independent tidy data set w ith the average of each variable for each activity and each subject. For personal uncertainly about the meaning of requirement 5, I also gave another 2 total_mean version in order to include the satisfying answer.
total_colmeans : The mean value for each colomun in total data.
total_rowmeans : The mean value for each row in total data.


3, apart from data in the workspace, you will also have 4 data text file in your working directory:
tidy_data-total.txt
tidy_data-total_mean_std.txt
tidy_data-total_with_label.txt
tidy_data-total_mean.txt
tidy_data-total_colmeans.txt
tidy_data-total_rowmeans.txt

4, For future use, it will be simply run the following script code:
total_mean <- read.table("tidy_data-total_mean.txt")
total_colmeans <- read.table("tidy_data-total_colmeans.txt")
total_rowmeans <- read.table("tidy_data-total_rowmeans.txt")
total_mean_std <- read.table("tidy_data-total_mean_std.txt")
total_with_label <- read.table("tidy_data-total_with_label.txt")
total <- read.table("tidy_data-total.txt")

