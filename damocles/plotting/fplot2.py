import matplotlib.pyplot as plt
import math
import random
import numpy as np
from scipy.interpolate import interp1d
import collections
import sys

def make_hist2d(xdata,ydata,xmin,xmax,ymin,ymax):
	nbins = 16
	dx = (xmax-xmin) / float(nbins)
	dy = (ymax-ymin) / float(nbins)
	xbins = np.arange(xmin,xmax+dx/10.,dx)
	ybins = np.arange(ymin,ymax+dy/10.,dy)

	hist_1, xedges, yedges = np.histogram2d(xdata,ydata,bins=[xbins,ybins])
	hist_1 = hist_1 / float(np.sum(hist_1))
	hist_2 = np.sort( hist_1.flatten() )[::-1]
	hist_1 = np.rot90(hist_1)
	hist_1 = np.flipud(hist_1)
	prob_sum = 0.
	sigma_flag = True
	for prob in hist_2:
		prob_sum += prob
		if sigma_flag and prob_sum >= 0.68: 
			sigma_flag = False
			sigma_1 = prob
			continue
		if prob_sum >= 0.95: 
			sigma_2 = prob
			break
	return hist_1, sigma_1, sigma_2, xedges, yedges

def make_hist1d(sample,xmin,xmax):
	nbins = 20
	dx = (xmax-xmin) / float(nbins)
	xbins = np.arange(xmin,xmax+dx/10.0,dx)

	hist_1, xdata = np.histogram(sample,bins=xbins)
	xdata = xdata[0:-1] + dx / 2.
	hist_1 = hist_1 / float(np.sum(hist_1))
	hist_2 = np.sort( hist_1 )[::-1]
	prob_sum = 0.
	sigma_flag = True
	for prob in hist_2:
		prob_sum += prob
		if sigma_flag and prob_sum >= 0.68: 
			sigma_flag = False
			sigma_1 = prob
			continue
		if prob_sum >= 0.95: 
			sigma_2 = prob
			break
	return hist_1, xdata, sigma_1, sigma_2

infile1 = "./pliny_real_g8_cpu_test_002_chain_1"
# infile2 = "./run8/test_output_pre_pre_chain"

chain_stream = open(infile1,'r')
chain_text = chain_stream.readlines()
chain_stream.close()

weights = []
lhood   = []
dens 	= []
temp 	= []
av 		= []
g0 		= []
# zeta 	= []
# drift 	= []

lowlims = [1500.,1.0E-8,0.,0.]
upplims = [2500.,1.0E-5,2.,2.]

for text_line in chain_text:

	text_list = text_line.split('\t')
	text_list = filter(lambda x: x != '', text_list)

	weights.append(float(text_list[0]))
	lhood.append(float(text_list[1]))
	dens.append(float(text_list[2]) )
	temp.append(float(text_list[3]))
	av.append(float(text_list[4]))
	g0.append(float(text_list[5]))
	# zeta.append(5. * float(text_list[6]) - 2.)
	# drift.append(10. * float(text_list[7]))


# chain_stream = open(infile2,'r')
# chain_text = chain_stream.readlines()
# chain_stream.close()

# weights2 	= []
# lhood2  	= []
# dens2 	 	= []
# temp2 		= []
# av2 		= []
# g02 		= []
# zeta2 		= []

# for text_line in chain_text:

# 	text_list = text_line.split('\t')
# 	text_list = filter(lambda x: x != '', text_list)

# 	if text_list[0] == "#5": continue

# 	lhood2.append(float(text_list[-1]))
# 	dens2.append(5.*float(text_list[0]) )
# 	temp2.append(10. + 40. * float(text_list[1]))
# 	av2.append(5. * float(text_list[2]))
# 	g02.append(2. * float(text_list[3]) - 1.)
# 	zeta2.append(2. * float(text_list[4]) - 1.)

f, axarr = plt.subplots(2, 3)

