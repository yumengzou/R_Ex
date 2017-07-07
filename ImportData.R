##### Data Input #####

## 1 from keyboard
mydata=data.frame(name=character(0),isFemale=logical(0),age=numeric(0))
fix(mydata)
mydata

## 2 from file
setwd("C:/Users/yumeng.zou/Google Drive/Freshyear/Summer/R")
titanic=read.csv(file="train.csv",header=TRUE,na.strings="",row.names="PassengerId")
head(titanic)
train=read.csv(file="train.csv")
head(train)
str(titanic) ## equivalent to dataframe.info() in pandas-python
names(titanic)[7]<-"Par_Ch"
titanic