[Basic data manipulations.txt](https://github.com/Mahesh-Swami/Stastical-Analysis-Using-R/files/9484452/Basic.data.manipulations.txt)
[Rplots.pdf](https://github.com/Mahesh-Swami/Stastical-Analysis-Using-R/files/9475461/Rplots.pdf)
# Stastical-Analysis-Using-R
## to load mtcars data to df
df<-datasets::mtcars
head(df)



# summary or descriptive statistics
  #to print the first 10 observations of the dataset
  
  print(head(df,n=10))
  
  
  ##To see the nature of variables/columns in the mtcars dataset, you can use the ls(DATASET) Or names(DATASET)
  names(df) or
  ls(df)  or
  names(mtcars) or
  ls(mtcars)
  
  #to see number of columns in the datset
  ncol(df)
  
  #to see number of rows
  nrow(df)
  
  ##more Advanced or complete way to see the structure of the dataset
  str(df)
  
  ## subsetting miles/(us) gallon, no.of cylinders,displacement(cu.in.), gross hp and quarter mile time for dataset mtcars
   subset.data<-subset(df,select = c("mpg","cyl","disp","hp","qsec"))
  
  
  
  ## checking subset.data to make sure we have the needed subset
  str(subset.data)
  
   ## calculating the mean of one of the variable say "mpg"
 
mean(subset.data$mpg)

## mean of quarter mile sec
> mean(subset.data$qsec)
and so n....



 ## to calculate the standard deviation of a variable with sd(DATAVAR$VAR); standard deviation of the variable mpg
 sd(subset.data$mpg)
 
 and so on
 
  ## range of each variable i.e. min and max
> min(subset.data$mpg); max(subset.data$mpg)

and so on ......for every variable

 ## to calculate the 25th, 50th,75th and 95th percentiles for mpg in the dataset
> quantile(subset.data$mpg, prob = c(.25, .50, .75, .95))


> quantile(subset.data$qsec, prob = c(.25, .50, .75, .95))
and so on....

#PERCENTILES FROM VALUES (PERCENTILE RANK)
## from the given data find what percent cars in the data takes less than 15.60 sec to complete quarter mile.
> length(subset.data$qsec[subset.data$qsec<=15.60])/length(subset.data$qsec)*100
[1] 12.5
> only 12.5 percent cars in the data takes less thn 15.60 sec's to complete quarter mile

# summerize a variable using summary(VAR)
print(summary(subset.data$mpg)
