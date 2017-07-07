##### Basic Graphs #####

setwd("/Users/yumeng.zou/Google Drive/Freshyear/Summer/R")
train<-read.csv(file="train.csv",header=TRUE,na.strings="")
test<-read.csv(file="test.csv",header=TRUE,na.strings="")
attach(train)

byclass<-table(train$Survived,train$Pclass)
byclass
barplot(byclass) ## stacked
barplot(byclass,legend=rownames(byclass)) ## legend
barplot(byclass,beside=TRUE,legend=rownames(byclass)) ## grouped
barplot(byclass,col=c("red","green"),legend=rownames(byclass))
barplot(byclass,main="Survival by class",xlab="Class",ylab="Survival",
legend=rownames(byclass))
barplot(byclass,horiz=TRUE,legend=rownames(byclass))

library(vcd)
library(grid)
spine(t(byclass))

table(Pclass)
pie(table(Pclass))

mtcars
hist(mtcars$mpg)
hist(mtcars$mpg,freq=FALSE,breaks=12)
lines(density(mtcars$mpg),col="blue",lwd=2)
abline(v=20,col="red",lwd=2)
rug(jitter(mtcars$mpg))
box()

means<-aggregate(Survived, by=list(SibSp), FUN=mean)
means
class(means)
barplot(means$x, legend=means$Group.1)

par(mfrow=c(2,2))
boxplot(SibSp~Pclass,data=train,varwidth=TRUE,xlab="Pclass",ylab="SibSp")
boxplot(Parch~Pclass,data=train,varwidth=TRUE)
boxplot(Fare~Pclass,data=train,varwidth=TRUE)
boxplot(Fare~Embarked,data=train,varwidth=TRUE,xlab="Embarked",ylab="Fare")
# (Numerical var ~ Categorical var, data=df)





