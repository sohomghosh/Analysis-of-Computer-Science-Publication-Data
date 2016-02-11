fp=open("out1.txt",'r')
fp1=open("out1_clean.csv",'w')
while True:
    line=fp.readline()
    if not line:
        break
    a=str(line)
    if "<title>"in line:
        a=a[11:len(a)-9]
        fp1.write(a+",")
    if "<year>"in line:
        a=a[10:14]
        fp1.write(a+"\n")
fp.close()
fp1.close()