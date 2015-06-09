import numpy as np
from datetime import datetime as dt
import matplotlib.pyplot as mp

dates=np.genfromtxt('/Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_dates.dat',dtype=None,unpack=True)
words=np.genfromtxt('/Users/antoniabevan/Documents/work/yr3/thesis/thesis_word_tracker.dat',dtype=None,unpack=True)
x=[]

for i in range (0,np.size(dates)):
    a=dt.strptime(dates[i],'%y.%m.%d')
    x.append(a)

y=words
mp.plot(x,y)
mp.savefig('words.eps',format='eps')
