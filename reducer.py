fp=open("suffle_out.csv",'r')
fp1=open("reduced.csv",'w')
line=fp.readline()
c=line.split(',')[0]
fp1.write(str(line)[:-1])
while True:
    line =fp.readline()
    if not line:
        break
    tk=line.split(',')
    if c==tk[0]:
        fp1.write(str(tk[1])[:-1])
    else:
        fp1.write("\n"+str(line)[:-1])
    c=tk[0]
fp.close()
fp1.close()