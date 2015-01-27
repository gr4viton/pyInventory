#import _tkinterinter as tkinter
#from _tkinterinter import *

try:
    import tkinter as tk
    from tkinter import *
except ImportError:
    raise ImportError ("The tkinter Module is required to run this program.")

from apihelper import info
#from gr4module import *
#from xmlPars import REPLACE_xml_singalNames
#from xmlPars import GET_xml_singalNames

import linecache # for config loading

import sys # for save

#import _tkinternter as tkinter
import time
import string # for alphabet
import re # for text-number splitting



config_sufix = "_pinmux.vim"

frame = tk.Frame
class mainApp(frame):
    ''' An example application for TkInter.  Instantiate
        and call the run method to run. '''
    rec_i = 0
    recs = ['world', 'suckers', 'pals', 'mutants', 'meatbags', 'zombies']

    def __init__(q, master):
        
        q.settings_fname = "settings.ini"
#        q.LOAD_settings()

        # Initialize window using the parent's constructor
        frame = tk.Frame.__init__(q,
                          master,
                          width=300,
                          height=200)

        # Set the title
        q.master.title('INboxINput')
 
        # This allows the size specification to take effect
#        q.pack_propagate(0)
 
 
        q.defFont = ("Console", 8)
        q.defFont_small = ("Console", 6)
        q.GUI_make_all()
        q.GUI_put_all()
        
        q.BIND_all()
        
        # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        # view
        q.ACTUALIZE_view()
    def ACTUALIZE_view(q):
        pass

    def GUI_make_all(q):
        # label JX_[1:Y]
        q.lbJX = tk.Label(q, text='JX_[1:Y]=')
        #____________________________________________________
        #lbJXY
        q.lbJXY_val = tk.StringVar()
        q.lbJXY = tk.Label(q, 
                textvariable=q.lbJXY_val, 
                justify=RIGHT, anchor=N,
                font=q.defFont
                )
        q.lbJXY_val.set('')
        #____________________________________________________
        q.eJX_val = tk.StringVar()
        q.eJX = tk.Entry(q, width=4, textvariable=q.eJX_val)
        q.eJX_val.set("a")

        #btn genJXY
        q.btnGenJXY = tk.Button(q, text='Gen JX_[1:Y]',
#                                   command=q.genJXY,
                                   underline=0)
        # txInsertMore
        q.txInsertMore = tk.Text(q)
        q.txInsertMore.config(font=q.defFont, height=10, width = 20 )



        q.GUI_make_btn_all()

    def GUI_make_btn_all(q):
        # btns
        q.btnPopulatePTs = tk.Button(q, 
                                            text='Populate ports', 
                      #                      command=q.POPULATE_PTs_andActualize,
                                            underline=7)
    def GUI_put_all(q):
         #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        # Put the controls on the form
        #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        q.eJX.grid(row=3,column=1,sticky=W)
        
        q.lbJXY.grid(row=4,column=0,columnspan=1,rowspan=1,sticky=N+W+E)
        q.txJXY.grid(row=4,column=1,columnspan=3,rowspan=1,sticky=N+W+E,pady=1)
        
        q.txInsertMore.grid(row=5,column=0,columnspan=4,rowspan=1,sticky=S+N+W+E,pady=1)
        q.btnInsertMore.grid(row=5,column=4,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
        
        q.txAddOther.grid(row=5,column=5,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
        q.btnAddOther.grid(row=5,column=6,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
        
        #____________________________________________________
        # pin selector, adder and inserter
        q.txSelPin.grid(row=0,column=1,columnspan=2,rowspan = 2)

        q.btnAdd.grid(row=0,column=3,sticky=W+S+E+N)
        q.btnInsert.grid(row=1,column=3,sticky=W+S+E+N)

        Label(q, text='new SigName:').grid(row=0,column=4,columnspan=1,sticky=W+S+E+N)
        Label(q, text='Pin signals:').grid(row=1,column=4,columnspan=1,sticky=W+S+E+N)
        q.txSigName.grid(row=0,column=5,columnspan=1,sticky=W+S+E+N)
        q.txWholeValue.grid(row=1,column=5,columnspan=1,sticky=W+S+E+N)

        # ____________________________________________________
        # upper strip
        col_s = 4 #start column #
        q.btnActualize.grid(row=1,column=6,columnspan=2,sticky=W+S+E+N)

        q.btnSaveToPinmux.grid(row=0,column=col_s+5, columnspan=1,sticky=N+W+E+S) 
        q.btnLoadFromPinmux.grid(row=0,column=col_s+7, columnspan=1,sticky=N+W+E+S) 
        q.txFilePinmux.grid(row=1,column=col_s+5, columnspan=6,sticky=N+W+E+S) 

        q.btnSaveConfig.grid(row=2,column=col_s+5, columnspan=1,sticky=N+W+E+S) 
        q.btnLoadConfig.grid(row=2,column=col_s+7, columnspan=1,sticky=N+W+E+S) 

        # ____________________________________________________
        # txPTs
        [lb.grid(row=3,column=n_col*2-col_s,columnspan=2,sticky=W+S+E) 
                                        for lb,n_col in zip(q.lbPTs, range(col_s,col_s+numOfPorts))]
        [lb.grid(row=4,column=n_col*2-col_s,sticky=N+E) 
                                        for lb,n_col in zip(q.lbPins, range(col_s,col_s+numOfPorts))]
        [tx.grid(row=4,column=n_col*2+1-col_s, sticky=N+W+E, pady=1 ) 
                                        for tx,n_col in zip(q.txPTs, range(col_s,col_s+numOfPorts))]

    def BIND_all(q):
        # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        # bindings
        # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        modifs = '!'
        # button shortcuts
        q.BIND_keyFcn(master, q.genJXY, modifs, 'gq')
        q.BIND_keyFcn(master, q.POPULATE_PTs_andActualize, modifs, 'pe')
        q.BIND_keyFcn(master, q.ADD_sigNameAndActualize, modifs, 'air')
        q.BIND_keyFcn(master, q.ACTUALIZE_view, modifs, 'v')
        q.BIND_keyFcn(master, q.SAVE_toPinmux, modifs, 's')

        # exit
        q.BIND_keyFcn(master, q.EXIT_program, modifs, 'q')
#        master.bind("<Shift-Escape>", q.EXIT_program) 
    
        # focus shortcuts
        # not working
        q.BIND_keyFcn(master, q.eJX.focus_set(), '!', 'z')
   #     q.BIND_keyFcn(master, q.focus_set(q.eJX), '!', 'z')
#        q.BIND_keyFcn(master, q.eJY.focus_set, '!', 'x')
        
        # ____________________________________________________
        # disable some keys
        items = q.txPTs + [q.txSigName,q.txSelPin,q.txJXY]
        keys = ['<Return>', '<Tab>', '<space>']
        #[item.bind(key, q.KEY_disable(item)) for item in items ]
        [item.bind(key, q.KEY_disable(item)) for item in items for key in keys]


        q.txSigName.bind('<Return>', q.KEY_disable(q.txJXY))
    def EXIT_program(q, *whatever):
#        q.SAVE_config()
        q.destroy()
        q.exit()
    def print_out(q):
        ''' Print a greeting constructed
            from the selections made by
            the user. and changes the next value of recipient string from list of recipients
            '''
        
        print('%s, %s!' % (q.greeting_var.get().title(),
                           q.rec_var.get()))
        
        q.rec_i += 1
        if q.rec_i >= len(q.recs): q.rec_i = 0
        q.rec_var.set(q.recs[q.rec_i])
        
    def run(q):
        ''' Run the app '''
#        q.
        #print(dir(tkinter))
        #info(tkinter)
        #print(tk.TOP())
        #print(tk.BOTTOM)
        q.LOAD_pinmuxFname_fromSettings()
        q.genJXY()
        q.POPULATE_PTs_from_txJXY()
        q.mainloop()
    def KEY_disable(q, evt):          
        ''' Makes the key do nothing'''
        #print(evt)
        return 'break' # <--------- this makes normal behaviour disabled
    def KEY_down(q, evt):          
        ''' Makes the key do nothing'''
        #print(evt)
        return 'break' # <--------- this makes normal behaviour disabled

#        q.txInsertMore.delete(1.0, END)
#        q.txInsertMore.insert(INSERT, parse_text )

    def tutor(q):
        
        # We'll use the flexible pack layout manager
        q.pack()

        # The greeting selector
        # Use a StringVar to access the selector's value
        q.greeting_var = tk.StringVar()
        q.greeting = tk.OptionMenu(q, q.greeting_var, 'hello', 'goodbye','heyo')
        q.greeting_var.set('hello')
 
        # The recipient text entry control and its StringVar
        q.rec_var = tk.StringVar()
        q.rec = tk.Entry(q,
                                  textvariable=q.rec_var)
        q.rec_var.set('world')
 
        # The go button
        q.go_button = tk.Button(q,
                                   text='Go',
                                   command=q.print_out)
def key(event):
    print("pressed", repr(event.char))

root = tk.Tk()
app = mainApp(root)
#app.bind('<Alt-g>', app.key)
#app.bind('<Alt-g>', key)
app.run()



#time.sleep(2)



# todos:
# save PTs to file
# saving dialog
# backpropagation:
# go through xml file pinmux.peb and find which port pins are availible -> color them in label view - to know

#text field for processing:
# e2=something;e3=something_else [Add]
# also a possibility for prefix to be asigned

#erase button

# iterating through permutations / or only changin first element fifo style in the signal names - by clicking on label

# loading from xml

