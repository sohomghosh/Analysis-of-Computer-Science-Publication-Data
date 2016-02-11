import nltk
from nltk.corpus import stopwords
stop = stopwords.words('english')
fp=open("out1_clean.csv",'r')
fp1=open("out1_clean3.csv",'w')
while True:
    line=fp.readline()
    tk=line.split(',')
    a=str(tk[0])
    if not line:
        break
    a=a.lower()
    k=[i for i in a.split() if i not in stop]
    for i in range(0,len(k)):
            fp1.write(str(k[i]+" "))
    fp1.write("\n")
    #fp1.write(","+str(tk[1]))
fp.close()
fp1.close()