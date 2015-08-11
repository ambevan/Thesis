import numpy as np 
import matplotlib.pyplot as pl
import scipy.signal as sci
import scipy.interpolate as int

def moving_average(x, window):
    """Moving average of 'x' with window size 'window'."""
    y = np.empty(len(x)-window+1)
    for i in range(len(y)):
        y[i] = np.sum(x[i:i+window])/window
    return y


#,flux_mod,flux_obs=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)
vel2,flux2_dat=np.loadtxt('line.in',skiprows=3,usecols=(0,1),unpack=True)
#vel3,flux3=np.loadtxt('output/output_nodust.out',usecols=(1,2),unpack=True)
wave_out,flux_out_dat,flux_out_mod=np.loadtxt('line.out',skiprows=1,usecols=(0,1,2),unpack=True)

s=1.0

flux_out_dat[flux_out_dat==0]=None
flux_out_dat=flux_out_dat-np.nanmin(flux_out_dat)
#flux_out_mod=flux_out_mod*s*(np.nanmax(flux_out_dat))/np.nanmax(flux_out_mod)

diff=100*np.divide(np.subtract(flux_out_dat,flux_out_mod),flux_out_mod)

flux2_dat[flux2_dat==0]=None
flux2_dat=flux2_dat-np.nanmin(flux2_dat)
flux_out_mod=flux_out_mod*s*(np.nanmax(flux2_dat))/np.nanmax(flux_out_mod)

lambda0=630.0
vel_out=3E5*(wave_out-lambda0)/lambda0
#vel1=3E5*(wave-lambda0)/lambda0
#flux3=moving_average(flux_mod,5)
#vel3=moving_average(vel,5)
#flux3=flux3*(np.nanmax(flux2_dat))/np.amax(flux3)

print np.size(vel_out)
print np.size(diff)

pl.xlabel('velocity (kms$^{-1}$)')
pl.ylabel('flux (arbitrary units)')
#pl.title('SN2010jl Halpha d518')
#pl.ylim([0,0.03])
#pl.xscale('log')
#line_1=pl.plot(wave*10, flux_mod,'b',label='observed')
#line_2=pl.plot(wave*10,flux_dat,'r--',label='model')


ax1=pl.subplot2grid((3,1),(0,0),rowspan=2)
#ax1.axhline(y=0,color='black')
#line_1=axarr[0].plot(vel2, flux2_dat,'b',label='dat')
#line_2=axarr[0].plot(vel1,flux_mod,'r--',label='mod')

print vel_out
print flux_out_mod

err=flux2_dat*0.1
line_1=ax1.plot(vel2,flux2_dat,'b',label='dat')
line_2=ax1.plot(vel_out,flux_out_mod,'r',label='mod')
#ax1.errorbar(vel2,flux2_dat,yerr=err, linestyle="None")
#line_3=pl.plot(vel3,flux3,'g',label='smooth')
#line=pl.plot(wave2,flux2,'g',label='13nov')
#pl.plot(wave_dat,flux_dat,'r')
#pl.plot(x,y)
#ax1.set_xlim([-10000,10000])
#pl.axvline(x=lambda0,color='black',ls='dashed')
pl.axvline(x=0,color='black',ls='dashed')
#axarr[0].legend(['dat','mod'])
handles,labels=ax1.get_legend_handles_labels()
ax1.legend(handles,labels)
#pl.savefig('87A_d2875A.eps')
#fig2=pl.figure()
#line_1=pl.plot(vel,flux_mod,'b',label='observed')
#line_2=pl.plot(vel,flux_dat,'r--',label='model'

#pl.show(fig1)

#fig1.text(0.15,0.85,"SN 1987A - day 806 - carbon  \n\n $v_{max} = 6000$kms$^{-1}$ \n ${R_{in}}/{R_{out}}=5$ \n $R_{out}=3.5$x$10^{16}$cm \n $\\tau = 0.22$ \n \n $a=0.06 \\mu$",verticalalignment="top")

#ax2=pl.subplot2grid((3,1),(2,0),sharex=ax1)
#ax2.plot(vel_out,diff)
#ax2.axhline(y=0,color='black')
#ax2.set_ylim([-25,25])
#ax2.set_xlim([-20000,20000])
#fig2=pl.figure()
#line3=pl.plot(vel,flux_mod,'r--',label='model')
#line4=pl.plot(vel,flux_dat,'b',label='observed')
#pl.xlim([-12000,12000])
pl.show()
