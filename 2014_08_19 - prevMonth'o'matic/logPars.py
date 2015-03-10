import linecache
import re
import sys

from apihelper import info

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# typy notes
# [x] - done
# [L] done later than written - not knowing exactly when
# [D] please move it from thisMonth to inbox database
# [..] not exactly done per say.. but sort of
# ..[] old -> not done but want to be postponed
# [h] new - hours slept
# [] not done yet
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

# ____________________________________________________
# separators
sepInNote = "~" 
SS = sepInNote * 4
sepNewNote = "@"
SN = sepNewNote * 4
sepDayCheck = "[DAY]"

# ____________________________________________________
# regex match string
num0to31 = "(3[0-1|[1-2][0-9]|[0-9])"
strCheckVoid = "\[\]"
strCheckAny = "\[.*\]"
strOneNote = "(%s)(.*)[\[|#]" % strCheckAny

strDate = ("#>(..)d.*")
strCheckAndRest = "(%s)(.*)" % strCheckAny

strParsedNote = "%s(.*?)%s" % (sepNewNote,sepNewNote)#((sepNewNote,)*2)

def READ(path):
    with open(path, 'r') as f:
        return f.read()

def PREPROCESS(txt):
#    print(dir(txt.__iter__()))
 #   return txt
#    reLine = ("(.*)\n")
    regexLine = re.compile("(.*)\n")
    #print(info(re))
    lines = regexLine.findall(txt)

#    r = regexLine.search(txt)


 #   print(txt)
#    strDate = ("#>(%s)d_..<%%*") % num0to31
#    strDate = ("#>(%s)d_..<.*") % num0to31

    regexDate = re.compile(strDate)
    new_txt = ""
    DD = 0
    strDD = str(DD)
    isInDaystrip = False
    new_line = ""
    toAddLine = True

    iL = 0 # line iterator
    for line in lines:
        toAddLine = True # by default if not said otherwise
        r = regexDate.match(line)
        if r:
        # it is a line with day date
#            print(r.groups())

            # DayDate
            isInDaystrip = True # to parse area between daydate and first note
            DD = [ int(item) for item in r.groups() ]
            strDD = str(DD[0])
            toAddLine = False
            #new_line = line            
        else:
        # it is not a day date line
            rCheck = re.compile(strCheckAndRest)
            r = rCheck.match(line)
            if r:
            # it is a first line of one note
                rgs = r.groups()
#                print(rgs)
#                new_line = 
                strs = [SN, rgs[0], SS, strDD, SS]
                if len(rgs) > 1:
                    strs.append( rgs[1] )
#                print(line)
#                print( "len(  %s  ) = %i" % (strs, len(strs)) )
#                new_line = ("%s"*len(strs)) % tuple(strs)
                new_line = "".join(strs)
#                new_line = ssss % tuple(a)
            else:
            # it is NOT a first line of any note, nor the day date line
            # so it is other lines inside note or a sleep hour / food note
                if isInDaystrip == True:
                # it is sleep hour / food note
#                    ls = [sepDayCheck, line 
                    if line != "h":
                        new_line = "".join([ SN, sepDayCheck, SS, strDD, SS, line])
                        isInDaystrip = False
                    else:
                    # ignore empty hours
                        toAddLine = False
                else:
                # it is another line of some note
                    if line != "":
                        new_line = line
                    else:
                    # ignore empty lines
                        toAddLine = False
            
#        print(new_line)
        
 #       print(line)
        if toAddLine == True:
            newLine_cased = new_line
            #newLine_cased = "%i +++ %s\n" % (iL,new_line)
            #newLine_cased += "%i --- %s\n" % (iL,line)
            new_txt += newLine_cased
        iL += 1
    return(new_txt)
    exit()
def PARSE(fname):
    """ """
    print("\n"*10)
    i = 1 # line counter
#    i_replace = 0 # line for replacement referencer
    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    # regex settings for finding the PTX line

#    oneNote = "(\[\].*\n)[\[|#]"
#    reLine = ("%s") % (oneNote,)

#    regexLine = re.compile(reLine)
    # first insert dates into individual notes - as regex has no memory to do it later

    # ____________________________________________________
    # READ it
    txt = READ(fname)
    # ____________________________________________________
    # Preprocess
    txt = PREPROCESS(txt)
    # ____________________________________________________
    # parse individual notes
    regexLine = re.compile(strParsedNote , re.MULTILINE|re.UNICODE|re.DOTALL)
    r = regexLine.search(txt)
    rgs = r.groups()

    print(help(txt.splitlines))
    rgs = txt.splitlines(True).split(SN)
    
    # multiline split
    for note in rgs:
        
        print("\n".join([ "~"*80, note, "\n" * 3 ]) )
        
    print(help(txt.split))
#    print(info(string))
    # decide types of notes

    # prepare new log file

    # create old log file
    # not inserted dates into notes
    # = preceed undone notes as this: ..[]
    # delete everything after last day??

    #r = regexLine.match(txt)
    # ____________________________________________________
    # this is right:
    #if r: # something was foun)
    #    print("___\n___\n___".join(r.groups()))
 #   while True:
 #       line = linecache.getline(fname, i)
 #       if line:
 
if __name__ == "__main__":
    fname = ["THROTLE_thisMonth.vim", "thisMonth.vim"]
    PARSE(fname[0])
    
