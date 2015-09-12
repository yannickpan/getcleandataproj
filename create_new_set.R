trainsubj = read.table("subject_train.txt")
testsubj = read.table("subject_test.txt")
subcol = rbind(trainsubj,testsubj)
wholexy_sub = cbind(wholexy,subcol)
colnames(wholexy_sub)[563]="subject"
meanbyact = aggregate(wholexy_sub[,1:561], by=list(wholexy_sub$activity), FUN=mean)
colnames(meanbyact)[1] = "activity&subject"
meanbysubj = aggregate(wholexy_sub[,1:561], by=list(wholexy_sub$subject), FUN=mean)
colnames(meanbysubj)[1] = "activity&subject"
newtable = rbind(meanbyact,meanbysubj)
write.table(newtable,file="newdataset.txt",row.name=FALSE)