import numpy as np
import matplotlib.pyplot as pl
line1 = np.genfromtxt('graph_OI_87A_line1.csv',usecols=(0,1),unpack=True)
line2 = np.genfromtxt('graph_OI_87A_line2.csv',usecols=(0,1),unpack=True)


#interpolation - x values of fine grid, 
# then x values of data to be interpolated, y values of data to be interpolated
newarray=np.interp(line2[0],line1[0],line1[1])

print(line1.shape)
print(line2.shape)
print(newarray.shape)

pl.plot(line1[0],line1[1])
pl.plot(line2[0],newarray)
pl.show()