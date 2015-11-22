---
title: "CodeBook"
output: html_document
---
**This codebook explains the variables in the table summary.txt.

The original data files can be downloaded from:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The data are converted from the original data files. See README.md for the steps taken to generate the final data.

> Variable descriptioin and list

There are 68 variables and 180 observations in this table. "SUB" is the subject number from 1 to 30. "action" is the action taken by the subjects and can be any of the 6: "WALKING", "WALKING\_UPSTAIRS", "WALKING\_DOWNSTAIRS", "SITTING", "STANDING" and "LAYING". 

The rest variable names are formatted as "measurement-of-detectorposition-detectortype-processing-value-axis"

measurement: can be Time or Frequency

detectorposition: can be Body or Gravity

detectortype: can be Accelerometer or Gyroscope

processing: can be noting, Jerk, Magnitude or JerkMagnitude

value: can be mean or std (standard deviation)

axis: can be X, Y or Z

Please note that for variables [3] to [68], each variable is a mean of the orignal observation over the whole experiment period.

* Complete variable list:

[1] "SUB"                                                 
 [2] "action"                                              
 [3] "Time-of-Body-Accelerometer-mean()-X"                 
 [4] "Time-of-Body-Accelerometer-mean()-Y"                 
 [5] "Time-of-Body-Accelerometer-mean()-Z"                 
 [6] "Time-of-Body-Accelerometer-std()-X"                  
 [7] "Time-of-Body-Accelerometer-std()-Y"                  
 [8] "Time-of-Body-Accelerometer-std()-Z"                  
 [9] "Time-of-Gravity-Accelerometer-mean()-X"              
[10] "Time-of-Gravity-Accelerometer-mean()-Y"              
[11] "Time-of-Gravity-Accelerometer-mean()-Z"              
[12] "Time-of-Gravity-Accelerometer-std()-X"               
[13] "Time-of-Gravity-Accelerometer-std()-Y"               
[14] "Time-of-Gravity-Accelerometer-std()-Z"               
[15] "Time-of-Body-Accelerometer-Jerk-mean()-X"            
[16] "Time-of-Body-Accelerometer-Jerk-mean()-Y"            
[17] "Time-of-Body-Accelerometer-Jerk-mean()-Z"            
[18] "Time-of-Body-Accelerometer-Jerk-std()-X"             
[19] "Time-of-Body-Accelerometer-Jerk-std()-Y"             
[20] "Time-of-Body-Accelerometer-Jerk-std()-Z"             
[21] "Time-of-Body-Gyroscope-mean()-X"                     
[22] "Time-of-Body-Gyroscope-mean()-Y"                     
[23] "Time-of-Body-Gyroscope-mean()-Z"                     
[24] "Time-of-Body-Gyroscope-std()-X"                      
[25] "Time-of-Body-Gyroscope-std()-Y"                      
[26] "Time-of-Body-Gyroscope-std()-Z"                      
[27] "Time-of-Body-Gyroscope-Jerk-mean()-X"                
[28] "Time-of-Body-Gyroscope-Jerk-mean()-Y"                
[29] "Time-of-Body-Gyroscope-Jerk-mean()-Z"                
[30] "Time-of-Body-Gyroscope-Jerk-std()-X"                 
[31] "Time-of-Body-Gyroscope-Jerk-std()-Y"                 
[32] "Time-of-Body-Gyroscope-Jerk-std()-Z"                 
[33] "Time-of-Body-Accelerometer-Magnitude-mean()"         
[34] "Time-of-Body-Accelerometer-Magnitude-std()"          
[35] "Time-of-Gravity-Accelerometer-Magnitude-mean()"      
[36] "Time-of-Gravity-Accelerometer-Magnitude-std()"       
[37] "Time-of-Body-Accelerometer-JerkMagnitude-mean()"     
[38] "Time-of-Body-Accelerometer-JerkMagnitude-std()"      
[39] "Time-of-Body-Gyroscope-Magnitude-mean()"             
[40] "Time-of-Body-Gyroscope-Magnitude-std()"              
[41] "Time-of-Body-Gyroscope-JerkMagnitude-mean()"         
[42] "Time-of-Body-Gyroscope-JerkMagnitude-std()"          
[43] "Frequency-of-Body-Accelerometer-mean()-X"            
[44] "Frequency-of-Body-Accelerometer-mean()-Y"            
[45] "Frequency-of-Body-Accelerometer-mean()-Z"            
[46] "Frequency-of-Body-Accelerometer-std()-X"             
[47] "Frequency-of-Body-Accelerometer-std()-Y"             
[48] "Frequency-of-Body-Accelerometer-std()-Z"             
[49] "Frequency-of-Body-Accelerometer-Jerk-mean()-X"       
[50] "Frequency-of-Body-Accelerometer-Jerk-mean()-Y"       
[51] "Frequency-of-Body-Accelerometer-Jerk-mean()-Z"       
[52] "Frequency-of-Body-Accelerometer-Jerk-std()-X"        
[53] "Frequency-of-Body-Accelerometer-Jerk-std()-Y"        
[54] "Frequency-of-Body-Accelerometer-Jerk-std()-Z"        
[55] "Frequency-of-Body-Gyroscope-mean()-X"                
[56] "Frequency-of-Body-Gyroscope-mean()-Y"                
[57] "Frequency-of-Body-Gyroscope-mean()-Z"                
[58] "Frequency-of-Body-Gyroscope-std()-X"                 
[59] "Frequency-of-Body-Gyroscope-std()-Y"                 
[60] "Frequency-of-Body-Gyroscope-std()-Z"                 
[61] "Frequency-of-Body-Accelerometer-Magnitude-mean()"    
[62] "Frequency-of-Body-Accelerometer-Magnitude-std()"     
[63] "Frequency-of-Body-Accelerometer-JerkMagnitude-mean()"
[64] "Frequency-of-Body-Accelerometer-JerkMagnitude-std()" 
[65] "Frequency-of-Body-Gyroscope-Magnitude-mean()"        
[66] "Frequency-of-Body-Gyroscope-Magnitude-std()"         
[67] "Frequency-of-Body-Gyroscope-JerkMagnitude-mean()"    
[68] "Frequency-of-Body-Gyroscope-JerkMagnitude-std()"
