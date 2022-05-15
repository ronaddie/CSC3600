
# Shannon's Formula --> C = W log2(1 + S/N)
# where C = Maximum Achievable Data Rate (in bit/second, to be converted to Mbit/s)
# where W = Radio Channel Bandwidth (in hertz)
# where S = Signal Power Level (in watts)
# where N = Noise Level (in watts)
# Note that S/R = Signal Noise Ratio or Signal Quality

W = 20000000
S = 5.0
N = 0.5
C <- (W*log2(1 + S/N))/1000000
C