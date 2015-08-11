import numpy as np 
import matplotlib.pyplot as pl

wave,flux_dat,flux_mod=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)
#wave2,flux2=np.loadtxt('13Nov10_d26_halpha_input.txt',skiprows=3,usecols=(0,1),unpack=True)
lambda0=630.0
vel=3E5*(wave-lambda0)/lambda0

fig1 = pl.figure()
pl.xlabel('wavelength (nm)')
pl.ylabel('Flux (arbitrary units)')
#pl.title('SN2010jl Halpha d518')
#pl.ylim([0,0.03])
#pl.xscale('log')
#line_1=pl.plot(wave*10, flux_mod,'b',label='observed')
#line_2=pl.plot(wave*10,flux_dat,'r--',label='model')
line_1=pl.plot(vel, flux_dat,'b',label='observed')
line_2=pl.plot(vel,flux_mod,'r--',label='model')
#line=pl.plot(wave2,flux2,'g',label='13nov')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
pl.xlim([-4000,4000])
#pl.axvline(x=4861.313,color='black',ls='dashed')
pl.axvline(x=lambda0,color='black',ls='dashed')
pl.legend(['observed','model'])
#pl.savefig('line.eps')
#fig2=pl.figure()
#line_1=pl.plot(vel,flux_mod,'b',label='observed')
#line_2=pl.plot(vel,flux_dat,'r--',label='model'

#pl.show(fig1)

#fig2=pl.figure()
#line3=pl.plot(vel,flux_mod,'r--',label='model')
#line4=pl.plot(vel,flux_dat,'b',label='observed')
#pl.xlim([-12000,12000])
pl.show()