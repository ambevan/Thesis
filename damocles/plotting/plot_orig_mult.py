import numpy as np 
import matplotlib.pyplot as pl

wave,vel, flux = np.genfromtxt('output/output_normdust5.out', skip_header = 0, skip_footer = 0, usecols = (0,1,2), unpack = True)
wave2,vel2, flux2 = np.genfromtxt('output/output_scatdust5.out', skip_header = 0, skip_footer = 0, usecols = (0,1,2), unpack = True)
wave3,vel3, flux3 = np.genfromtxt('output/output_absdust5.out', skip_header = 0, skip_footer = 0, usecols = (0,1,2), unpack = True)
wave4,vel4,flux4 = np.genfromtxt('output/output_nodust.out', skip_header = 0, usecols = (0,1,2), unpack = True)
#wave,flux_mod,flux_dat=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)

print flux.max()
print flux2.max()

flux2=flux2*flux.max()/flux2.max()
flux3=flux3*flux.max()/flux3.max()

fig = pl.figure()
pl.xlabel('velocity km$s^{-1}$')
pl.ylabel('Flux')
pl.title('')
#pl.ylim(1, 300)
pl.yscale('log')
pl.plot(vel, flux,'b',label='10^-5 amC')
pl.plot(vel2,flux2,'g',label='10^-5 pure absn')
pl.plot(vel3,flux3,'r',label='10^-5 pure scat')
pl.plot(vel4,flux4,'m',label='no dust')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
pl.xlim([-40000,40000])
pl.legend(loc="upper left")
pl.savefig('vbulk100000.eps')
pl.show()
