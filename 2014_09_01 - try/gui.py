#import _tkinterinter as tkinter
#from _tkinterinter import *

try:
    import tkinter
except ImportError:
    raise ImportError ("The tkinter Module is required to run this program.")


#import _tkinternter as tkinter
import time
 
class ExampleApp(tkinter.Frame):
    ''' An example application for TkInter.  Instantiate
        and call the run method to run. '''
    rec_i = 0
    recs = ['world', 'suckers', 'pals', 'mutants', 'meatbags', 'zombies']
    def __init__(self, master):
        # Initialize window using the parent's constructor
        tkinter.Frame.__init__(self,
                          master,
                          width=300,
                          height=200)
        # Set the title
        self.master.title('TkInter Example')
 
        # This allows the size specification to take effect
        self.pack_propagate(0)
 
        # We'll use the flexible pack layout manager
        self.pack()
 
        # The greeting selector
        # Use a StringVar to access the selector's value
        self.greeting_var = tkinter.StringVar()
        self.greeting = tkinter.OptionMenu(self,
                                      self.greeting_var,
                                      'hello',
                                      'goodbye',
                                      'heyo')
        self.greeting_var.set('hello')
 
        # The recipient text entry control and its StringVar
        self.rec_var = tkinter.StringVar()
        self.rec = tkinter.Entry(self,
                                  textvariable=self.rec_var)
        self.rec_var.set('world')
 
        # The go button
        self.go_button = tkinter.Button(self,
                                   text='Go',
                                   command=self.print_out)
 
        # Put the controls on the form
#        self.go_button.pack(fill=tkinter.X, side=tkinter.BOTTOM)
        self.greeting.pack(fill=tkinter.X, side=tkinter.TOP)
        self.rec.pack(fill=tkinter.X, side=tkinter.TOP)
        self.go_button.pack(fill=tkinter.X, side=tkinter.LEFT)
 
    def print_out(self):
        ''' Print a greeting constructed
            from the selections made by
            the user. and changes the next value of recipient string from list of recipients
            '''
        
        print('%s, %s!' % (self.greeting_var.get().title(),
                           self.rec_var.get()))
        
        self.rec_i += 1
        if self.rec_i >= len(self.recs): self.rec_i = 0
        self.rec_var.set(self.recs[self.rec_i])
        
    def run(self):
        ''' Run the app '''
        self.mainloop()


app = ExampleApp(tkinter.Tk())
app.run()



time.sleep(2)
