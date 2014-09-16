#import logging
#logging.basicConfig(filename='time_shift.txt',level=logging.DEBUG)

import ntplib
import time
import datetime
c = ntplib.NTPClient()

pref =  "http://" 
url_str = "ntp.nic.cz; time.nist.gov; time-c.nist.gov; time-d.nist.gov; nist1-macon.macon.ga.us; wolfnisttime.com; nist.time.nosc.us"
urls = [ pref + url for url in url_str.split("; ") ]
url = urls[0]

interval_sec = 60
while True:
    try:
        response = c.request('europe.pool.ntp.org', version=3)
        txt = '%s     %.3f' % (datetime.datetime.now().isoformat(), response.offset)
        print(txt)
        #logging.info(txt)
    except:
        pass
    time.sleep(interval_sec)

