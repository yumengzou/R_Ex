##### Clique 3yrs-diary #####

library(igraph)
library(rgl)
library(ape)
setwd("/Users/yumeng.zou/Google Drive/Freshyear/Summer/Research/Diary/NdEg")
igraphdemo()

nodes<-read.csv("pplNodes.csv",encoding="UTF-8",stringsAsFactors=F)
Sys.setlocale(category = "LC_CTYPE", locale = "cht") 
head(nodes)
nodes$Id<-nodes$Id+1

edges<-read.csv("pplEdges.csv")
el<-cbind(edges$Source,edges$Target)
el<-el+1 # R index starts from 1, not 0
g<-graph_from_edgelist(el,directed=F)
summary(g)
#plot(g)

g$layout<-layout_in_circle
V(g)$label<-nodes$Label
V(g)$label.cex<-1
V(g)$size<-3

g2<-delete_vertices(g,V(g)[length(V(g))])
g3<-delete_vertices(g2,V(g2)[degree(g2)<=1])
summary(g3)

g6<-delete_vertices(g3,V(g3)[degree(g3)<=6])
summary(g6)

g7<-delete_vertices(g6,V(g6)[degree(g6)<=7])
centr_betw(g7,directed=F)
cb<-centr_betw(g7,directed=F)$res
CentrDf<-cbind(cb,V(g7)$label)
order(cb,decreasing=T)