image = axarr[0,0].hexbin(dens,temp)
image = axarr[0,1].hexbin(dens,av)
image = axarr[0,2].hexbin(dens,g0)
image = axarr[1,0].hexbin(temp,av)
image = axarr[1,1].hexbin(temp,g0)
image = axarr[1,2].hexbin(av,g0)
# axarr[1,0].set_xlim(1000,10000)
# axarr[1,0].set_xscale("log")
# plt.show()
# f.set_size_inches(8, 6)
# filename = "./example.jpg"
# plt.savefig(filename,bbox_inches='tight')
# f.clear()


evidence = 0.0

for ii in xrange(len(weights)):

	weights[ii] = ii * math.log(1000./1001.) + math.log(math.sinh(0.001))
	try:
		evidence += math.exp(weights[ii] + lhood[ii] - lhood[-1])
	except ValueError:
		continue

evidence = math.log(evidence) + lhood[-1]

for ii in xrange(len(weights)):

	if ii == 0:
		weights[ii] = math.exp(weights[ii] + lhood[ii] - evidence - lhood[-1])

	else:
		weights[ii] =  weights[ii-1] + math.exp(weights[ii] + lhood[ii] - evidence - lhood[-1])

for ii in xrange(len(weights)):

	try:
		weights[ii] =  math.exp(math.log(weights[ii]) + lhood[-1])
	except ValueError:
		weights[ii] = 0.0

weights[0] = 0.0
weights[-1] = 1.0

# sys.end()

n_rand = 1000
sample_lhood = []
sample_dens = []
sample_temp = []
sample_av = []
sample_g0 = []
# sample_zeta = []
# sample_drift = []
sample = []

# Currently:
# xdata is element number of weighted chain 
# ydata is the cumulative probability up to that element
# Create a spline for the inverse function index(probability)
# Then generate random uniform(0,1), pass through spline and round up

weights = np.asarray(weights)
indices = np.arange(0,weights.size,1)

staircase_sampler = interp1d(weights,indices)


for ii in xrange(n_rand):

	random_number = random.uniform(0,1)

	print random_number

	jj = int( math.ceil( staircase_sampler(random_number) ) )

	if jj < 0: jj = 0
	if jj >= indices.size: jj = indices.size - 1

	sample_lhood.append(lhood[jj])
	sample_dens.append(dens[jj])
	sample_temp.append(temp[jj])
	sample_av.append(av[jj])
	sample_g0.append(g0[jj])
	# sample_zeta.append(zeta[jj])
	# sample_drift.append(drift[jj])

sample = [sample_dens,sample_temp,sample_av,sample_g0]
# sample = [sample_dens,sample_temp,sample_av,sample_g0,sample_zeta]

# f2, axarr2 = plt.subplots(2, 3)

# for ii, ysample in enumerate(sample):
# 	if ii == 0: continue
# 	histo,sigma_1,sigma_2,xedges,yedges = make_hist(sample[0],sample[ii],lowlims[0],upplims[0],lowlims[ii],upplims[ii])
# 	xval = (ii-1) % 3
# 	yval = (ii-1) / 3
# 	im2 = axarr2[yval,xval].contour(histo, levels = [sigma_1,sigma_2], extent=[lowlims[0],upplims[0],lowlims[ii],upplims[ii]])
	# im2 = axarr2[yval,xval].contour(histo, extent=[lowlims[0],upplims[0],lowlims[ii],upplims[ii]])

label = [r"$n/cm^{-3}$",r"$T/K$",r"$A_v$",r"$G_0$",r"$\zeta/\zeta_0$",r"$v_D/kms^{-1}$"]
ticks = [ [0,1,2,3], 
          [1,2,3], 
          [0,1,2], 
          [-2,0,2,4], 
          [-2,0,2,4], 
          [0,5,10] ]

f2,axarr2 = plt.subplots(4,4)
# label_ax = f2.add_subplot(1, 1, 1)
f2.subplots_adjust(hspace=0,wspace=0)


