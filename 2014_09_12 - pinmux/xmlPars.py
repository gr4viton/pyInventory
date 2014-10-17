import xmltodict
import sys
import shutil as shu # for copyfile

import linecache
import re
#import xml.etree.ElementTree as ET
import bs4
import string

min = {}
max = {}
rep = {}
nrep = {}

def REPLACE_xml_singalNames(fname, PTs, OSN, void_str, fname_new="////", makebackup=True):
    """Goes through [fname] xml file and searches for lines with PTXY in it,
    than it adds 3 to line counter and on this line it replaces the Value tag with the signal name 
    defined in [PTs] dictionary but only if there is not [void_str] in the dictionary."""

#    print(OSN)
    if fname_new == "////": 
        fname_new = fname 
    if fname == fname_new:
        if makebackup == True:
            backup_fname = fname+"_BACKUP"
            shu.copyfile(fname, backup_fname)
    i = 1 # line counter
    i_replace = 0 # line for replacement referencer
    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    # regex settings for finding the PTX line
    num0to32 = "(3[0-2]|[1-2][0-9]|[0-9])"
    portLetters = "([A-E])"
    reLine = (".*PT%s%s.*_UserName.*") % (portLetters, num0to32)
    #regex_str = ".*PT([A-E])([0-9]|[1-2][0-9]|3[1-2]).*_UserName.*"
    regexLine = re.compile(reLine)

    pinNames = ("ADC,DAC,CMP,UART,JTAG,RST,RST,USB")
    pinList = pinNames.split(",")
    reOther = ".*(%s).*_UserName.*" % "|".join(pinList)
    regexOther = re.compile(reOther)

    new_text = ""

    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    #read file
    min = {}
    max = {}
    rep = {}
    nrep = {}
    print("%"*42)
    print("Starting replacement")

    found_PTX = False
    found_Other = False
    repOther = []
    while True:
        line = linecache.getline(fname, i)
        if line:
            #line = "PTA0_LK_UserName</ItemSymbol>"
            #print(linea)
            #if i != 0: new_text += "\n"
            # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            # search for the right tag with port = PTXY ports
            r = regexLine.match(line)
            if r: # something was found
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
                found_PTX = True
                #if 0:
                #    i = i+3
                #    user_name = linecache.getline(fname, i)
                #    print(user_name)
                
            # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            # search for the right tag with not port = ADC / DAC etc signal name variants
            # but only if PTX was not found - otherwise the signal name is spreaded through PTX sigName
            if found_PTX == False:
                r = regexOther.match(line)
                if r: # something was found
                    otherMatch = r.groups()
#                    print(line)
#                    print(OSN)
                    keySigName = [ (key,value) for key,value in OSN.items() if key in line  ]
                    if keySigName:
                        #print(*keySigName)
                        #print(keySigName[0][0])
                        repOther.append(keySigName[0][0])
                        i_replace = i+3
                        found_Other = True


            if i != i_replace:
                pass
            else:
                #print("%s,%s" % (found_PTX,found_Other))
                if found_PTX == True:
                    (line,min,max,rep,nrep) = MAKE_line_sigName_PTX(line,PTs,portpin,void_str,min,max,rep,nrep)
                elif found_Other == True:
                    line = MAKE_line_sigName_Other(line,OSN,*keySigName)                
                        
                found_PTX = False
                found_Other = False
            new_text += line
            i=i+1
        else:
        # end of reading file
            break
    #write file
    print("%"*42)
    if makebackup == True:
        print("Backup created into file <%s>" % backup_fname)
    if fname != fname_new:
        print("Created file <%s> into file <%s>" % (fname, fname_new))
    else:
        print("Saved into file <%s>" % fname_new)
    f = open(fname_new,'w')
    f.write(new_text) # python will convert \n to os.linesep
    f.close() # you can omit in most cases as the destructor will call if
    
    print("%"*42)
#    print("Replaced these: \nmin:\n%s\nmax:\n%s" % ( str(min), str(max) ) )
    mima = "\n".join( ["%s[%i-%i]\t=%s" % (port,min[port],max[port],rep[port]) for port in min.keys()] )
    mimaOther = "\n".join(repOther)
    print("Replaced these: \n%s\n%s" % (mima,mimaOther))

    mima = "\n".join( ["%s \t=%s" % (port,nrep[port]) for port in nrep.keys()] )
    print("Not replaced these: \n%s" % mima)

    
    allOther = set(OSN.keys())
    nrepOther = allOther.difference( set(repOther) )
    
    mima = "\n".join( 
            ["%s\t= %s" % (key,value) for key,value in
                [(nrep_item, OSN.get(nrep_item)) for nrep_item in nrepOther ] 
            ] )

    print("Need to add manually:")
    print(mima)
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
         

