#TEST DATA  - Read in subject IDs and name the variable - there are 9 IDs, repeated 

subject_test=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/test/subject_test.txt", sep=" ",header=F,as.is=T)
names(subject_test)<-"subject"
#Explore to see structure of the data
length(table(subject_test))
table(subject_test)


#Read in X and Y data and explore
x_test=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/test/X_test.txt")
y_test=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/test/y_test.txt")

dim(x_test)
dim(y_test)

#x_test holds the values for 561 predictor. 
#y_test holds one of 6 values indicating the activity type for each record 
#There are 2947 records of events
#subject_test is the same length (2947), and takes one of 9 values - the subject IDs for the test data

#TRAINING DATA - Repeat above for training data 

subject_train=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/train/subject_train.txt", sep=" ",header=F,as.is=T)
names(subject_train)<-"subject"
#Explore to see structure of the data
length(table(subject_train))
table(subject_train)


#Read in X and Y data and explore
x_train=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/train/X_train.txt")
y_train=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/train/y_train.txt")

dim(x_train)
dim(y_train)

#x_train,y_train and subject_train hold the predictors, responses and subject IDs for the training data, as above for the test data.
#There are 21 subjects in the training data (as seen in the length of the tabulated subject_train data)

#Read in meta data for labelling - the feature labels and the activity labels
feature_labels=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/features.txt")
activity_labels=read.table("/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/UCI HAR Dataset/activity_labels.txt")

dim(feature_labels)
dim(activity_labels) 

#There are 561 feature labels, and 6 activity labels

#LABELING - use feature labels to name columns of x data, and activity labels to name factor levels for the y data.
feature_names=make.names(feature_labels[,2]) #ensure names are syntactically valid
activity_names=make.names(activity_labels[,2]) #ensure names are syntactically valid

names(x_train)=feature_names
names(x_test)=feature_names

y_train=factor(y_train[,1],labels=activity_names)
y_test=factor(y_test[,1],labels=activity_names)

#MERGING - first merge all test data, then all training data, then merge test and training together

test=data.frame(group="test",subject_test,data.frame(y_test),x_test)
colnames(test)[names(test)=="y_test"] = "activity" #change the "y" name to something more useful/readable
 
train=data.frame(group="train",subject_train,data.frame(y_train),x_train)
colnames(train)[names(train)=="y_train"] = "activity" #change the "y" name to something more useful/readable

#Check that the column names are the same and merge the test and training
sum(names(test)!=names(train)) #Should be 0 if all names are the same
dat=rbind(train,test)

#the data frame "dat" now holds all the records for test and training data

#Extract only measurements of mean and standard deviation (std) from this data set, retaining first 3 ID/label columns
library(dplyr)
dat_new=data.frame(dat[,1:3],select(dat,contains("mean")),select(dat,contains("std")))
dim(dat_new)

#Create new tidy data frame with averages for each variable by subject and activity
library(data.table)
dat.DT=data.table(dat_new) #create data.table with the mean/sd varibles
dat.DT[,group:=NULL] #remove the 'group' column, as we are not grouping by test/train 
dat.averages=dat.DT[, lapply(.SD, mean), by = c("subject","activity")]

write.table(dat.averages,file="/Users/jenmollon/Dropbox/learning/Getting_Cleaning_Data/tidy_averages.txt",row.names=FALSE,quote=FALSE)
