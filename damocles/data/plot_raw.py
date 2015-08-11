import numpy as np 
import matplotlib.pyplot as pl

wave,flux  = np.loadtxt('d1862.dat', skiprows=1,usecols = (0,1), unpack = True)

flux[flux==0]=None


fig = pl.figure()
pl.xlabel('velocity kms$^{-1}$')
pl.ylabel('Flux')
pl.title('halpha')
#pl.ylim(1, 300)
#pl.xscale('log')
pl.plot(wave, flux,'b')
pl.axvline(x=0,color='red')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
pl.xlim([-10000,10000])
#pl.savefig('line.eps')
pl.show()
