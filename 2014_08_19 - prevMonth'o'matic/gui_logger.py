#import _tkinterinter as tkinter
#from _tkinterinter import *

try:

    import tkinter as tk
    from tkinter import W, S, N, E, RIGHT, LEFT, CENTER

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

#import gui as gui

class btns(tk.Frame):

    def __init__(q,master):
        pass
config_sufix = "_pinmux.vim"

# inheritance from tk.Frame
class C_mainApp(tk.Frame):
    ''' An example application for TkInter.  Instantiate
        and call the run method to run. '''

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# TODO:
# GUICKO
# textbox do ktereho se pøi spuštìní naète thismonth
# txLog
# tlaèítka na pøejíždìní mezi mìsíci
# btnNextMonth
# btnPrevMonth
#- vlevo txLog, tlaèitka vedle
#- vpravo statistika 
#-- poèet, chyby, 
    

    def __init__(q, master):
        q.settings_fname = "settings.ini"
#        q.LOAD_settings()

        # Initialize window using the parent's constructor
        frame = tk.Frame.__init__(q,
                          master,
                          width=300,
                          height=200)

        
        # This allows the size specification to take effect
        q.pack_propagate(0)
 
        # We'll use the flexible pack layout manager
        q.pack()

        # Set the title
        q.master.title('INboxINput')
        
        q.INIT_constants()
        # make intelligence
        q.MAKE_intelligence()

        # create GUI
        q.GUI_INIT_all()

        # logic
        q.PARSE_log()

    def MAKE_intelligence(q):
        
        pass
    def PARSE_log():

    def INIT_constants(q):
#        q.fonts = { 'default':("Console", 8), 'small':("Console", 6) }
        q.fonts = { 'default':("Courier New", 8), 'small':("Console", 6) }


# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
# GUI
# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def GUI_INIT_all(q):
        # q.tk = tk
#        q.mstr = mstr
        #q.f = tk.Frame(q.mstr) #frame
        # print(help(mstr))

        q.CREATE_all()
        q.PUT_all()
        q.BIND_all()
        q.ACTUALIZE_view()
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def CREATE_all(q):
        q.CREATE_btn_all()
        q.CREATE_tx_all()
        q.CREATE_lb_all()
        q.CREATE_e_all()
    def CREATE_btn_all(q):
        pass
    def CREATE_tx_all(q):
        pass
    def CREATE_lb_all(q):
        q.lbTag = tk.Label(q, text="[] #")
        q.lbName = tk.Label(q, text="#tag", underline=0)
        
    def CREATE_e_all(q):
        # q.es is dictionary of of all e = entries 
        # columns are: "tk.entry" "text_var"
        q.es = {}
        q.APPEND_e_('tag',2,"")
#        q.APPEND_e_('subtag',2,"")
    # def ADD_e2es(e,e_,_width, _def_text):

    def APPEND_e_(q, _tag, _width, _def_text):
        q.es[_tag] = q.CREATE_e_(_width, _def_text)
        return q.es[_tag]
    def CREATE_e_(q, _width, _def_text):
        e_ = tk.StringVar()
        e = q.CREATE_e(_width, e_, _def_text)
        return (e, e_)
    def CREATE_e(q, _width, _e_, _def_text):
        e = tk.Entry(q, width=_width, textvariable=_e_, font=q.fonts['default'], 
                justify=CENTER)
        # print(help(e))
        _e_.set(_def_text)
        return e
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def PUT_all(q):
        q.lbTag.grid(row=2,column=1,sticky=E)
        q.lbName.grid(row=3,column=2,sticky=W+S+E+N)
        q.es['tag'][0].grid(row=2,column=2,sticky=W+S+E+N)
        #q.es['subtag'][0].grid(row=2,column=3,sticky=W+S+E+N)
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def SET_focus(q, obj, *whatever):
        obj.focus_set()
#        help(obj)
#        print( "obj=%s" % str(obj) )
        obj.selection_range(0, tk.END)

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def BIND_all(q):
        q.BIND_e_all()
