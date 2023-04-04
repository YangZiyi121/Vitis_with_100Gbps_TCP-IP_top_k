#include <iostream>
#include "hls_stream.h"

using namespace std;

struct __cosim_T_1__ {char data[1];};
extern "C" void fpga_fifo_push_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_1(__cosim_T_1__* val, hls::stream<__cosim_T_1__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_1(hls::stream<__cosim_T_1__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_1(hls::stream<__cosim_T_1__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_2__ {char data[2];};
extern "C" void fpga_fifo_push_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_2(__cosim_T_2__* val, hls::stream<__cosim_T_2__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_2(hls::stream<__cosim_T_2__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_2(hls::stream<__cosim_T_2__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_4__ {char data[4];};
extern "C" void fpga_fifo_push_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_4(__cosim_T_4__* val, hls::stream<__cosim_T_4__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_4(hls::stream<__cosim_T_4__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_4(hls::stream<__cosim_T_4__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_5__ {char data[5];};
extern "C" void fpga_fifo_push_5(__cosim_T_5__* val, hls::stream<__cosim_T_5__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_5(__cosim_T_5__* val, hls::stream<__cosim_T_5__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_5(hls::stream<__cosim_T_5__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_5(hls::stream<__cosim_T_5__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_8__ {char data[8];};
extern "C" void fpga_fifo_push_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_8(__cosim_T_8__* val, hls::stream<__cosim_T_8__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_8(hls::stream<__cosim_T_8__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_8(hls::stream<__cosim_T_8__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_12__ {char data[12];};
extern "C" void fpga_fifo_push_12(__cosim_T_12__* val, hls::stream<__cosim_T_12__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_12(__cosim_T_12__* val, hls::stream<__cosim_T_12__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_12(hls::stream<__cosim_T_12__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_12(hls::stream<__cosim_T_12__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_16__ {char data[16];};
extern "C" void fpga_fifo_push_16(__cosim_T_16__* val, hls::stream<__cosim_T_16__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_16(__cosim_T_16__* val, hls::stream<__cosim_T_16__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_16(hls::stream<__cosim_T_16__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_16(hls::stream<__cosim_T_16__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_20__ {char data[20];};
extern "C" void fpga_fifo_push_20(__cosim_T_20__* val, hls::stream<__cosim_T_20__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_20(__cosim_T_20__* val, hls::stream<__cosim_T_20__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_20(hls::stream<__cosim_T_20__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_20(hls::stream<__cosim_T_20__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_32__ {char data[32];};
extern "C" void fpga_fifo_push_32(__cosim_T_32__* val, hls::stream<__cosim_T_32__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_32(__cosim_T_32__* val, hls::stream<__cosim_T_32__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_32(hls::stream<__cosim_T_32__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_32(hls::stream<__cosim_T_32__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_64__ {char data[64];};
extern "C" void fpga_fifo_push_64(__cosim_T_64__* val, hls::stream<__cosim_T_64__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_64(__cosim_T_64__* val, hls::stream<__cosim_T_64__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_64(hls::stream<__cosim_T_64__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_64(hls::stream<__cosim_T_64__>* fifo) {
  return fifo->exist();
}
struct __cosim_T_128__ {char data[128];};
extern "C" void fpga_fifo_push_128(__cosim_T_128__* val, hls::stream<__cosim_T_128__>* fifo) {
  fifo->write(*val);
}
extern "C" void fpga_fifo_pop_128(__cosim_T_128__* val, hls::stream<__cosim_T_128__>* fifo) {
  *val = fifo->read();
}
extern "C" bool fpga_fifo_not_empty_128(hls::stream<__cosim_T_128__>* fifo) {
  return !fifo->empty();
}
extern "C" bool fpga_fifo_exist_128(hls::stream<__cosim_T_128__>* fifo) {
  return fifo->exist();
}
