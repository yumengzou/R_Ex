##### Mathematical Models #####

# jpeg/png("filename.jpg/.png")
# plot(...)
# dev.off()
setwd("/Users/yumeng.zou/Google Drive/Freshyear/Summer/R/Math Functions")

# 1 Linear Model
x<-seq(-10,10,0.1)
a<-2
b<--1
plot(x,a*x+b,type='l',asp=1,main="Linear Model",col='red',lwd=2)
legend(15,15,c("a = 2","b = -1"))


# 2 Polynomials
library(polynom)
p1<-polynomial(c(0,1,-3,0,1))
p1
p2<-polynomial(c(0,1,0,-25,0,3))
p2
par(oma=c(0,0,1,0),mfrow=c(1,2))
## oma: a vector of c(bottom, left, top, right) giving the size of outer margins in lines of text
plot(p1,ylab=p1,col='red',lwd=2)
plot(p2,ylab=p2,col='green',lwd=2)
title(main="Polynomials",outer=T)
## mtext("Polynomials",outer=T,side=3,cex=1.5)


# 3 Power: f(x)=x^a
x<-seq(-3,3,0.1)
par(oma=c(0,0,1,0),mfrow=c(2,6))
param<-c(-3,-2,-1,-0.7,-1/3,-1/5,1/3,2/3,0.9,2,3,4)
for (a in param){
	plot(x,x^a,type='l',ylab=paste("x^",a,sep=""),ylim=c(-3,3))
	abline(v=0,h=0,col='red',lty=2)
}
title(main="Power Functions",outer=T)


# 4 Rational Functions: f(x)=P(x)/Q(x) where P and Q are polynomials
x<-seq(-5,5,0.1)
library(polynom)
p1<-polynomial(c(0,1,-3,0,1))
p2<-polynomial(c(0,1,0,-25,0,3))
p3<-polynomial(c(1,0,-1,0,2))
p4<-polynomial(c(-4,0,1))
p1f<-as.function(p1)
p2f<-as.function(p2)
p3f<-as.function(p3)
p4f<-as.function(p4)
par(oma=c(0,0,1,0),mfrow=c(2,2))
plot(x,p3f(x)/p4f(x),type='l',ylab=paste(p3,"/",p4))
abline(v=c(-2,2),h=0,col='red',lty=2)
plot(x,p2f(x)/p1f(x),type='l',ylab=paste(p2,"/",p1))
plot(x,p1f(x)/p4f(x),type='l',ylab=paste(p1,"/",p4))
plot(x,p2f(x)/p4f(x),type='l',ylab=paste(p2,"/",p4))
title(main="Rational Functions",outer=T)


# 5 Algebraic Functions: constructed from algebraic operations (+,-,*,/,^) on polynomials
# Rational Functions belongs to Algebraic Functions
x<-seq(-10,10,0.1)
f<-function(x){(x^2 + 1)^0.5}
g<-function(x){x*(x+3)^0.5}
h<-function(x){(x^2-25)^0.25}
m<-function(x){x^(2/3)*(x-2)^2}
funs<-c(f,g,h,m)
par(oma=c(0,0,1,0),mfrow=c(2,2))
for (FUN in funs){
	plot(x,FUN(x),type='l',ylab=capture.output(FUN))
	abline(v=0,h=0,col='red',lty=2)
}
title(main="Algebraic Functions",outer=T)


# 6 Trigonometric Functions: C + A * sin/cos/tan(f(x))



