import numpy as np 
import matplotlib.pyplot as pl

wave,vel, flux = np.genfromtxt('output/output.out', skip_header = 0, skip_footer = 0, usecols = (0,1,2), unpack = True)
#wave,flux = np.loadtxt('output/output.out', usecols = (0,1), unpack = True)
#wave,flux_mod,flux_dat=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)

fig = pl.figure()
pl.xlabel('velocity km$s^{-1}$')
pl.ylabel('Flux')
pl.title('')
#pl.ylim(1, 300)
#pl.yscale('log')
pl.plot(vel, flux,'b')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
pl.xlim([-40000,40000])
pl.savefig('vbulk10000_ES_dust5.eps')
pl.show()
