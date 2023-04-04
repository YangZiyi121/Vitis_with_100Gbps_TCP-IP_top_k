// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.2 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_H__
#define __toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 1000;
  static const unsigned AddressWidth = 10;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in <sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_ram) {
        for (unsigned i = 0; i < 1000; i = i + 1) {
            ram[i] = 0;
        }
   }


}; //endmodule


SC_MODULE(toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 1000;
static const unsigned AddressWidth = 10;

sc_core::sc_in <sc_lv<AddressWidth> > address1;
sc_core::sc_in<sc_logic> ce1;
sc_core::sc_out <sc_lv<DataWidth> > q1;
sc_core::sc_in<sc_logic> we1;
sc_core::sc_in<sc_lv<DataWidth> > d1;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_ram* meminst;


SC_CTOR(toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W) {
meminst = new toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_ram("toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W_ram");

meminst->address1(address1);
meminst->ce1(ce1);
meminst->q1(q1);
meminst->we1(we1);
meminst->d1(d1);

meminst->reset(reset);
meminst->clk(clk);
}
~toe_top_state_table_state_table_1_RAM_2P_BRAM_1R1W() {
    delete meminst;
}


};//endmodule
#endif
