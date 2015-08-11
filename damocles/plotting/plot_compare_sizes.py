import numpy as np 
import matplotlib.pyplot as pl

wave,flux_dat,flux_mod=np.loadtxt('amC_qsizes.out',skiprows=0,skipcols=4,usecols=(0,1,2),unpack=True)
wave2,dat,flux2=np.loadtxt('line_amC.out',skiprows=1,usecols=(0,1,2),unpack=True)
wave3,dat3,flux_sil=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)
lambda0=656.28
vel=3E5*(wave-lambda0)/lambda0

fig1 = pl.figure()
pl.xlabel('wavelength (nm)')
pl.ylabel('Flux (arbitrary units)')
#pl.title('SN2010jl Halpha d518')
#pl.ylim([0,0.03])
#pl.xscale('log')
#line_1=pl.plot(wave*10, flux_mod,'b',label='observed')
#line_2=pl.plot(wave*10,flux_dat,'r--',label='model')
line_1=pl.plot(wave, flux_dat,'b',label='observed')
line_2=pl.plot(wave,flux_mod,'r--',label='model - albedo=0')
line_3=pl.plot(wave2,flux2,'g--',label='model - amC')
line_4=pl.plot(wave3,flux_sil,'m--',label='model - sil')
#line=pl.plot(wave2,flux2,'g',label='13nov')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
#pl.ylim([0,0.3])
#pl.axvline(x=4861.313,color='black',ls='dashed')
pl.axvline(x=lambda0,color='black',ls='dashed')
pl.legend(['observed','model - albedo=0','model - amC','model - sil'])
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
