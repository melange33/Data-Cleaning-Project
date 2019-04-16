library(dplyr)
library(tidyr)
library(readr)
## Read in data files

activity_names<-read.table("activity_labels.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)
features<-read.table("features.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)

X_test<-read.table("X_test.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)
y_test<-read.table("y_test.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)
subject_test<-read.table("subject_test.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)

X_train<-read.table("X_train.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)
y_train<-read.table("y_train.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)
subject_train<-read.table("subject_train.txt",na.strings=c("NA","",",",".."),stringsAsFactors = FALSE)

#merge data into single table
test<-cbind(subject_test,y_test,X_test)
train<-cbind(subject_train,y_train,X_train)
dataset<-rbind(test,train)


##Rename Columns of merged data
names(dataset)<-c("SubjectID","Activity",features$V2)

##Select only mean and std measures
measures<-grep("-mean\\(\\)|-std\\(\\)",names(dataset))
dataset<-dataset[c(1:2,measures)]

##Format columns to be more descriptive and readable
dataset$Activity<-activity_names$V2[dataset$Activity]
names(dataset)<-gsub("^t","Time ",names(dataset))
names(dataset)<-gsub("^f","Freq ",names(dataset))
names(dataset)<-gsub("Body","Body ",names(dataset))
names(dataset)<-gsub("Body Body","Body",names(dataset))
names(dataset)<-gsub("\\(\\)","",names(dataset))
names(dataset)<-gsub("tBody","Time Body",names(dataset))
names(dataset)<-gsub("Gravity","Gravity ",names(dataset))
names(dataset)<-gsub("-"," ",names(dataset))

names(dataset)<-gsub("Jerk"," Jerk",names(dataset))
names(dataset)<-gsub("Mag"," Mag",names(dataset))
names(dataset)<-gsub("Acc","Acceleration",names(dataset))
names(dataset)<-gsub(" ","_",names(dataset))

##Average by subject and activity
tidydata<-dataset%>%
  group_by(SubjectID,Activity)%>%
  summarise_at(3:68,mean)


