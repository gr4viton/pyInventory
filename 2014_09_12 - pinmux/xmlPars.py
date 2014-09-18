import xmltodict
import sys

import linecache
import re
#import xml.etree.ElementTree as ET
import bs4
import string
def REPLACE_xml_singalNames(fname, PTs, void_str, fname_new="////"):
    """Goes through [fname] xml file and searches for lines with PTXY in it,
    than it adds 3 to line counter and on this line it replaces the Value tag with the signal name 
    defined in [PTs] dictionary but only if there is not [void_str] in the dictionary."""

    if fname_new == "////": 
        fname_new = fname 
    i = 1 # line counter
    i_replace = 0 # line for replacement referencer
    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    # regex settings for finding the PTX line
    num0to32 = "(3[1-2]|[1-2][0-9]|[0-9])"
    portLetters = "([A-E])"
    reLine = (".*PT%s%s.*_UserName.*") % (portLetters, num0to32)
    #regex_str = ".*PT([A-E])([0-9]|[1-2][0-9]|3[1-2]).*_UserName.*"
    regexLine = re.compile(reLine)
    new_text = ""

    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    #read file
    while True:
        line = linecache.getline(fname, i)
        if line:
            #line = "PTA0_LK_UserName</ItemSymbol>"
            #print(linea)
            #if i != 0: new_text += "\n"
            # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            # search for the right tag with port
            r = regexLine.match(line)
            if r: # something was foun)
                portpin = r.groups()
                #print(portpin)
                # get name of signal
    #            head = '<?xml version="1.0" encoding="UTF-8"?>'
    #            xml_str = "\n".join([head,line.strip()])
    #            tree = ET.parse( xml_str)
    #            root = tree.getroot()
    #            signal = root[0]
    #____________________________________________________
                #soup = bs4.BeautifulSoup(line.strip()+"\n")
                #print(line.strip())
                #print(soup)
                #signal = soup.find('ItemSymbol')
                #signal
    #            print(line)
                #print(soup.a)
                #print(signal.string)
    #____________________________________________________)
                ## get whole signal name - but it's done differently now so it is not needed 
                #tag = "ItemSymbol"
                #reValue = ("<%s>(.*)</%s>") % (tag,tag)
                #reValue = "<ItemSymbol>(.*)</ItemSymbol>"
                #regexValue = re.compile(reValue)
                #r = regexValue.match(line.strip())
                #tagsPorts = r.groups()
                #print( tagsPorts )
                    
                i_replace = i+3
                #if 0:
                #    i = i+3
                #    user_name = linecache.getline(fname, i)
                #    print(user_name)
            if i != i_replace:
                pass
            else:
                Pletter = portpin[0]
                PinNum = int(portpin[1])
#                tag = "Value"
                reStr = "(.*)>.*</(.*)"
                regexStr = re.compile(reStr)

                try:
                    signal_name = PTs[Pletter][PinNum]
#                    print("  PTs[%s][%i] = %s" % (Pletter,PinNum,signal_name) )
                    if signal_name != void_str:
                        # if the new signal name value is defined
                        r = regexStr.match(line)
                        tags = r.groups()
#                        print( tags )
                        line = "%s>%s</%s\n" % (tags[0], signal_name, tags[1])
 #                       print( line )
                        print("PTs[%s][%i] value replaced! sigName= %s" % (Pletter,PinNum, signal_name))
                    else:
                        print("PTs[%s][%i] void value! no change" % (Pletter,PinNum))
                except:
                    # if this port pin is not defined in PTs input dictionary
                    print("PTs[%s][%i] not defined!" % (Pletter,PinNum))

            new_text += line
            i=i+1
        else:
        # end of reading file
            break
    #write file
    
    print(fname_new)
    f = open(fname_new,'w')
    f.write(new_text) # python will convert \n to os.linesep
    f.close() # you can omit in most cases as the destructor will call if

    print("end")
         

#
#import xml.etree.ElementTree as etree
## or for a faster C implementation
## import xml.etree.cElementTree as etree

#tree = etree.parse(file)
#tag = tagsPorts[0]
#elem = tree.find(tag) # finds the first occurrence of element tag-Name
#elem.text = 'newName'
#tree.write('output.xml')
         


    
    
#doc = xmltodict.parse(content)



if __name__ == "__main__":
    fname = "randomPinPebCut_sdk__notRouted.peb"
    fname_new = "a.peb"
    void_str = "#void#"
    PTs = {"A":[void_str, "PTA1_yopthatsit/ACCEL42","J42"]}
    print( "\n".join( [
        "REPLACE_xml_singalNames(fname, PTs, void_str)" ,
        "fname = %s " % fname,
        "void_str = %s" % void_str,
        "PTs = %s" % PTs,
        "%" * 42
        ]))
    REPLACE_xml_singalNames(fname, PTs, void_str, fname_new)


