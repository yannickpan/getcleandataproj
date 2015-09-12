trainx = read.table("D:\\UCI HAR Dataset\\train\\X_train.txt")
head(trainx)
ncol(trainx)
trainy = read.table("D:\\UCI HAR Dataset\\train\\y_train.txt")
nrow(trainy)
trainxy = cbind(trainx,trainy)
testx = read.table("D:\\UCI HAR Dataset\\test\\X_test.txt")
testy = read.table("D:\\UCI HAR Dataset\\test\\y_test.txt")
testxy = cbind(testx,testy)
wholexy = rbind(trainxy,testxy)
varmean = colMeans(wholexy)
varstd = apply(wholexy,2,sd)
colnames(wholexy)[ncol(wholexy)] = "activity"
wholexy$activity[which(wholexy[,ncol(wholexy)]==1)] = "WALKING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==2)] = "WALKING_UPSTAIRS"
wholexy$activity[which(wholexy[,ncol(wholexy)]==3)] = "WALKING_DOWNSTAIRS"
wholexy$activity[which(wholexy[,ncol(wholexy)]==4)] = "SITTING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==5)] = "STANDING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==6)] = "LAYING"
