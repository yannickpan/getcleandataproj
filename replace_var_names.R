features = read.delim("features.txt",header=FALSE,quote="")
for(i in c(1:nrow(features))){
  temp = strsplit(as.character(features[i,1])," ")[[1]][2]
  colnames(wholexy)[i] = gsub('\\(\\)','',temp)
}

for(i in c(1:561)){
  colnames(wholexy)[i] = gsub('bandsEnergy','bE',colnames(wholexy)[i])
  colnames(wholexy)[i] = gsub('Body','Bd',colnames(wholexy)[i])
  colnames(wholexy)[i] = gsub('AccJerk','AJk',colnames(wholexy)[i])
  colnames(wholexy)[i] = gsub('Coeff','Coe',colnames(wholexy)[i])
}

for(i in c(1:561)){
  colnames(wholexy)[i] = gsub('BdBd','Bd',colnames(wholexy)[i])
  colnames(wholexy)[i] = gsub('Jerk','Jk',colnames(wholexy)[i])
  colnames(wholexy)[i] = gsub(',','',colnames(wholexy)[i])
}
print(colnames(wholexy))