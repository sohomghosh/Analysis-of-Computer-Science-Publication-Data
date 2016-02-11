library(tm)
library(wordcloud)
library(RColorBrewer)
speech= "C:/Users/Sohom Ghosh/Desktop/K-shareProject/reduced.txt"
modi_txt<-readLines(speech)
modi<-Corpus(VectorSource(modi_txt))
modi_data<-tm_map(modi,stripWhitespace)
modi_data<-tm_map(modi_data,tolower)
modi_data<-tm_map(modi_data,removeNumbers)
modi_data<-tm_map(modi_data,removePunctuation)
modi_data<-tm_map(modi_data,removeWords, stopwords("english"))
modi_data<-tm_map(modi_data,removeWords, c("and","the","our","that","for","are","also","more","has","must","have","should","this","with","system"))
modi_data <- tm_map(modi_data, PlainTextDocument)
wordcloud(modi_data, scale=c(5,0.5), max.words=50, random.order=FALSE, rot.per=0.35, use.r.layout=FALSE, colors=brewer.pal(8, "Dark2")) 



#tdm_modi<-TermDocumentMatrix(modi_data,control = list(weighting =function(x) weightTfIdf(x, normalize = FALSE),stopwords = TRUE)) #Creates a TDM
#TDM1<-as.matrix(tdm_modi) #Convert this into a matrix format
#v = sort(rowSums(TDM1), decreasing = TRUE) #Gives you the frequencies for every word
#Summary(v)
