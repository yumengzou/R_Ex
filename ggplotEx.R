##### ggplot2 #####

library(ggplot2)
x<-seq(-5,5,0.1)
df<-data.frame(x=x,y=x^5)
g<-ggplot(df)
g+geom_line(aes(x=x,y=y))
g+geom_line(aes(x=x,y=y))+geom_point(aes(x=x,y=y))
g+geom_density(aes(y))