# Read a file
from collections import Counter
import string
import unicodedata
import sys
import re

tbl = dict.fromkeys(i for i in range(sys.maxunicode)
                      if unicodedata.category(chr(i)).startswith('P'))
def remove_punctuation(text):
    return text.translate(tbl)



def GET_nonAlphanumericChars(txt):
    set_AlphaNumOnly = set(remove_punctuation(txt))
    set_All = set(txt)
    set_NonAlphaNumOnly = set_All - set_AlphaNumOnly
    strNonAN = "".join(set_NonAlphaNumOnly)
    return strNonAN

def REMOVE_punctuation_wBenefits(txt):
    strNonAN = "_|/|%|\.|\(|:|\)"
    if 0:
        print("\n"+strNonAN)
        txt2 = re.sub(strNonAN," ", txt)
        tup = (txt, txt2, remove_punctuation(txt), remove_punctuation(txt2) )
        print( ("%s%%%%%%%%%%%%%%%%" * len(tup)) % tup )
    return remove_punctuation( re.sub(strNonAN," ", txt) )

def most_common(lsWords,lsIgnored):
#    words_to_count = (word for word in word_list if word[:1].isupper())
    c = Counter(lsWords)
    return c.most_common()


if __name__ == "__main__":
    def_ignored = ["%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%"]
    file = "dreamer.vim"    
    with open(file, "rt") as in_file:
        text = in_file.read()
    #lower
    text = text.lower()
    #interpunction

    #punctuation
    text = REMOVE_punctuation_wBenefits(text)

    #non-literal

    lsWords = text.split()

#   print(lsWords)
#    coms = []
    coms = most_common(lsWords, def_ignored)
#    print("%%%%%%\n"+" ".join(coms))
    nWords = 442
#    print( "\n".join( [ ("%s=%s" % coms[i]) for i in range(2)] ) )
#    for com in coms[:10]: print( [ "%s = %s" % com ])
#    print([ ("%s = %s" % com) for com in coms[:10] ])
#    for com in coms[:10]: print( [ "%s = %s" % (com[1], com[0]) ])
    print("\n".join( [
            ("%s\t%s" % (com[1], com[0])) for com in coms[:nWords] 
        ]))
#        txt = text[:442]
#    print(text)
#    print( "\n".join(coms) )
