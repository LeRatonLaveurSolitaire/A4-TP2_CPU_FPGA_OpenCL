import numpy as np
import matplotlib.pyplot as plt

#time_intel = []
# time_arm = np.array([131, 15479, 171779, 1562033])
# time_fpga = np.array([286, 678, 4075,33954 ])
# data_transfer = np.array([142+192, 1979+2088, 21242+17994, 163663+188216 ])
# widths = np.array([30,300,1000, 3000 ])
# heights = np.array([17, 169, 563, 1688])

time_arm = np.array([13433,16922,20974,26023,32408,50161,60255,72774])
time_fpga = np.array([638,732,848,946,1130,1522,1905,2082])
data_transfer = np.array([2331+1737,2217+2514,3067+2520,3851+3127,4582+3929,6967+5878,8554+7177,10268+8630])
widths = np.array([298,332,369,411,457,565,628,691])
heights = np.array([167,186,207,230,256,317,353,388])

time_FPGA_data = np.array([time_fpga[i]+data_transfer[i] for i in range(len(time_fpga))])
nb_pixels = np.array([heights[i]*widths[i] for i in range(len(heights))])

plt.plot(nb_pixels,time_fpga,label='FPGA')
plt.plot(nb_pixels,time_FPGA_data,label='FPGA + data transfer')
plt.plot(nb_pixels,time_arm,label='ARM')
plt.legend()
plt.xlabel("number of pixels")
plt.ylabel("time (µs)")
plt.show()
plt.close()

FPGA_freq = 50*1e6
ARM_freq = 800 * 1e6

PCC_FPGA = time_fpga*1e-6*FPGA_freq/nb_pixels
PCC_FPGA_DATA = time_FPGA_data*1e-6*FPGA_freq/nb_pixels
PCC_ARM = time_arm*1e-6*ARM_freq/nb_pixels



plt.tight_layout()
plt.plot(nb_pixels,PCC_FPGA,label='FPGA')
plt.plot(nb_pixels,PCC_FPGA_DATA,label='FPGA + data transfer')
plt.plot(nb_pixels,PCC_ARM,label='ARM')
plt.legend()
plt.ylabel("CPP")
plt.xlabel("Resolution")
plt.show()
plt.close()