  subject_test<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt")
  subject_train<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt")
  X_test<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/X_test.txt")
  X_train<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/X_train.txt")
  y_test<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/test/y_test.txt")
  y_train<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/train/y_train.txt")
  table_values<-read.table("./getdata%2Fprojectfiles%2FUCI HAR Dataset/UCI HAR Dataset/features.txt")
  test<-cbind(subject_test,y_test,X_test)
  train<-cbind(subject_train,y_train,X_train)
  overall<-rbind(test,train)
  overall2<-overall[,c(1,2,3,4,5,43,44,45,83,84,85,123,124,125,163,164,165,203,216,229,242,255,268,269,270,296,297,298,347,348,349,375,376,377,426,427,428,454,455,456,505,515,518,528,531,541,544,554,6,7,8,46,47,48,86,87,88,126,127,128,166,167,168,204,217,230,243,256,271,272,273,350,351,352,429,430,431,506,519,532,545)]
  overall2[,2]<-as.character(overall2[,2])
  table_values2<-table_values[c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,163,201,214,227,240,253,266,267,268,294,295,296,345,346,347,373,374,375,424,425,426,452,453,454,503,513,516,526,529,539,542,552,4,5,6,44,454,46,84,85,86,124,125,126,164,165,166,202,215,228,241,254,269,270,271,348,349,350,427,428,429,504,517,530,543),]
  table_values2[,2]<-as.character(table_values2[,2])
  for(i in 1:nrow(overall2))
  {
    if(overall2[i,2]=="1")overall2[i,2]="WALKING"
    if(overall2[i,2]=="2")overall2[i,2]="WALKING_UPSTAIRS"
    if(overall2[i,2]=="3")overall2[i,2]="WALKING_DOWNSTAIRS"
    if(overall2[i,2]=="4")overall2[i,2]="SITTING"
    if(overall2[i,2]=="5")overall2[i,2]="STANDING"
    if(overall2[i,2]=="6")overall2[i,2]="LAYING"
  }
  colnames(overall2)[2]<-"activities"
  colnames(overall2)[1]<-"Subject"
  
  for (i in 3:ncol(overall2)) {
    colnames(overall2)[i]<-table_values2[i-2,2]
  }
  yes<-aggregate(. ~Subject + activities, overall2, mean)
  write.table(yes, file="./Coursera Tidy Data.txt", row.names = FALSE)