for ii,samplea in enumerate(sample):
	for jj,sampleb in enumerate(sample):
		if jj > ii+1:
		# 	axarr2[ii,jj].spines['top'].set_color('white')
		# 	axarr2[ii,jj].spines['bottom'].set_color('white')
		# 	axarr2[ii,jj].spines['left'].set_color('white')
		# 	axarr2[ii,jj].spines['right'].set_color('white')
		# 	axarr2[ii,jj].set_xticks([])
		# 	axarr2[ii,jj].set_yticks([])
			continue
		if jj > ii:
		# 	axarr2[ii,jj].spines['top'].set_color('white')
		# 	axarr2[ii,jj].spines['right'].set_color('white')
		# 	axarr2[ii,jj].set_xticks([])
		# 	axarr2[ii,jj].set_yticks([])
			continue
		# if ii != 5: axarr2[ii,jj].set_xticklabels([],alpha=0)
		# if jj != 0: axarr2[ii,jj].set_yticklabels([],alpha=0)
		# if ii == 5: 
		# 	axarr2[ii,jj].set_xlabel(label[jj])
		# 	axarr2[ii,jj].set_xticks(ticks[jj][:-1])
		# if jj == 0: 
		# 	axarr2[ii,jj].set_ylabel(label[ii])
		# 	axarr2[ii,jj].set_yticks(ticks[ii][:-1])


		# if ii == 0 and jj == 0:
		# 	axarr2[ii,jj].set_yticks([])
		# if ii == 1 and jj == 0:
		# 	axarr2[ii,jj].set_yticks(ticks[ii])
		# if ii == 5 and jj == 5:
		# 	axarr2[ii,jj].set_xticks(ticks[jj])

		if ii == jj:
			histo,xdata,sigma_1,sigma_1ma2 = make_hist1d(sampleb,lowlims[ii],upplims[ii])
			im2 = axarr2[ii,jj].plot(xdata,histo)
			# im2 = axarr2[ii,jj].hist(sampleb,xdata)
			axarr2[ii,jj].set_xlim(lowlims[ii],upplims[ii])
			continue
		histo,sigma_1,sigma_2,xedges,yedges = make_hist2d(sampleb,samplea,lowlims[jj],upplims[jj],lowlims[ii],upplims[ii])
		im2 = axarr2[ii,jj].contour(histo, levels = [sigma_1,sigma_2], extent=[lowlims[jj],upplims[jj],lowlims[ii],upplims[ii]])
		# im2 = axarr2[ii,jj].contour(histo, extent=[lowlims[0],upplims[0],lowlims[ii],upplims[ii]])
		# axarr2[ii,jj].set_xlim(lowlims[jj],upplims[jj])
		# axarr2[ii,jj].set_ylim(lowlims[ii],upplims[ii])

# label_ax.patch.set_alpha(0)
# label_ax.spines['top'].set_color('none')
# label_ax.spines['bottom'].set_color('none')
# label_ax.spines['left'].set_color('none')
# label_ax.spines['right'].set_color('none')
# label_ax.set_xticks([0])
# label_ax.set_yticks([0])
# label_ax.set_xticklabels([0],alpha=0)
# label_ax.set_yticklabels([0],alpha=0)




plt.show()
# f.set_size_inches(8, 6)
# filename = "./exampleI.jpg"
# plt.savefig(filename,bbox_inches='tight')
# plt.clear()

sample_lhood = np.array(sample_lhood)
sample_dens = np.array(sample_dens)
sample_temp = np.array(sample_temp)
sample_av = np.array(sample_av)
sample_g0 = np.array(sample_g0)
sample_zeta = np.array(sample_zeta)
sample_drift = np.array(sample_drift)
sample = np.array(sample)

cov  = np.cov(sample).diagonal()

mea = [ np.mean(sample_dens), 
        np.mean(sample_temp), \
        np.mean(sample_av), \
        np.mean(sample_g0), \
        np.mean(sample_zeta), \
        np.mean(sample_drift)    ]
# mea = [ np.mean(sample_dens), 
#         np.mean(sample_temp), \
#         np.mean(sample_av), \
#         np.mean(sample_g0), \
#         np.mean(sample_zeta)   ]

print mea
print cov
