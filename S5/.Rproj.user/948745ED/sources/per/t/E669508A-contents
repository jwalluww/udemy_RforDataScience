# Get help on this function
?read.csv()

# File explorer will open up
df1 <- read.csv(file.choose())

print(df1)

# Set working directory
getwd()
setwd("C:/Users/wallj/DS_Projects/udemy_RforDataScience/S5")
getwd()
rm(df1)
df1 <- read.csv("P2-Demographic-Data.csv")
print(df1)

#---------------------------------------- Exploring Data
nrow(df1)
ncol(df1)
head(df1)
tail(df1)
str(df1)
summary(df1)

#--------------------------------------- Using the $ sign
df1[3,3]
df1[3,"Birth.rate"]
df1["Angola",3] # angola is just a tuple in the first column, not the column name
df1$Internet.users
df1$Internet.users[2]
df1[,"Internet.users"]
levels(df1$Income.Group)

#--------------------------------------- DF basic operations
df1[1:10,]
df1[3:9,]
df1[c(4,100),]
is.data.frame(df1[1,])
is.data.frame(df1[,1])
is.data.frame(df1[,1,drop=F])
# multiply columns
head(df1)
df1$Birth.rate * df1$Internet.users
df1$Birth.rate + df1$Internet.users
# add column
df1$MyCalc <- df1$Birth.rate * df1$Internet.users
# vector will just continue going 1,2,3,4,5,1,2,3,4,5,1,etc.
df1$xyz <- 1:5
# Remove a column
df1$MyCalc <- NULL
head(df1)
df1$xyz <- NULL
head(df1)

#------------------------------------- Filtering DataFrames
head(df1)
filter <- df1$Internet.users < 2
df1[filter,]

df1[df1$Birth.rate > 40,]
df1[df1$Birth.rate > 40 & df1$Internet.users < 2,]
df1[df1$Income.Group == "High income",]
levels(df1$Income.Group)

df1[df1$Country.Name == 'Malta',]

#------------------------------------ introduction to qplot
library(ggplot2)

?qplot

qplot(data=df1, x=Internet.users)
qplot(data=df1, x=Income.Group, y=Birth.rate, size=I(10))
qplot(data=df1, x=Income.Group, y=Birth.rate, size=I(10), color=I("blue"))
qplot(data=df1, x=Income.Group, y=Birth.rate, geom="boxplot")

qplot(data=df1, x=Internet.users, y=Birth.rate, color=I("red"), size=I(4))
qplot(data=df1, x=Internet.users, y=Birth.rate, color=Income.Group, size=I(4))

#----------------------------------- Working on vectors created in another rscript
df2 <- data.frame(Countries_2012_Dataset,Codes_2012_Dataset,Regions_2012_Dataset)
head(df2)
colnames(df2)
colnames(df2) <- c("Country", "Code", "Region")
colnames(df2)

rm(df2)

df2 <- data.frame(Country = Countries_2012_Dataset, Code = Codes_2012_Dataset, Region = Regions_2012_Dataset)
colnames(df2)

#---------------------------------- Combining the two dataframes
df <- merge(df1,df2, by.x = "Country.Code", by.y = "Code")
head(df)

#---------------------------------- Visualizing with new dataframe
