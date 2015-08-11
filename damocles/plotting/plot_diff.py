import numpy as np 
import matplotlib.pyplot as pl
import pylab

wave,vel,flux = np.loadtxt('output/output_dust.out', usecols = (0,1,2), unpack = True)
wav2,vel2,flux2 = np.loadtxt('output/output_gas.out',usecols = (0,1,2),unpack = True)
wav3,flux3 = np.loadtxt('line_Hbeta_d26.in',skiprows=3,usecols = (0,1),unpack = True)
wav4,flux4 = np.loadtxt('line_Hbeta_d239.in',skiprows=3,usecols = (0,1),unpack = True)
#fig = pl.figure()
#pl.xlabel('wavelength')
#pl.ylabel('Flux')
#pl.title('Hbeta')
#pl.plot(vel,flux,label='dust')
#pl.plot(vel2,flux2,label='no dust')
#pl.xlim([-5000,5000])
#pl.legend(('dust','no dust'))
#pl.show()

vel3=3E5*(-486.1363+wav3)/486.1363
vel4=3E5*(-486.1363+wav4)/486.1363
flux3=(flux3*2.15E31)-9E29
flux4=(flux4*0.8E31)-1.4E29

flux3=flux3/1e31
flux4=flux4/1e31
flux=flux/1e31
flux2=flux2/1e31

diff=flux2-flux
#ratio=flux2/flux


f=pl.figure()
f, (ax1, ax2) = pl.subplots(2, sharex=True)
ax1.plot(vel,flux,'m',label='dust-free model d26')
ax1.plot(vel3,flux3,'r',label='M$_{dust}=5 \\times 10^{-5}M_{\odot}$ model d239')
ax1.plot(vel2,flux2,'b',label='M$_{dust}=5 \\times 10^{-5}M_{\odot}$ d239')
ax1.plot(vel4,flux4,'g',label='dust-free d26')
ax1.set_xlim([-8000,8000])
ax1.set_ylabel('Flux')
ax1.legend(('dust-free model d26','observed d26','M$_{dust}=5 \\times 10^{-5}M_{\odot}$ model d239','observed d239'),loc="upper left")
ax2.plot(vel, diff)
ax2.set_ylabel('Flux difference')
ax2.set_xlabel('velocity kms$^{-1}$')
ax2.set_ylim([0,2])
l=1.5
ax1.lines[0].set_linewidth(l)
ax1.lines[1].set_linewidth(l)
ax1.lines[2].set_linewidth(l)
ax1.lines[3].set_linewidth(l)

ax2.lines[0].set_linewidth(l)
pl.show()
