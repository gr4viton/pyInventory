

letters = "abcde".upper()
tx = ""
for let in letters:
    for pin in range(0,31):
        tx+=("%s%i= \n" % (let,pin))
    tx+="\n"
#tx = "\n".join( [[ ("%s%i =") % (let, pin) 
#    for let in letters]
#        for pin in range (0,32) ])

print(tx)

fname = "add_more.vim"
f = open(fname,'w')
f.write(tx) # python will convert \n to os.linesep
f.close() # you can omit in most cases as the destructor will call if
    
