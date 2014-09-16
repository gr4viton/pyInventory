# Synchronize windows system time from internet
# from <http://code.activestate.com/recipes/270423-setting-win32-system-clock-using-sntp/>

#import time
#tt = time.gmttime()
#win32api.SetSystemTime(year, month, 0, day, 
#    tt.tm_hour, tt.tt_min, tt.tt_sec, 0)


from urllib import * #urlopen
from time import time
from os import system

def ask_time( url, tzn, tz2=None ):
  """Get time form the Internet.
  # url must be e.g. http://tycho.usno.navy.mil/cgi-bin/timer.pl :-)
  # tzn must be UTC,EST,PST,etc.
  #     UTC will return time like "22:30:40 UT"
  #     Other options return like "05:30:40 PM" i.e. with AM/PM
  # tz2 can be another time zone, e.g. EDT,PDT,etc.
  #Returns "HH:MM:SS AA" or empty string if any failure.
  """
  try:
    doc = urlopen( url ).readlines()
    for line in doc:
      line = line.strip()
      if line.endswith( tzn ) or (tz2 and line.endswith( tz2 )):
        col = line.index(':')
        return line[col-2:col+9] # 04:01:28 PM (or 22:30:40 UT)
  except:
    pass
  return ''

def synch_time( url, tz, tz2=None ):
  time_str = ask_time( url, tz, tz2 )
  if time_str:
    try:
      before = time()
      system( 'time ' + time_str ) # do synchronize!
      delta = time() - before
      return "Time is %s\nCorrected by %.1f sec" % (time_str,delta)
    except:
      pass
  return 'Not synchronized'

if __name__ == "__main__":
  #from win32ui import MessageBox
  from tkinter import *
  from tkinter import messagebox
  import string
  #top = tkinter.Tk()
  pref =  "http://" 
  url_str = "ntp.nic.cz; time.nist.gov; time-c.nist.gov; time-d.nist.gov; nist1-macon.macon.ga.us; wolfnisttime.com; nist.time.nosc.us"
  urls = [ pref + url for url in url_str.split("; ") ]
  url = urls[0]
  rc = synch_time( url, "EST", "EDT" )
  #messagebox.showinfo( "synch_time from %s" % url, rc )

  tz = "EST"
  tz2 = "EDT"
  time_str = ask_time( url, tz, tz2 )
  import urllib.request
#  url = pref+ "www.seznam.cz"
  with urllib.request.urlopen( url) as page:
      time_str = page.readlines()

  print(time_str)
  #messagebox.showinfo( "synch_time from %s" % url, time_str )

  #top.mainloop()

# EOF