reStr = "(.*)>.*<(.*)"
regexStr = re.compile(reStr)

def INSERT_sigName(line, sigName):
    """ returns line with inserted sigName between the tags"""
    r = regexStr.match(line)
    tags = r.groups()
    return "%s>%s<%s\n" % (tags[0], sigName, tags[1])
    

def MAKE_line_sigName_Other(line, OSN, keySigName):
    (key,sigName) = keySigName
    line = INSERT_sigName(line, sigName)
    print("[%s] value replaced! sigName= %s" % (key, sigName))             
    return line


def MAKE_line_sigName_PTX(line, PTs, portpin,void_str, min,max,rep,nrep):
    Pletter = portpin[0]
    PinNum = int(portpin[1])
# tag = "Value"
    try:
        signal_name = PTs[Pletter][PinNum]
        is_defined = True
    except:
        # if this port pin is not defined in PTs input dictionary
        print("PTs[%s][%i] not defined!" % (Pletter,PinNum))
        is_defined = False
    #                    print("  PTs[%s][%i] = %s" % (Pletter,PinNum,signal_name) )
    if is_defined:
        try:
            if signal_name != void_str:
                # if the new signal name value is defined
                line = INSERT_sigName(line, signal_name)
    #                       print( line )
                print("PTs[%s][%i] value replaced! sigName= %s" % (Pletter,PinNum, signal_name))             
                # statistics
                if not Pletter in rep.keys():   rep[Pletter] = [PinNum]
                else:                           rep[Pletter].append(PinNum)

                if not Pletter in min.keys():
                    min[Pletter] = PinNum
                else:
                    if min[Pletter] > PinNum:
                        min[Pletter] = PinNum
                if not Pletter in max.keys():
                    max[Pletter] = PinNum
                else:
                    if max[Pletter] < PinNum:
                        max[Pletter] = PinNum
            else:
                # statistics
                print("PTs[%s][%i] void value! no change" % (Pletter,PinNum))                                                   
                if not Pletter in nrep.keys():  nrep[Pletter] = [PinNum]
                else:                           nrep[Pletter].append(PinNum)

        except IOError as e:
            print( "I/O error({0}): {1}".format(e.errno, e.strerror) )
    return (line,min,max,rep,nrep)

def GET_xml_singalNames(fname,PTs):
    """Goes through [fname] xml file and searches for lines with PTXY in it,
    than it adds 3 to line counter and on this line it gets the Value tag with the signal names 
    it stores it in PTs afterwards"""

    i = 1 # line counter
    i_replace = 0 # line for replacement referencer
    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    # regex settings for finding the PTX line
    num0to32 = "(3[0-2]|[1-2][0-9]|[0-9])"
    portLetters = "([A-E])"
    reLine = (".*PT%s%s.*_UserName.*") % (portLetters, num0to32)
    #regex_str = ".*PT([A-E])([0-9]|[1-2][0-9]|3[1-2]).*_UserName.*"
    regexLine = re.compile(reLine)
    new_text = ""

    # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    #read file
    print("%"*42)
    print("Starting get-ment from file <%s>" % fname)
    # text which will be parsed in main pinmux.py as a text from ADD MORE textfield
    parse_text = ""
    while True:
        line = linecache.getline(fname, i)
        if line:
            #line = "PTA0_LK_UserName</ItemSymbol>"
            #print(line)
            #if i != 0: new_text += "\n"
            # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
            # search for the right tag with port
            r = regexLine.match(line)
            if r: # something was foun)
                portpin = r.groups()
                i_replace = i+3
            if i != i_replace:
                pass
            else:
                Pletter = portpin[0]
                PinNum = int(portpin[1])
    #                tag = "Value"
                reStr = ".*>(.*)<.*"
                regexStr = re.compile(reStr)
                try:
                    r = regexStr.match(line)
                    signam = r.groups()
                    #PTs[Pletter][PinNum] = signam
                    parse_text += "%s%s=%s\n" % (Pletter, PinNum, signam[0])
                    print("PTs[%s][%i] value got! sigName= %s" % (Pletter,PinNum, signam))        
                except IOError as e:
                    print( "I/O error({0}): {1}".format(e.errno, e.strerror) )

            i=i+1
        else:
        # end of reading file
            break

    print("%"*42)
    #    print("Getting done.. PTs=\n%s" % str(PTs))
    print("Got it.. text for parsing:\n" , parse_text)
    print("end")
    return parse_text
         



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


