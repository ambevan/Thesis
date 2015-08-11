import numpy as np 
import matplotlib.pyplot as pl

spec,wave,ext,sca,g=np.loadtxt('opacity.out',skiprows=1,usecols=(0,1,2,3,4),unpack=True)

fig1 = pl.figure()
pl.xlabel('wavelength $\mu$')
pl.ylabel('ext')
#pl.title('Hbeta - SN2010 - Gall et al 14 data - d22')
pl.xlim(0, 2)
#pl.xscale('log')
line_1=pl.plot(wave, ext,'b',label='ext')
line_2=pl.plot(wave,sca,'r--',label='sca')
line_3=pl.plot(wave,ext-sca,'g-',label='abs')
pl.axvline(x=0.65628,color='black',ls='dashed')
pl.axvline(x=0.48613,color='black',ls='dashed')
pl.legend(['ext','sca','abs'])
#pl.xlim([0.25,0.75])
#pl.ylim([0,0.6E-15])
#pl.savefig('line.eps')
#fig2=pl.figure()
#line_1=pl.plot(vel,flux_mod,'b',label='observed')
#line_2=pl.plot(vel,flux_dat,'r--',label='model'
pl.show()
