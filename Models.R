##### Density Functions - Graph #####

## Normal
x<-seq(-3,3,.1)
plot(x,dnorm(x),type='l',main="N(0,1)",lwd=2,col='red')

## Binomial
# discrete probability distribution
# n Bernoulli Trial of p probability of success
x<-seq(0,50)
plot(x,dbinom(x,40,0.7),col="red")
points(x,dbinom(x,40,0.5),col="blue")
points(x,dbinom(x,60,0.5),col="green")


## Chi-square
# chi-sq(df=k) = k(Z^2)
x<-seq(0,15,0.1)
plot(x,dchisq(x,df=3),type='l',main="Chi-square",lwd=2)
lines(x,dchisq(x,df=4),lwd=2,col='red')
lines(x,dchisq(x,df=5),lwd=2,col='blue')
lines(x,dchisq(x,df=6),lwd=2,col='green')
lines(x,dchisq(x,df=7),lwd=2,col='gold')
colors<-c('black','red','blue','green','gold')
labels<-c('df=3','df=4','df=5','df=6','df=7')
legend("topright", inset=.05, title="Chi-sq",labels, lwd=2, col=colors)

## Exponential
