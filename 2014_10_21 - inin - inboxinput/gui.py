#class 
#from tkinter import *
import tkinter as tk
from tkinter import W, S, N, E
class C_GUI():
    def __init__(q,mstr):
        # q.tk = tk
        q.mstr = mstr
        q.f = tk.Frame(q.mstr) #frame
        # print(help(mstr))
        q.CREATE_all()
        q.PUT_all()
        q.BIND_all()
        q.mstr.ACTUALIZE_view()

    def INIT_constants(q):
        q.fonts.default = ("Console", 8)
        q.fonts.small = ("Console", 6)


        
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
        q.lbTag = tk.Label(q.mstr, text="[] #")
        
    def CREATE_e_all(q):
        # q.es is dictionary of of all e = entries 
        # columns are: "tk.entry" "text_var"
        q.es = {}
        q.es['tag'] = q.CREATE_e_(2,"") 
        q.es['subtag'] = q.CREATE_e_(2,"") 
    # def ADD_e2es(e,e_,_width, _def_text):

    def CREATE_e_(q, _width, _def_text):
        e_ = tk.StringVar()
        e = q.CREATE_e(_width, e_, _def_text)
        return (e, e_)
    def CREATE_e(q, _width, _e_, _def_text):
        e = tk.Entry(q.mstr, width=_width, textvariable=_e_)
        # print(help(e))
        _e_.set(_def_text)
        return e

    def PUT_all(q):
        q.lbTag.grid(row=2,column=1,sticky=E)
        q.es['tag'][0].grid(row=2,column=2,sticky=W+S+E+N)
        q.es['subtag'][0].grid(row=2,column=3,sticky=W+S+E+N)

        # q.eTag
    def BIND_all(q):
        q.BIND_e_all()
    def BIND_e_all(q):
        q.es['tag'][0].bind("<KeyPress>", q.mstr.ACTUALIZE_view());
        pass

