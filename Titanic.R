##### Kaggle Titanic #####

## Load Data
setwd("/Users/yumeng.zou/Google Drive/Freshyear/Summer/R")
train<-read.csv(file="train.csv",header=TRUE,na.strings="")
test<-read.csv(file="test.csv",header=TRUE,na.strings="")

## Exploratory Data Analysis
typeof(train) ## data frame
head(train)
tail(train)
length(train) ## number of variables
str(train)
head(test)
tail(test)
length(test)
str(test)
## Response Variable: Survived
## Numerical: 
## 	Discrete: SibSp, Parch
##	Continuous: Age, Fare
## Categorical:
##	Ordinal: Pclass
##	Nominal: Sex, Embarked
## Other: ID, name, Ticket, Cabin

## Combine two data frames
test$Survived<-NA*(1:418) ## create a new variable for test
total<-rbind(train,test)

fix(train) ## a table of all numerical variables

apply(train, 2, function(x) length(which(is.na(x))))
apply(test, 2, function(x) length(which(is.na(x))))
## there are NA in Age, Embarked, 

summary(train)
attach(train)

## Categorical Variables
prop.table(table(Survived, Pclass),2)

prop.table(table(Survived, Sex),2)

prop.table(table(Survived, Embarked),2)

## Numerical Variables
prop.table(table(Survived,SibSp),2)

prop.table(table(Survived,Parch),2)

