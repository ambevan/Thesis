import numpy as np
import matplotlib.pyplot as plt

x=np.linspace(-15,15,100)
y=np.sin(x)/x

plt.plot(x,y)
plt.show()
