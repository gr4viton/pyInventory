
#http://python.org/dev/peps/pep-0263/  = utf8
import time
from apihelper import info


#import time
#info(time, 20, 20)
import gr4module
#info(gr4module, 20)
from gr4module import P__ 

lsWords = ["jedna","dva","tri","ctyri","pet","sest","sedm","osm","devet","deset"]


lsNum = [elem+1 for elem in range(10)]

#dict = [(word, num) for word, elem in lsWords, lsNum]

dict = {}
#for num in lsNum:
#    dict[lsWords[num]]=num




print(lsWords)
print(lsNum)


num = 10
import string
#info(string,20)


d = {}
for i in range(len(lsWords)):
    d[lsWords[i]] = lsNum[i]

print("\nDictionary w/connected numbers[int] and number names[str] from 1 to 10:\n"+str(d))

a = ["=".join([
        string.capwords(word),
        word,
        str(d[word])]
        ) for word in lsWords]
print("\nList of connected number names w/first letter in capital, all lower-case and number[int] separated by equation sign:\n"+str(a))


dd = [elem.split("=") for elem in a]
print("\ndd=\n"+str(dd))

ddd = [ "=".join([b, c]) for (a, b, c) in dd]
print("\nddd=\n"+str(ddd))

#print("\ndd[1]=\n"+str(dd[1]))

dddd = {}
for elem in dd:
#    print("=".join( [str(elem),str(elem[1])] ))
    dddd[elem[0]] = elem[2]
    dddd[elem[1]] = elem[2]

print("\ndddd=\n"+str(dddd))

#info(dddd)
#print("\n".join(
#    "%s=" % key for key in dddd.keys
#    + "%2i" % val for val in dddd.values))
#items
print(dddd.__iter__)
print(dddd.keys)
print(dddd.items)
print("\n")

s = "03-09-2014"
ls = list(s.split("-"))
ls.reverse()
s2 = "_".join(ls)
print("%s <==> %s\n" % (s, s2))

s = "2014_09_03"
ls = list(s.split("_"))
ls.reverse()
s2 = "-".join(ls)
print("%s <==> %s\n" % (s, s2))


a = ("a", "b", "c")
b = list(a)
#c = list(a).reverse()
c = b[:]
c.reverse()

#info(b)
#3 = t.size() 
print("%s\n" * 3 % (a,b,c))

#modul = "pickle"
#import difflib

P__()
#info( difflib )
import sys
print("\n".join(sys.path))

P__()

#xml stadart and 3rd party
try:
    from lxml import etree
except ImportError:
    import xml.etree.ElementTree as etree

print(os.path.join('/Users/pilgrim/diveintopython3/examples', 'humansize.py'))  

(dirname, filename) = os.path.split(pathname)         
 import os, glob
metadata_dict = {f:os.stat(f) for f in glob.glob('*test*.py')}

metadata_dict['alphameticstest.py'].st_size      
time.sleep(2)