#         
#         # label JX_[1:Y]
#         q.lbJX = tk.Label(q, text='JX_[1:Y]=')
#         #____________________________________________________
#         #lbJXY
#         q.lbJXY_val = tk.StringVar()
#         q.lbJXY = tk.Label(q, 
#                 textvariable=q.lbJXY_val, 
#                 justify=RIGHT, anchor=N,
#                 font=q.defFont
#                 )
#         q.lbJXY_val.set('')
#         #____________________________________________________
#         q.eJX_val = tk.StringVar()
#         q.eJX = tk.Entry(q, width=4, textvariable=q.eJX_val)
#         q.eJX_val.set("a")
#
#         #btn genJXY
#         q.btnGenJXY = tk.Button(q, text='Gen JX_[1:Y]',
# #                                   command=q.genJXY,
#                                    underline=0)
#         # txInsertMore
#         q.txInsertMore = tk.Text(q)
#         q.txInsertMore.config(font=q.defFont, height=10, width = 20 )
#
#
#
#
#         # btns
#         q.btnPopulatePTs = tk.Button(q, 
#                                             text='Populate ports', 
#                       #                      command=q.POPULATE_PTs_andActualize,
#                                             underline=7)
#          #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#         # Put the controls on the form
#         #%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#
#         q.eJX.grid(row=3,column=1,sticky=W)
#         
#         q.lbJXY.grid(row=4,column=0,columnspan=1,rowspan=1,sticky=N+W+E)
#         q.txJXY.grid(row=4,column=1,columnspan=3,rowspan=1,sticky=N+W+E,pady=1)
#         
#         q.txInsertMore.grid(row=5,column=0,columnspan=4,rowspan=1,sticky=S+N+W+E,pady=1)
#         q.btnInsertMore.grid(row=5,column=4,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
#         
#         q.txAddOther.grid(row=5,column=5,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
#         q.btnAddOther.grid(row=5,column=6,columnspan=1,rowspan=1,sticky=S+N+W+E,pady=1)
#         
#         #____________________________________________________
#         # pin selector, adder and inserter
#         q.txSelPin.grid(row=0,column=1,columnspan=2,rowspan = 2)
#
#         q.btnAdd.grid(row=0,column=3,sticky=W+S+E+N)
#         q.btnInsert.grid(row=1,column=3,sticky=W+S+E+N)
#
#         Label(q, text='new SigName:').grid(row=0,column=4,columnspan=1,sticky=W+S+E+N)
#         Label(q, text='Pin signals:').grid(row=1,column=4,columnspan=1,sticky=W+S+E+N)
#         q.txSigName.grid(row=0,column=5,columnspan=1,sticky=W+S+E+N)
#         q.txWholeValue.grid(row=1,column=5,columnspan=1,sticky=W+S+E+N)
#
#         # ____________________________________________________
#         # upper strip
#         col_s = 4 #start column #
#         q.btnActualize.grid(row=1,column=6,columnspan=2,sticky=W+S+E+N)
#
#         q.btnSaveToPinmux.grid(row=0,column=col_s+5, columnspan=1,sticky=N+W+E+S) 
#         q.btnLoadFromPinmux.grid(row=0,column=col_s+7, columnspan=1,sticky=N+W+E+S) 
#         q.txFilePinmux.grid(row=1,column=col_s+5, columnspan=6,sticky=N+W+E+S) 
#
#         q.btnSaveConfig.grid(row=2,column=col_s+5, columnspan=1,sticky=N+W+E+S) 
#         q.btnLoadConfig.grid(row=2,column=col_s+7, columnspan=1,sticky=N+W+E+S) 
#
#         # ____________________________________________________
#         # txPTs
#         [lb.grid(row=3,column=n_col*2-col_s,columnspan=2,sticky=W+S+E) 
#                                         for lb,n_col in zip(q.lbPTs, range(col_s,col_s+numOfPorts))]
#         [lb.grid(row=4,column=n_col*2-col_s,sticky=N+E) 
#                                         for lb,n_col in zip(q.lbPins, range(col_s,col_s+numOfPorts))]
#         [tx.grid(row=4,column=n_col*2+1-col_s, sticky=N+W+E, pady=1 ) 
#                                         for tx,n_col in zip(q.txPTs, range(col_s,col_s+numOfPorts))]
#         # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#         # bindings
#         # %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#         modifs = '!'
#         # button shortcuts
#         q.BIND_keyFcn(mstr, q.genJXY, modifs, 'gq')
#         q.BIND_keyFcn(mstr, q.POPULATE_PTs_andActualize, modifs, 'pe')
#         q.BIND_keyFcn(mstr, q.ADD_sigNameAndActualize, modifs, 'air')
#         q.BIND_keyFcn(mstr, q.ACTUALIZE_view, modifs, 'v')
#         q.BIND_keyFcn(mstr, q.SAVE_toPinmux, modifs, 's')
#
#         # exit
#         q.BIND_keyFcn(mstr, q.EXIT_program, modifs, 'q')
# #        mstr.bind("<Shift-Escape>", q.EXIT_program) 
#     
#         # focus shortcuts
#         # not working
#         q.BIND_keyFcn(mstr, q.eJX.focus_set(), '!', 'z')
#    #     q.BIND_keyFcn(mstr, q.focus_set(q.eJX), '!', 'z')
# #        q.BIND_keyFcn(mstr, q.eJY.focus_set, '!', 'x')
#         
#         # ____________________________________________________
#         # disable some keys
#         items = q.txPTs + [q.txSigName,q.txSelPin,q.txJXY]
#         keys = ['<Return>', '<Tab>', '<space>']
#         #[item.bind(key, q.KEY_disable(item)) for item in items ]
#         [item.bind(key, q.KEY_disable(item)) for item in items for key in keys]
#
#
#         q.txSigName.bind('<Return>', q.KEY_disable(q.txJXY))
#
#
#
