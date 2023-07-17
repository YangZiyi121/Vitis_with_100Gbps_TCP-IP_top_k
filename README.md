<h2>Top K for Alveo with Vitis 100Gbps TCP Networking</h2>

This project provides a stream based integer top k sorting using a 100Gbps network. It is achieved by expanding the [100Gbps TCP/IP stack repository](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP) with a custom user kernel.

<h3>Top K User Kernel Design</h3>

This design refers to the paper [Histograms as a side effect of data movement for big data](https://dl.acm.org/doi/abs/10.1145/2588555.2612174)

![Architecture](/img/top_k_arch.png)

<h3>Functionality</h3>

The kernel is able to accumulately sort 32-bit integers sent with TCP packets. The user needs to send TCP packets that are multiples of 64 bytes in size, since the dataline is 64 bytes. The kernel will return the accumulated top-K results. 

<h3>Runtime configurable K</h3>
The hardware architeture is initialized with 16 top-k units, and each unit has an enable signal. To configure the K size, the first dataline (64 bytes) in the first packet should be sent in the following format. The 16-bit in the brackets specify the enable signal for each unit. For example, to have top-4 sorting, the 16-bit should be [0f00], which enables four units. 


```python

#top-8 sorting first packet for initialization

ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
sixteen 32-bit integers in the next dataline 
```




<h3>Build and Run</h3>

**Clone the Repository**

```
git clone	
```

**Configure TCP Stack**

```
mkdir build
cd build
cmake .. -DFDEV_NAME=u280 -DTCP_STACK_EN=1 -DTCP_STACK_RX_DDR_BYPASS_EN=1 
make installip
```

**Create Design**
```
cd ../
make all TARGET=hw DEVICE=/opt/xilinx/platforms/xilinx_u280_xdma_201920_3/xilinx_u280_xdma_201920_3.xpfm USER_KRNL=top_k_krnl USER_KRNL_MODE=rtl NETH=4
```

**Testing Script**

The script used to conduct the experiment is in directory **script_for_testing**. **test.py** is for generating concurrent requests and **script_for_wireshark.py** is for capturing packets with Tshark. To run both, use cmd
```
./run.sh
```
