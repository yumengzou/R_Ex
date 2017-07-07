##### Processing .xml file with XML package #####


##### Test #####
setwd("C:/Users/yumeng.zou/Google Drive/Freshyear/Summer/Research")
library(XML)
doc<-xmlTreeParse("test_cd.xml")
root<-xmlRoot(doc)
class(root)
names(root)

onecd<-root[[1]]
class(onecd)
onecd

xmlValue(onecd[["title"]])
prices<-xmlSApply(root, function(x)xmlValue(x[["price"]]))
## xmlValue only applies to one node
## xmlSApply applies to a loop of nodes 
prices

getvar<-function(x,var)xmlValue(x[[var]])
names(root[[1]])
class(names(root[[1]]))
res = lapply(names(root[[1]]),function(var)xmlSApply(root,getvar,var))
## double loop
## var = names(root[[1]]) = "title", "artist", "country", "company", "price", "year"
cds=data.frame(res)
## if necessary, names(cds)<-names(root[[1]])
cds


##### Baise 1848 #####
setwd("C:/Users/yumeng.zou/Google Drive/Freshyear/Summer/Research")
library(xml2)
doc<-read_xml("BaiseYDHG1848stele.xml")
class(doc)
doc

xml_contents(doc) ## node set
text<-xml_contents(doc)[[3]] ## node
xml_path(text)
class(text)

xml_contents(text)[[1]]
body<-xml_contents(text)[[1]]
xml_path(body)

## namespace
xml_ns(doc)
xml_ns(text)

div<-xml_contents(body)
list<-xml_contents(div[[3]])
xml_path(list)

item<-xml_find_all(doc,"/*/*[3]/*/*[3]/*/*",xml_ns(doc))
## absolute location path
measure<-xml_find_all(item,"./*[2]/*",xml_ns(item))
## relative location path
quantity<-xml_find_all(measure,"./@quantity",xml_ns(measure))
## return a node set

xml_text(item)
xml_integer(quantity)
