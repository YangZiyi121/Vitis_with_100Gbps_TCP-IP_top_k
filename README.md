<h2>Top K for Alveo with Vitis 100Gbps TCP Networking</h2>

This project provides a stream based integer top k sorting using a 100Gbps network. It is achieved by expanding the [100Gbps TCP/IP stack repository](https://github.com/fpgasystems/Vitis_with_100Gbps_TCP-IP) with a custom user kernel.

<h3>Top K User Kernel Design</h3>
![Architecture](../img/top_k_arch.png)
<h3>Build and Run</h3>

**Clone the Repository**

```
git clone	
git submodule update --init --recursive
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
