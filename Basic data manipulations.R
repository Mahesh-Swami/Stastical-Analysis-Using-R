install.packages("dplyr")
library(dplyr)
data("mtcars")
data('iris')
mydata<- mtcars
# Read data
head(mydata)
#creating local dataframe since local dataframes are easy to read
mynewdata<- tbl_df(mydata)
myirisdata<- tbl_df(iris)
# now data will be in tablular structure
mynewdata
myirisdata
# to filter data with condition
filter(mynewdata, cyl>4& gear>4)
filter(mynewdata, carb>4)
filter(myirisdata,Species %in% c('setosa','virginica'))

# use select() to pick columns by name
select(mynewdata, cyl,hp,mpg)
#(-) is used to hide columns
select(mynewdata, -cyl,-mpg)
# Hide a range of columns
select(mynewdata,-c(cyl,mpg))
# select series of columns
select(mynewdata,cyl:gear)
# performing multiple operations in one line== pipelining or chaining
mynewdata%>%
  select(cyl,wt,gear)%>%
  filter(wt>2)



# Arrange()==  used to reorder rows in ascending or descending order
  #for ascending order
mynewdata%>%
  select(cyl,wt,gear)%>%
  arrange(wt)
  #for descending order
mynewdata%>%
  select(cyl,wt,gear)%>%
  arrange(desc(wt))
# add new columns with mutate
  #mutate() used to create new variables from the existing variables
newvariable<- mynewdata%>% mutate(newvariable = mpg*cyl)


# summarise()== collapses data in a single row
    #used to find insights from data
myirisdata%>%
  group_by(Species)%>%
  summarise(Average= mean(Sepal.Length, na.rm = TRUE))
# or use summarise_each
myirisdata%>%
  group_by(Species)%>%
  summarise_each(funs(mean,n()),Sepal.Length,Sepal.Width)

# Rename variables
mynewdata%>% rename(miles=mpg)


