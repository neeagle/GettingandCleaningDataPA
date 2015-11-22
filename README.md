---
title: "README"
output: html_document
---

All the data were generated from the source below for the use of the Coursera course **Getting and Cleaning Data**.

Human Activity Recognition Using Smartphones Dataset
Version 1.0
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit?degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The original data files can be downloaded from:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

> This submission contains the following files:

* README.md: shows relationship between files

* summary.txt: the final result table containing average measurement for each action of each subject

* run_analysis.R: the R script to generate summary.txt

* CodeBook.md: shows descrption of variables

>In the run_analysis.R, the following steps are taken to get the final summary.txt from the original data files:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
