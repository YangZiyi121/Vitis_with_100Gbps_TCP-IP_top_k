/**********
Copyright (c) 2019, Xilinx, Inc.
All rights reserved.

Redistribution and use in source and binary forms, with or without modification,
are permitted provided that the following conditions are met:

1. Redistributions of source code must retain the above copyright notice,
this list of conditions and the following disclaimer.

2. Redistributions in binary form must reproduce the above copyright notice,
this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution.

3. Neither the name of the copyright holder nor the names of its contributors
may be used to endorse or promote products derived from this software
without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
**********/
#include "xcl2.hpp"
#include <vector>
#include <chrono>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

//define memory size for each one of the 4 axi locations
#define DATA_SIZE 256*1024*128
//#define IP_ADDR 0x0A488A15 //board IP
//#define BOARD_NUM 0 


void wait_for_enter(const std::string &msg) {
    std::cout << msg << std::endl;
    std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
}

int main(int argc, char **argv) {
    if (argc < 2) {
        std::cout << "Usage: " << argv[0] << " <XCLBIN File> [<IP address in format 10.1.212.121> <TimeinSeconds> " << std::endl;
        return EXIT_FAILURE;
    }

    std::string binaryFile = argv[1];

    cl_int err;
    cl::CommandQueue q;
    cl::Context context;

    cl::Kernel user_kernel;
    cl::Kernel network_kernel;
    
    auto size = DATA_SIZE;
    //Allocate Memory in Host Memory
    auto vector_size_bytes = DATA_SIZE;
    std::vector<int, aligned_allocator<int>> network_ptr0(size);
    std::vector<int, aligned_allocator<int>> network_ptr1(size);

    //OPENCL HOST CODE AREA START
    //Create Program and Kernel
    auto devices = xcl::get_xil_devices();

    // read_binary_file() is a utility API which will load the binaryFile
    // and will return the pointer to file buffer.
    auto fileBuf = xcl::read_binary_file(binaryFile);
    cl::Program::Binaries bins{{fileBuf.data(), fileBuf.size()}};
    int valid_device = 0;
    for (unsigned int i = 1; i < devices.size(); i++) {
        auto device = devices[i];
        // Creating Context and Command Queue for selected Device
        OCL_CHECK(err, context = cl::Context({device}, NULL, NULL, NULL, &err));
        OCL_CHECK(err,
                  q = cl::CommandQueue(
                      context, {device}, CL_QUEUE_PROFILING_ENABLE, &err));

        std::cout << "Trying to program device[" << i
                  << "]: " << device.getInfo<CL_DEVICE_NAME>() << std::endl;
                  cl::Program program(context, {device}, bins, NULL, &err);
        if (err != CL_SUCCESS) {
            std::cout << "Failed to program device[" << i
                      << "] with xclbin file!\n";
        } else {
            std::cout << "Device[" << i << "]: program successful!\n";
            OCL_CHECK(err,
                      network_kernel = cl::Kernel(program, "network_krnl", &err));
            OCL_CHECK(err,
                      user_kernel = cl::Kernel(program, "top_k_krnl", &err));
            valid_device++;
            break; // we break because we found a valid device
        }
    }
    if (valid_device == 0) {
        std::cout << "Failed to program any device found, exit!\n";
        exit(EXIT_FAILURE);
    }
    
    wait_for_enter("\nPress ENTER to continue after setting up ILA trigger...");


//set the top k kernel arguments
    uint32_t numPacketWord = 22;
    uint32_t connection = 100;
    uint32_t numIpAddr = 1;
    uint32_t basePort = 2880; 
    uint32_t packetGap = 0;
    //uint32_t dualModeEn = 0;
    double dualModeEn = 0.0;
    double durationUs = 0.0;
    uint32_t timeInSeconds = 2;
    //uint32_t baseIpAddr = 0x0A488A13; //NIC connected to U280
    //uint32_t baseIpAddr = 0x0A480A0B; //board IP U280
    uint32_t baseIpAddr = 0x0A488A12; //IP of U280 10.72.138.32

    int ip [4]; 
	
    if (argc >= 3) {
    
        std::string s = argv[2];
        std::string delimiter = ".";

        size_t pos = 0;
        std::string token;
        int i = 0;
        while ((pos = s.find(delimiter)) != std::string::npos) {
            token = s.substr(0, pos);
            ip [i] = stoi(token);
            s.erase(0, pos + delimiter.length());
            i++;
        }
        ip[i] = stoi(s); 
        baseIpAddr = ip[3] | (ip[2] << 8) | (ip[1] << 16) | (ip[0] << 24);
    }

    if(argc >=4)
        timeInSeconds = strtol(argv[3], NULL, 10);


// Set network kernel arguments
    //uint32_t local_IP = IP_ADDR;
    //uint32_t boardNum = BOARD_NUM;
    OCL_CHECK(err, err = network_kernel.setArg(0, baseIpAddr)); // Default IP address U280 board
    OCL_CHECK(err, err = network_kernel.setArg(1, uint32_t(ip[3]%8))); // Board number
    //OCL_CHECK(err, err = network_kernel.setArg(1, boardNum)); // Board number
    OCL_CHECK(err, err = network_kernel.setArg(2, baseIpAddr)); // ARP lookup

    OCL_CHECK(err,
              cl::Buffer buffer_r1(context,
                                   CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                   vector_size_bytes,
                                   network_ptr0.data(),
                                   &err));
    OCL_CHECK(err,
            cl::Buffer buffer_r2(context,
                                CL_MEM_USE_HOST_PTR | CL_MEM_READ_WRITE,
                                vector_size_bytes,
                                network_ptr1.data(),
                                &err));

    OCL_CHECK(err, err = network_kernel.setArg(3, buffer_r1));
    OCL_CHECK(err, err = network_kernel.setArg(4, buffer_r2));

    printf("enqueue network kernel...\n");
    OCL_CHECK(err, err = q.enqueueTask(network_kernel));
    
        // Set iperf kernel arguments

    
    //Default Clocking frequency 250MHz
    uint64_t timeInCycles =( (uint64_t) timeInSeconds * 150000000);


    printf("number of connection:%d\n",connection);
    printf("IP_ADDR:%x\n", baseIpAddr);
    printf("time in seconds: %d, time in cycles:%llu\n", timeInSeconds, timeInCycles);

    //Set user Kernel Arguments    
    OCL_CHECK(err, err = user_kernel.setArg(0, timeInCycles));
    OCL_CHECK(err, err = user_kernel.setArg(1, numIpAddr)); //added
    OCL_CHECK(err, err = user_kernel.setArg(2, numPacketWord)); //added
    OCL_CHECK(err, err = user_kernel.setArg(3, basePort)); //added
    OCL_CHECK(err, err = user_kernel.setArg(4, baseIpAddr)); //added
    //OCL_CHECK(err, err = user_kernel.setArg(5, dualModeEn));
    
    //Launch the Kernel
    printf("enqueue top k kernel...\n");
    auto start = std::chrono::high_resolution_clock::now();
    OCL_CHECK(err, err = q.enqueueTask(user_kernel));
    
    OCL_CHECK(err, err = q.finish());
    auto end = std::chrono::high_resolution_clock::now();
    durationUs = (std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count() / 1000.0);
    printf("durationUs:%f\n",durationUs);
    //OPENCL HOST CODE AREA END
    

    std::cout << "EXIT recorded" << std::endl;
}