#        btn1.bind("<alt-a>", q.es[0].focus_set)
        
    def BIND_e_all(q):
        q.es['tag'][0].bind("<KeyPress>", q.ACTUALIZE_widths);
        q.es['tag'][0].bind("<KeyRelease>", q.ACTUALIZE_view);
#        q.es['tag'][0].bind("<Alt-w>", lambda s: q.ACTUALIZE_view() );
#        q.es['tag'][0].bind("<Alt-w>", lambda s: print("ahojty") );        
#        q.es['tag'][0].bind("<Alt-w>", q.ACTUALIZE_view() );
#        q.es['tag'][0].bind("<Alt-w>", q.printme() );
    def BIND_txFocus_all(q):
        "calls function for focus on all needed entries"
        for letter, e in q.letters.items():
            print( "e=%s, letter=%s" % (str(e), letter) )
            q.BIND_txFocus(e,letter)
            e.bind("<KeyRelease>", q.ACTUALIZE_widths)
#            e.bind("<alt-a>", q.es[0].focus_set)

    def BIND_txFocus(q, obj, letter):
        "bind alt+letter to give focus to the given obj when pressed on any entry from q.es"
        key = "<Alt-%c>" % letter
        # [e[0].bind( key, q.SET_focus(obj) ) for e in q.es.values()]
        [e[0].bind( key, q.SET_focus(obj)) for e in q.es.values()]
        print( "\n".join (
                ["when pressed [%s] while focus is on [%s] give focus on [%s]"
                % (key, e[0], obj) for e in q.es.values()] 
                ))

# %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def ACTUALIZE_widths(q, *whatever):
        [e[0].config(width= len(e[1].get())+1) for e in q.es.values()]
        print("%"*42)
        print( "\n".join([ ("%s=%s") % (key,val[1].get()) for key,val in q.es.items()]) )
#        if 'done' in q.es.keys():
#            q.es['done'].config(width = 16)
    def ACTUALIZE_colabels(q):
        # print(q.act_tag)
        # print(q.tgs.keys())
        # print(q.tgs.get(q.act_tag))
        # lbs = [ tk.Label(q, 
        #     text=val.replace(q.ch['ul'],""), 
        #     underline=val.index(q.ch['ul'] )
        #     ) for val in q.tgs.get(q.act_tag) ]
    
        # CREATE
        lbs = []
        es = []
        for val in q.tgs.get(q.act_tag):
            ul_char = q.ch['ul']
            text = val.replace(ul_char, "")
            index = val.index(ul_char )
            letter = text[index]
            lb = tk.Label(q, text=text, underline=index)
            ename = 'e_' + text
            (e,e_) = q.APPEND_e_(ename,2,"")
            q.letters[letter] = e
            lbs.append(lb)
            es.append(e)
#        print(q.letters)
        
#        print(q.letters['d'])
        # PUT
        col_s = 3
        [ lb.grid(row=3, column=col_s+col, sticky=W+S+E+N)
                for lb, col in zip(lbs, range(0,len(lbs))) ]

        [ e.grid(row=2, column=col_s+col, sticky=W+S+E+N)
                for e, col in zip(es, range(0,len(lbs))) ]
        # BIND
        q.BIND_txFocus_all()

    def ACTUALIZE_view(q, *whatever):
        # print([e for e in q.es])
        q.ACTUALIZE_widths()
        act_tags = [ key for key in q.tgs.keys() if key == q.es['tag'][1].get() ]
        
        if act_tags:
            q.act_tag = act_tags[0]
            if q.last_act_tag != q.act_tag:
                q.ACTUALIZE_colabels()
                q.last_act_tag = q.act_tag
#        q.PUT_all()

#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    def EXIT_program(q, *whatever):
#        q.SAVE_config()
        q.destroy()
        q.exit()
        
    def run(q):
        ''' Run the app '''
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

def key(event):
    print("pressed", repr(event.char))

root = tk.Tk()
app = C_mainApp(root)
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

