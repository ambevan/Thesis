import numpy as np 
import matplotlib.pyplot as pl
import pylab

drop=1.3E30
stretch=3E31
def graph(stretch,drop):
    wave,vel,flux = np.loadtxt('output/output.out', usecols = (0,1,2), unpack = True)
    wav2,flux2 = np.loadtxt('line.in',skiprows=3,usecols = (0,1),unpack = True)
    vel2=3E5*(wav2-486.1363)/486.1363
    flux2=(flux2*stretch)-drop
    fig = pl.figure()
    pl.xlabel('velocity kms$^{-1}$')
    pl.ylabel('Flux')
    #pl.title()
    pl.plot(vel,flux,'b',label='ejecta model d239')
    pl.plot(vel2,flux2,'r',label='observed d239')
    pl.legend(('ejecta model d239','observed d239'))
    pl.xlim([-8000,8000])
    pylab.show()

graph(stretch,drop)
