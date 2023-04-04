#pragma once
#include <stdint.h>

//Copied from hlslib by Johannes de Fine Licht https://github.com/definelicht/hlslib/blob/master/include/hlslib/xilinx/Utility.h
constexpr unsigned long ConstLog2(unsigned long val) {
  return val == 1 ? 0 : 1 + ConstLog2(val >> 1);
}

const uint16_t MSS = 4096;
const uint16_t MAX_SESSIONS = 1000;
const unsigned DATA_WIDTH = 64 * 8;
const unsigned DATA_WIDTH_BITS = ConstLog2(DATA_WIDTH);
const unsigned DATA_KEEP_BITS = ConstLog2(DATA_WIDTH/8);

// TCP_NODELAY flag, to disable Nagle's Algorithm
#define TCP_NODELAY 1

// RX_DDR_BYPASS flag, to enable DDR bypass on RX path
#define RX_DDR_BYPASS 1

//TCP fast recovery/fast retransmit
#define FAST_RETRANSMIT 1

//TCP window scaling option
#define WINDOW_SCALE 1
const unsigned WINDOW_SCALE_BITS = 2;
#if (WINDOW_SCALE)
const unsigned WINDOW_BITS = 16 + WINDOW_SCALE_BITS;
#else
const unsigned WINDOW_BITS = 16;
#endif


const unsigned BUFFER_SIZE = (1 << WINDOW_BITS);
const unsigned CONGESTION_WINDOW_MAX = (BUFFER_SIZE - 2048);
