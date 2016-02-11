fp=open("out1_clean2.csv",'r')
fp1=open("map_out.csv",'w')
while True:
    line=fp.readline()
    if not line:
        break
    tk=line.split(',')
    a=str(tk[1])
    if a>='1940' and a<='1949':
        fp1.write("1,"+str(tk[0])+"\n")
    if a>='1950' and a<='1959':
        fp1.write("2,"+str(tk[0])+"\n")
    if a>='1960' and a<='1969':
        fp1.write("3,"+str(tk[0])+"\n")
    if a>='1970' and a<='1979':
        fp1.write("4,"+str(tk[0])+"\n")
    if a>='1980' and a<='1989':
        fp1.write("5,"+str(tk[0])+"\n")
    if a>='1990' and a<='1999':
        fp1.write("6,"+str(tk[0])+"\n")
fp.close()
fp1.close()