Getting and Cleaning Data
=========================

This is a repository for any and all code written for the course project of the Getting and Cleaning Data on Coursera

## Course Project Description
    The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!

##Instructions
###Prepare source data
There are 2 options to download the source data

* Option 1: By running the download_data.R script.

* Option 2: Unzip the source (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) into a folder on your local drive, say C:\Users\Administrator\Documents\R_Programing\UCI HAR Dataset\. 
  In RStudio: setwd("C:/Users/Administrator/Documents/R_Programing/UCI HAR Dataset")


###Run run_analysis.R
  * Download the run_analysis.R to the same working folder (C:\Users\Administrator\Documents\R_Programing\UCI HAR Dataset\).
  * In RStudio, source("run_analysis.R")

###Get final result
  * After running the run_analysis.R, the final tidy data set with the averages is saved as tidy_data_set_with_the_average.txt file under the same working folder.
  * Or load into RStudio by typing: Use data <- read.table("tidy_data_set_with_the_average.txt") to read the data. 
