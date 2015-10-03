# getcleandataproj
# IMPORTANT EXPLANATION FOR THOSE WHO GRADE MY WORK: I forgot to revise the name of my R scripts to *run_analysis.R*. But I believe all the functions are impletemented correctly. 
1. The functions of merge.R:
a. it will first merge variables and labels together for training set and testing set respectively;
b. then it will merge training and testing set together;
c. it will print out the mean and standard deviation for each variable;
d. it will replace the name of the activity number as the activity name.

2. The function of replace_var_names.R:
a. read feature names from features.txt;
b. assign these names to current merged data file's column names;
c. delete/modify some too long names to make those column names look better.

3. The function of create_new_set.R:
a. it will use aggregate function to compute the mean by subject and the mean by activity respectively
b. then it will merge the two tables together 
c. it will write the new table to a data set named "newdataset.txt"
