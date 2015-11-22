#read all files needed, supposing you are in the directory
f <- read.table("features.txt", colClasses="character")
test <- read.table("./test/X_test.txt")
train <- read.table("./train/X_train.txt")
test_sub <- read.table("./test/subject_test.txt")
test_y <- read.table("./test/y_test.txt")
train_sub <- read.table("./train/subject_train.txt")
train_y <- read.table("./train/y_train.txt")

#change column names of the two datasets
colnames(test) <- f[,2]
colnames(train) <- f[,2]

#pick only the cols with mean and std but not meanFreq
testms <- test[ ,((grepl("mean", colnames(test)) | grepl("std", colnames(test))) & (!grepl("Freq", colnames(test))))]
trainms <- train[ ,((grepl("mean", colnames(test)) | grepl("std", colnames(test))) & (!grepl("Freq", colnames(test))))]

#add activity and subject to data
testms$ACT <- test_y[,1]
trainms$ACT <- train_y[,1]
testms$SUB <- test_sub[,1]
trainms$SUB <- train_sub[,1]

#conbine the two datasets
total <- rbind(testms, trainms)

#add a new column "action" to describe the activities
total$action <- NA
total$action[total$ACT==1] <- "WALKING"
total$action[total$ACT==2] <- "WALKING_UPSTAIRS"
total$action[total$ACT==3] <- "WALKING_DOWNSTAIRS"
total$action[total$ACT==4] <- "SITTING"
total$action[total$ACT==5] <- "STANDING"
total$action[total$ACT==6] <- "LAYING"

#use dplyr to group and get mean for all columns by each activity and each subject 
library(dplyr)
stotal <- total %>% group_by(SUB, action) %>% summarise_each(funs(mean))
stotal <- select(stotal, -ACT)

#change the variable names to human readable forms.
names(stotal) <- sub("BodyBody", "Body", names(stotal))
names(stotal) <- sub("tB", "Time-of-B", names(stotal))
names(stotal) <- sub("tG", "Time-of-G", names(stotal))
names(stotal) <- sub("fB", "Frequency-of-B", names(stotal))
names(stotal) <- sub("Acc", "-Accelerometer-", names(stotal))
names(stotal) <- sub("Gyro", "-Gyroscope-", names(stotal))
names(stotal) <- sub("--", "-", names(stotal))
names(stotal) <- sub("Mag", "Magnitude", names(stotal))

#output the result into a file
write.table(stotal, "summary.txt", row.names=FALSE)