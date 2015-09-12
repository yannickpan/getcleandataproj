trainx = read.table("X_train.txt")
head(trainx)
ncol(trainx)
trainy = read.table("y_train.txt")
nrow(trainy)
trainxy = cbind(trainx,trainy)
testx = read.table("X_test.txt")
testy = read.table("y_test.txt")
testxy = cbind(testx,testy)
wholexy = rbind(trainxy,testxy)
##get the mean for each variable
varmean = colMeans(wholexy)
print(varmean)
##get the standard deviation for each variable
varstd = apply(wholexy,2,sd)
print(varstd)
colnames(wholexy)[ncol(wholexy)] = "activity"
wholexy$activity[which(wholexy[,ncol(wholexy)]==1)] = "WALKING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==2)] = "WALKING_UPSTAIRS"
wholexy$activity[which(wholexy[,ncol(wholexy)]==3)] = "WALKING_DOWNSTAIRS"
wholexy$activity[which(wholexy[,ncol(wholexy)]==4)] = "SITTING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==5)] = "STANDING"
wholexy$activity[which(wholexy[,ncol(wholexy)]==6)] = "LAYING"