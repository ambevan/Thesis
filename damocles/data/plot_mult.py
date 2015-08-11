import numpy as np 
import matplotlib.pyplot as pl


vel1,flux1 = np.loadtxt('d0522.in', usecols = (0,1), skiprows=1, unpack = True)
vel2,flux2 = np.loadtxt('d0612.in', usecols = (0,1), skiprows=1, unpack = True)


#labelling and figure
fig = pl.figure()
pl.xlabel('velocity $kms^{-1}$')
pl.ylabel('Flux')
pl.title('Halpha')

#pl.ylim(1, 300)
#pl.xscale('log')

pl.plot(vel1,flux1,label='d0522')
pl.plot(vel2,flux2,label='d0612')
#pl.plot(vel3,flux3,label='1E-4')
pl.legend(('d0522','d0612'))
pl.xlim([-10000,10000])
pl.axvline(x=0,color='red')
#pl.savefig('line.eps')
pl.show()
