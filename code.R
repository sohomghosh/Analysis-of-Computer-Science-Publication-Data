setwd("C:/Users/Sohom Ghosh/Desktop/K-ShareProject")
require(XML)
xmlfile=xmlParse("dblp50000.xml")

xmltop = xmlRoot(xmlfile)

xmlName(xmltop)
xmlSize(xmltop)
xmlName(xmltop[[1]])
xmltop[[1]]
xmltop[[2]]
xmltop[[1]][[1]]


tit<-getNodeSet(xmlfile,"/dblp/article/title")
#lapply(tit,FUN)
yr<-getNodeSet(xmlfile,"/dblp/article/year")
#lapply(yr, write, "C:/Users/Sohom Ghosh/Desktop/test.txt", append=TRUE)
#Remove stop words
##lapply(abstractWords, function(x) x[x %in% stopWords]
#doc =xmlTreeParse(reply, asText = TRUE, useInternal = TRUE)

for (j in tit){
  #write.csv(j,file="titles.csv")
  print(j)
}
require(plyr)
Madhu2012=ldply(xmlToList("dblp.xml"), data.frame)
Madhu2012.Clean=Madhu2012[,c['title']]


printer1<- file("out1.txt","w")
fileName="dblp50000.xml"
conn=file(fileName,open="r")
linn=readLines(conn)
for (i in 1:length(linn)){
  if(grepl("<title>", linn[i])){
    #print(linn[i])
    writeLines(linn[i],con=printer1)
  }
  if(grepl("<year>",linn[i])){
    writeLines(linn[i],con=printer1)
    #print(linn[i])
  }
}
close(conn)
close(printer1) 







f1=readLines("dblp.xml")
