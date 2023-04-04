import pyshark
import pandas as pd
import matplotlib.pyplot as plt
import os

#Start wireshark and capture the packets
capture = pyshark.LiveRingCapture(interface='enp34s0f0', capture_filter='tcp')
capture.sniff(timeout = 1500)
print (capture)
send_time = []
receive_time = []
for i in range(len(capture)):
        if (capture[i].ip.src == "10.72.138.17") and (capture[i].tcp.len == '64'):
            send_time = send_time + [capture[i].tcp.time_relative]
            #data_send = capture[i].tcp.payload
        if (capture[i].ip.src == "10.72.138.18") and (capture[i].tcp.len == '64'):
            receive_time = receive_time + [capture[i].tcp.time_relative]
    

latency = [float(receive_time[i]) - float(send_time[i]) for i in range (0, len(send_time))]
print(len(latency))

#save the data to xls
dataframe = pd.DataFrame({'latency':latency})
dataframe.to_csv("FPGA_latency_top_k.csv", sep=',')