Getting_and_Cleaning_Data_Project
=================================
</br>    
User Guide:</br>    
1, put directory "UCI HAR Dataset" in your working directory.</br>    
    you can use following commands to get your current working directory and to change it.</br>    
getwd() will give you current working directory</br>    
setwd("target_working_directory")  will change to working directory between ""</br>    
</br>    
2, Run the script in Rstudio or R then you have 6 tidy data in your workspace for the next step use:</br>    
total : target tidy data. modified from origin data, and its colomns have been well named.</br>    
total_mean_std : The extracted mean and std from origin data, and its colomns have been well named.</br>    
total_with_label : The origin data with label indicates from who the data came from in case you will need to identify who</br>      the result was came from.</br>    

total_mean : independent tidy data set w ith the average of each variable for each activity and each subject. For personal uncertainly about the meaning of requirement 5, I also gave another 2 total_mean version in order to include the satisfying answer.</br>      
total_colmeans : The mean value for each colomun in total data.</br>    
total_rowmeans : The mean value for each row in total data.</br>    
    
     
3, apart from data in the workspace, you will also have 4 data text file in your working directory:</br>     
tidy_data-total.txt</br>   
tidy_data-total_mean_std.txt</br>    
tidy_data-total_with_label.txt</br>   
tidy_data-total_mean.txt</br>   
tidy_data-total_colmeans.txt</br>   
tidy_data-total_rowmeans.txt</br>   
</br>    
4, For future use, it will be simply run the following script code:</br>  
total_mean <- read.table("tidy_data-total_mean.txt")</br>   
total_colmeans <- read.table("tidy_data-total_colmeans.txt")</br>   
total_rowmeans <- read.table("tidy_data-total_rowmeans.txt")</br>   
total_mean_std <- read.table("tidy_data-total_mean_std.txt")</br>  
total_with_label <- read.table("tidy_data-total_with_label.txt")</br>  
total <- read.table("tidy_data-total.txt")</br>  

