#include <systemc>
#include <iostream>
#include <cstdlib>
#include <cstddef>
#include <stdint.h>
#include "SysCFileHandler.h"
#include "ap_int.h"
#include "ap_fixed.h"
#include <complex>
#include <stdbool.h>
#include "autopilot_cbe.h"
#include "hls_stream.h"
#include "hls_half.h"
#include "hls_signal_handler.h"

using namespace std;
using namespace sc_core;
using namespace sc_dt;

// wrapc file define:
#define AUTOTB_TVIN_m_axis_open_port "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_open_port.dat"
#define AUTOTB_TVOUT_m_axis_open_port "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_open_port.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_open_port "../tv/stream_size/stream_size_out_m_axis_open_port.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_open_port "../tv/stream_size/stream_egress_status_m_axis_open_port.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_open_port_status "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_open_port_status.dat"
#define AUTOTB_TVOUT_s_axis_open_port_status "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_open_port_status.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_open_port_status "../tv/stream_size/stream_size_in_s_axis_open_port_status.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status "../tv/stream_size/stream_ingress_status_s_axis_open_port_status.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_metadata "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_rx_metadata.dat"
#define AUTOTB_TVOUT_s_axis_rx_metadata "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_rx_metadata.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata "../tv/stream_size/stream_size_in_s_axis_rx_metadata.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata "../tv/stream_size/stream_ingress_status_s_axis_rx_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_s_axis_rx_data_V_data_V "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_data_V "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_keep_V "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_keep_V "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_strb_V "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_strb_V "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVIN_s_axis_rx_data_V_last_V "../tv/cdatafile/c.dhcp_client.autotvin_s_axis_rx_data_V_last_V.dat"
#define AUTOTB_TVOUT_s_axis_rx_data_V_last_V "../tv/cdatafile/c.dhcp_client.autotvout_s_axis_rx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_data_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V "../tv/stream_size/stream_size_in_s_axis_rx_data_V_last_V.dat"
#define WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V "../tv/stream_size/stream_ingress_status_s_axis_rx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_metadata "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_metadata.dat"
#define AUTOTB_TVOUT_m_axis_tx_metadata "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_metadata.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata "../tv/stream_size/stream_size_out_m_axis_tx_metadata.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata "../tv/stream_size/stream_egress_status_m_axis_tx_metadata.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_length "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_length.dat"
#define AUTOTB_TVOUT_m_axis_tx_length "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_length.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_length "../tv/stream_size/stream_size_out_m_axis_tx_length.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_length "../tv/stream_size/stream_egress_status_m_axis_tx_length.dat"
// wrapc file define:
#define AUTOTB_TVIN_m_axis_tx_data_V_data_V "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_data_V "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_keep_V "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_keep_V "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_strb_V "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_strb_V "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVIN_m_axis_tx_data_V_last_V "../tv/cdatafile/c.dhcp_client.autotvin_m_axis_tx_data_V_last_V.dat"
#define AUTOTB_TVOUT_m_axis_tx_data_V_last_V "../tv/cdatafile/c.dhcp_client.autotvout_m_axis_tx_data_V_last_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_data_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_data_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_data_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_keep_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_keep_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_strb_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_strb_V.dat"
#define WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V "../tv/stream_size/stream_size_out_m_axis_tx_data_V_last_V.dat"
#define WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_last_V "../tv/stream_size/stream_egress_status_m_axis_tx_data_V_last_V.dat"
// wrapc file define:
#define AUTOTB_TVIN_dhcpEnable "../tv/cdatafile/c.dhcp_client.autotvin_dhcpEnable.dat"
#define AUTOTB_TVOUT_dhcpEnable "../tv/cdatafile/c.dhcp_client.autotvout_dhcpEnable.dat"
// wrapc file define:
#define AUTOTB_TVIN_inputIpAddress "../tv/cdatafile/c.dhcp_client.autotvin_inputIpAddress.dat"
#define AUTOTB_TVOUT_inputIpAddress "../tv/cdatafile/c.dhcp_client.autotvout_inputIpAddress.dat"
// wrapc file define:
#define AUTOTB_TVIN_dhcpIpAddressOut "../tv/cdatafile/c.dhcp_client.autotvin_dhcpIpAddressOut.dat"
#define AUTOTB_TVOUT_dhcpIpAddressOut "../tv/cdatafile/c.dhcp_client.autotvout_dhcpIpAddressOut.dat"
// wrapc file define:
#define AUTOTB_TVIN_myMacAddress "../tv/cdatafile/c.dhcp_client.autotvin_myMacAddress.dat"
#define AUTOTB_TVOUT_myMacAddress "../tv/cdatafile/c.dhcp_client.autotvout_myMacAddress.dat"

#define INTER_TCL "../tv/cdatafile/ref.tcl"

// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_open_port "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_open_port.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_open_port_status "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_open_port_status.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_metadata "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_rx_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_data_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_rx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_keep_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_rx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_strb_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_rx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_s_axis_rx_data_V_last_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_s_axis_rx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_metadata "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_metadata.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_length "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_length.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_data_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_data_V_data_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_keep_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_data_V_keep_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_strb_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_data_V_strb_V.dat"
#define AUTOTB_TVOUT_PC_m_axis_tx_data_V_last_V "../tv/rtldatafile/rtl.dhcp_client.autotvout_m_axis_tx_data_V_last_V.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dhcpEnable "../tv/rtldatafile/rtl.dhcp_client.autotvout_dhcpEnable.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_inputIpAddress "../tv/rtldatafile/rtl.dhcp_client.autotvout_inputIpAddress.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_dhcpIpAddressOut "../tv/rtldatafile/rtl.dhcp_client.autotvout_dhcpIpAddressOut.dat"
// tvout file define:
#define AUTOTB_TVOUT_PC_myMacAddress "../tv/rtldatafile/rtl.dhcp_client.autotvout_myMacAddress.dat"


inline void rev_endian(char* p, size_t nbytes)
{
  std::reverse(p, p+nbytes);
}

template<size_t bit_width>
struct transaction {
  typedef uint64_t depth_t;
  static const size_t wbytes = (bit_width+7)>>3;
  static const size_t dbytes = sizeof(depth_t);
  const depth_t depth;
  const size_t vbytes;
  const size_t tbytes;
  char * const p;
  typedef char (*p_dat)[wbytes];
  p_dat vp;

  void reorder() {
    rev_endian(p, dbytes);
    p_dat vp = (p_dat) (p+dbytes);
    for (depth_t i = 0; i < depth; ++i) {
      rev_endian(vp[i], wbytes);
    }
  }

  transaction(depth_t depth)
    : depth(depth), vbytes(wbytes*depth), tbytes(dbytes+vbytes),
      p(new char[tbytes]) {
    *(depth_t*)p = depth;
    vp = (p_dat) (p+dbytes);
  }

  template<size_t psize>
  void import(char* param, depth_t num, int64_t offset) {
    param -= offset*psize;
    for (depth_t i = 0; i < num; ++i) {
      memcpy(vp[i], param, wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[i], wbytes);
      param += psize;
    }
    vp += num;
  }

  template<size_t psize>
  void send(char* param, depth_t num, int64_t skip) {
    for (depth_t i = 0; i < num; ++i) {
      memcpy(param, vp[skip+i], wbytes);
      param += psize;
    }
  }

  ~transaction() { if (p) { delete[] p; } }
};
      

inline const std::string begin_str(int num)
{
  return std::string("[[transaction]] ")
         .append(std::to_string(num))
         .append("\n");
}

inline const std::string end_str()
{
  return std::string("[[/transaction]] \n");
}
      
class INTER_TCL_FILE {
  public:
INTER_TCL_FILE(const char* name) {
  mName = name; 
  m_axis_open_port_depth = 0;
  s_axis_open_port_status_depth = 0;
  s_axis_rx_metadata_depth = 0;
  s_axis_rx_data_V_data_V_depth = 0;
  s_axis_rx_data_V_keep_V_depth = 0;
  s_axis_rx_data_V_strb_V_depth = 0;
  s_axis_rx_data_V_last_V_depth = 0;
  m_axis_tx_metadata_depth = 0;
  m_axis_tx_length_depth = 0;
  m_axis_tx_data_V_data_V_depth = 0;
  m_axis_tx_data_V_keep_V_depth = 0;
  m_axis_tx_data_V_strb_V_depth = 0;
  m_axis_tx_data_V_last_V_depth = 0;
  dhcpEnable_depth = 0;
  inputIpAddress_depth = 0;
  dhcpIpAddressOut_depth = 0;
  myMacAddress_depth = 0;
  trans_num =0;
}
~INTER_TCL_FILE() {
  mFile.open(mName);
  if (!mFile.good()) {
    cout << "Failed to open file ref.tcl" << endl;
    exit (1); 
  }
  string total_list = get_depth_list();
  mFile << "set depth_list {\n";
  mFile << total_list;
  mFile << "}\n";
  mFile << "set trans_num "<<trans_num<<endl;
  mFile.close();
}
string get_depth_list () {
  stringstream total_list;
  total_list << "{m_axis_open_port " << m_axis_open_port_depth << "}\n";
  total_list << "{s_axis_open_port_status " << s_axis_open_port_status_depth << "}\n";
  total_list << "{s_axis_rx_metadata " << s_axis_rx_metadata_depth << "}\n";
  total_list << "{s_axis_rx_data_V_data_V " << s_axis_rx_data_V_data_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_keep_V " << s_axis_rx_data_V_keep_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_strb_V " << s_axis_rx_data_V_strb_V_depth << "}\n";
  total_list << "{s_axis_rx_data_V_last_V " << s_axis_rx_data_V_last_V_depth << "}\n";
  total_list << "{m_axis_tx_metadata " << m_axis_tx_metadata_depth << "}\n";
  total_list << "{m_axis_tx_length " << m_axis_tx_length_depth << "}\n";
  total_list << "{m_axis_tx_data_V_data_V " << m_axis_tx_data_V_data_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_keep_V " << m_axis_tx_data_V_keep_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_strb_V " << m_axis_tx_data_V_strb_V_depth << "}\n";
  total_list << "{m_axis_tx_data_V_last_V " << m_axis_tx_data_V_last_V_depth << "}\n";
  total_list << "{dhcpEnable " << dhcpEnable_depth << "}\n";
  total_list << "{inputIpAddress " << inputIpAddress_depth << "}\n";
  total_list << "{dhcpIpAddressOut " << dhcpIpAddressOut_depth << "}\n";
  total_list << "{myMacAddress " << myMacAddress_depth << "}\n";
  return total_list.str();
}
void set_num (int num , int* class_num) {
  (*class_num) = (*class_num) > num ? (*class_num) : num;
}
void set_string(std::string list, std::string* class_list) {
  (*class_list) = list;
}
  public:
    int m_axis_open_port_depth;
    int s_axis_open_port_status_depth;
    int s_axis_rx_metadata_depth;
    int s_axis_rx_data_V_data_V_depth;
    int s_axis_rx_data_V_keep_V_depth;
    int s_axis_rx_data_V_strb_V_depth;
    int s_axis_rx_data_V_last_V_depth;
    int m_axis_tx_metadata_depth;
    int m_axis_tx_length_depth;
    int m_axis_tx_data_V_data_V_depth;
    int m_axis_tx_data_V_keep_V_depth;
    int m_axis_tx_data_V_strb_V_depth;
    int m_axis_tx_data_V_last_V_depth;
    int dhcpEnable_depth;
    int inputIpAddress_depth;
    int dhcpIpAddressOut_depth;
    int myMacAddress_depth;
    int trans_num;
  private:
    ofstream mFile;
    const char* mName;
};

static bool RTLOutputCheckAndReplacement(std::string &AESL_token, std::string PortName) {
  bool err = false;
  size_t x_found;

  // search and replace 'X' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('X', 0)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  // search and replace 'x' with '0' from the 3rd char of token
  while ((x_found = AESL_token.find('x', 2)) != string::npos)
    err = true, AESL_token.replace(x_found, 1, "0");
  
  return err;}
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_sC__ { char data[16]; };
extern "C" void dhcp_client_hw_stub_wrapper(volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *, volatile void *);

extern "C" void apatb_dhcp_client_hw(volatile void * __xlx_apatb_param_m_axis_open_port, volatile void * __xlx_apatb_param_s_axis_open_port_status, volatile void * __xlx_apatb_param_s_axis_rx_metadata, volatile void * __xlx_apatb_param_s_axis_rx_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_tx_metadata, volatile void * __xlx_apatb_param_m_axis_tx_length, volatile void * __xlx_apatb_param_m_axis_tx_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_last_V, volatile void * __xlx_apatb_param_dhcpEnable, volatile void * __xlx_apatb_param_inputIpAddress, volatile void * __xlx_apatb_param_dhcpIpAddressOut, volatile void * __xlx_apatb_param_myMacAddress) {
  refine_signal_handler();
  fstream wrapc_switch_file_token;
  wrapc_switch_file_token.open(".hls_cosim_wrapc_switch.log");
static AESL_FILE_HANDLER aesl_fh;
  int AESL_i;
  if (wrapc_switch_file_token.good())
  {

    CodeState = ENTER_WRAPC_PC;
    static unsigned AESL_transaction_pc = 0;
    string AESL_token;
    string AESL_num;
long __xlx_apatb_param_m_axis_open_port_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_open_port);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_open_port_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_open_port);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_open_port_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_open_port");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_open_port_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_open_port" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*2+0] = m_axis_open_port_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = m_axis_open_port_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_open_port_status);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size; ++i)((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->read();
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; ++i)((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->read();
long __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (long i = 0; i < __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; ++i) {
((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->read();
((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->read();
}
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_metadata);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<96> > m_axis_tx_metadata_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_metadata");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_metadata_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_metadata" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s10__ xlx_stream_elt;
((long long*)&xlx_stream_elt)[0*2+0] = m_axis_tx_metadata_pc_buffer[j].range(63,0).to_int64();
((long long*)&xlx_stream_elt)[0*2+1] = m_axis_tx_metadata_pc_buffer[j].range(95,64).to_int64();
((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  long __xlx_apatb_param_m_axis_tx_length_stream_buf_final_size;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(WRAPC_STREAM_SIZE_OUT_m_axis_tx_length);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){__xlx_apatb_param_m_axis_tx_length_stream_buf_final_size = atoi(AESL_token.c_str());

            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_length);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<16> > m_axis_tx_length_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_length");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_length_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_length" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {for (int j = 0, e = i; j != e; ++j) {
__cosim_s2__ xlx_stream_elt;
((char*)&xlx_stream_elt)[0*2+0] = m_axis_tx_length_pc_buffer[j].range(7, 0).to_int64();
((char*)&xlx_stream_elt)[0*2+1] = m_axis_tx_length_pc_buffer[j].range(15, 8).to_int64();
((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->write(xlx_stream_elt);
}
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  {unsigned xlx_stream_m_axis_tx_data_size = 0;

          std::vector<sc_bv<64> > m_axis_tx_data_V_data_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_data_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tx_data_V_data_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_data_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_data_V_pc_buffer.size();
m_axis_tx_data_V_data_V_pc_buffer_Copy=m_axis_tx_data_V_data_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tx_data_V_keep_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_keep_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tx_data_V_keep_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_keep_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_keep_V_pc_buffer.size();
m_axis_tx_data_V_keep_V_pc_buffer_Copy=m_axis_tx_data_V_keep_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tx_data_V_strb_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_strb_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tx_data_V_strb_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_strb_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_strb_V_pc_buffer.size();
m_axis_tx_data_V_strb_V_pc_buffer_Copy=m_axis_tx_data_V_strb_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
          std::vector<sc_bv<64> > m_axis_tx_data_V_last_V_pc_buffer_Copy;
{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_m_axis_tx_data_V_last_V);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<64> > m_axis_tx_data_V_last_V_pc_buffer;
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "m_axis_tx_data");
  
            // push token into output port buffer
            if (AESL_token != "") {
              m_axis_tx_data_V_last_V_pc_buffer.push_back(AESL_token.c_str());
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "m_axis_tx_data" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {xlx_stream_m_axis_tx_data_size=m_axis_tx_data_V_last_V_pc_buffer.size();
m_axis_tx_data_V_last_V_pc_buffer_Copy=m_axis_tx_data_V_last_V_pc_buffer;
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  for (int j = 0, e = xlx_stream_m_axis_tx_data_size; j != e; ++j) {
long long xlx_stream_elt_data;
((long long*)&xlx_stream_elt_data)[0] = m_axis_tx_data_V_data_V_pc_buffer_Copy[j].to_int64();
((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->write(xlx_stream_elt_data);
char xlx_stream_elt_keep;
((char*)&xlx_stream_elt_keep)[0] = m_axis_tx_data_V_keep_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->write(xlx_stream_elt_keep);
char xlx_stream_elt_strb;
((char*)&xlx_stream_elt_strb)[0] = m_axis_tx_data_V_strb_V_pc_buffer_Copy[j].to_int64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->write(xlx_stream_elt_strb);
char xlx_stream_elt_last;
((char*)&xlx_stream_elt_last)[0] = m_axis_tx_data_V_last_V_pc_buffer_Copy[j].to_uint64();
((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->write(xlx_stream_elt_last);
}}{
      static ifstream rtl_tv_out_file;
      if (!rtl_tv_out_file.is_open()) {
        rtl_tv_out_file.open(AUTOTB_TVOUT_PC_dhcpIpAddressOut);
        if (rtl_tv_out_file.good()) {
          rtl_tv_out_file >> AESL_token;
          if (AESL_token != "[[[runtime]]]")
            exit(1);
        }
      }
  
      if (rtl_tv_out_file.good()) {
        rtl_tv_out_file >> AESL_token; 
        rtl_tv_out_file >> AESL_num;  // transaction number
        if (AESL_token != "[[transaction]]") {
          cerr << "Unexpected token: " << AESL_token << endl;
          exit(1);
        }
        if (atoi(AESL_num.c_str()) == AESL_transaction_pc) {
          std::vector<sc_bv<32> > dhcpIpAddressOut_pc_buffer(1);
          int i = 0;
          bool has_unknown_value = false;
          rtl_tv_out_file >> AESL_token; //data
          while (AESL_token != "[[/transaction]]"){

            has_unknown_value |= RTLOutputCheckAndReplacement(AESL_token, "dhcpIpAddressOut");
  
            // push token into output port buffer
            if (AESL_token != "") {
              dhcpIpAddressOut_pc_buffer[i] = AESL_token.c_str();;
              i++;
            }
  
            rtl_tv_out_file >> AESL_token; //data or [[/transaction]]
            if (AESL_token == "[[[/runtime]]]" || rtl_tv_out_file.eof())
              exit(1);
          }
          if (has_unknown_value) {
            cerr << "WARNING: [SIM 212-201] RTL produces unknown value 'x' or 'X' on port " 
                 << "dhcpIpAddressOut" << ", possible cause: There are uninitialized variables in the C design."
                 << endl; 
          }
  
          if (i > 0) {((char*)__xlx_apatb_param_dhcpIpAddressOut)[0*4+0] = dhcpIpAddressOut_pc_buffer[0].range(7, 0).to_int64();
((char*)__xlx_apatb_param_dhcpIpAddressOut)[0*4+1] = dhcpIpAddressOut_pc_buffer[0].range(15, 8).to_int64();
((char*)__xlx_apatb_param_dhcpIpAddressOut)[0*4+2] = dhcpIpAddressOut_pc_buffer[0].range(23, 16).to_int64();
((char*)__xlx_apatb_param_dhcpIpAddressOut)[0*4+3] = dhcpIpAddressOut_pc_buffer[0].range(31, 24).to_int64();
}
        } // end transaction
      } // end file is good
    } // end post check logic bolck
  
    AESL_transaction_pc++;
    return ;
  }
static unsigned AESL_transaction;
static INTER_TCL_FILE tcl_file(INTER_TCL);
std::vector<char> __xlx_sprintf_buffer(1024);
CodeState = ENTER_WRAPC;
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_open_port);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_open_port);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_open_port_status);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_metadata);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_length);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_length);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_data_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_keep_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_strb_V);
aesl_fh.touch(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V);
aesl_fh.touch(WRAPC_STREAM_EGRESS_STATUS_m_axis_tx_data_V_last_V);
CodeState = DUMP_INPUTS;
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_open_port_stream_buf;
long __xlx_apatb_param_m_axis_open_port_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->size();
std::vector<__cosim_s1__> __xlx_apatb_param_s_axis_open_port_status_stream_buf;
{
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->empty())
    __xlx_apatb_param_s_axis_open_port_status_stream_buf.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_open_port_status_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->write(__xlx_apatb_param_s_axis_open_port_status_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_open_port_status_stream_buf_size = ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->size();
std::vector<__cosim_s10__> __xlx_apatb_param_s_axis_rx_metadata_stream_buf;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->empty())
    __xlx_apatb_param_s_axis_rx_metadata_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->write(__xlx_apatb_param_s_axis_rx_metadata_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
// data
std::vector<long long> __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->write(__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[i]);
  }
long __xlx_apatb_param_s_axis_rx_data_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->write(__xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf[i]);
  }
// strb
std::vector<char> __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->write(__xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf[i]);
  }
// user
// last
std::vector<char> __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf;
{
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->empty())
    __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->write(__xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf[i]);
  }
// id
// dest
std::vector<__cosim_s10__> __xlx_apatb_param_m_axis_tx_metadata_stream_buf;
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->size();
std::vector<__cosim_s2__> __xlx_apatb_param_m_axis_tx_length_stream_buf;
long __xlx_apatb_param_m_axis_tx_length_stream_buf_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->size();
// data
std::vector<long long> __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf;
long __xlx_apatb_param_m_axis_tx_data_stream_buf_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->size();
// keep
std::vector<char> __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf;
// strb
std::vector<char> __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf;
// user
// last
std::vector<char> __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf;
// id
// dest
// print dhcpEnable Transactions
{
aesl_fh.write(AUTOTB_TVIN_dhcpEnable, begin_str(AESL_transaction));
{
    sc_bv<1> __xlx_tmp_lv = *((char*)__xlx_apatb_param_dhcpEnable);
aesl_fh.write(AUTOTB_TVIN_dhcpEnable, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.dhcpEnable_depth);
aesl_fh.write(AUTOTB_TVIN_dhcpEnable, end_str());
}

// print inputIpAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_inputIpAddress, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_inputIpAddress);
aesl_fh.write(AUTOTB_TVIN_inputIpAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.inputIpAddress_depth);
aesl_fh.write(AUTOTB_TVIN_inputIpAddress, end_str());
}

// print dhcpIpAddressOut Transactions
{
aesl_fh.write(AUTOTB_TVIN_dhcpIpAddressOut, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_dhcpIpAddressOut);
aesl_fh.write(AUTOTB_TVIN_dhcpIpAddressOut, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.dhcpIpAddressOut_depth);
aesl_fh.write(AUTOTB_TVIN_dhcpIpAddressOut, end_str());
}

// print myMacAddress Transactions
{
aesl_fh.write(AUTOTB_TVIN_myMacAddress, begin_str(AESL_transaction));
{
    sc_bv<48> __xlx_tmp_lv = *((long long*)__xlx_apatb_param_myMacAddress);
aesl_fh.write(AUTOTB_TVIN_myMacAddress, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.myMacAddress_depth);
aesl_fh.write(AUTOTB_TVIN_myMacAddress, end_str());
}

CodeState = CALL_C_DUT;
dhcp_client_hw_stub_wrapper(__xlx_apatb_param_m_axis_open_port, __xlx_apatb_param_s_axis_open_port_status, __xlx_apatb_param_s_axis_rx_metadata, __xlx_apatb_param_s_axis_rx_data_V_data_V, __xlx_apatb_param_s_axis_rx_data_V_keep_V, __xlx_apatb_param_s_axis_rx_data_V_strb_V, __xlx_apatb_param_s_axis_rx_data_V_last_V, __xlx_apatb_param_m_axis_tx_metadata, __xlx_apatb_param_m_axis_tx_length, __xlx_apatb_param_m_axis_tx_data_V_data_V, __xlx_apatb_param_m_axis_tx_data_V_keep_V, __xlx_apatb_param_m_axis_tx_data_V_strb_V, __xlx_apatb_param_m_axis_tx_data_V_last_V, __xlx_apatb_param_dhcpEnable, __xlx_apatb_param_inputIpAddress, __xlx_apatb_param_dhcpIpAddressOut, __xlx_apatb_param_myMacAddress);
CodeState = DUMP_OUTPUTS;
long __xlx_apatb_param_m_axis_open_port_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->size() - __xlx_apatb_param_m_axis_open_port_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->empty())
    __xlx_apatb_param_m_axis_open_port_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_open_port_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_open_port)->write(__xlx_apatb_param_m_axis_open_port_stream_buf[i]);
  }
// print m_axis_open_port Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_port, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_open_port_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_open_port_stream_buf[__xlx_apatb_param_m_axis_open_port_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_port, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_open_port_stream_buf_final_size, &tcl_file.m_axis_open_port_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_open_port, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_port, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_open_port_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_port, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_open_port, end_str());
}
long __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size = __xlx_apatb_param_s_axis_open_port_status_stream_buf_size - ((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_open_port_status)->size();
// print s_axis_open_port_status Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_open_port_status, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size; j != e; ++j) {
sc_bv<8> __xlx_tmp_lv_hw;
sc_bv<8> __xlx_tmp_lv;
__xlx_tmp_lv = ((char*)&__xlx_apatb_param_s_axis_open_port_status_stream_buf[j])[0];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_open_port_status, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size, &tcl_file.s_axis_open_port_status_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_open_port_status, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size > 0) {
  long s_axis_open_port_status_stream_ingress_size = __xlx_apatb_param_s_axis_open_port_status_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size; j != e; j++) {
    s_axis_open_port_status_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_open_port_status_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_open_port_status_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_open_port_status, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_port_status, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_open_port_status_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_port_status, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_open_port_status, end_str());
}
long __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size - ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_rx_metadata)->size();
// print s_axis_rx_metadata Transactions
{
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<128> __xlx_tmp_lv_hw;
sc_bv<128> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_s_axis_rx_metadata_stream_buf[j])[0*2+0];
__xlx_tmp_lv.range(127,64) = ((long long*)&__xlx_apatb_param_s_axis_rx_metadata_stream_buf[j])[0*2+1];
__xlx_tmp_lv_hw = __xlx_tmp_lv;

    sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_lv_hw.to_string(SC_HEX).c_str());
    aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, __xlx_sprintf_buffer.data()); 
  }

  tcl_file.set_num(__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size, &tcl_file.s_axis_rx_metadata_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_metadata, end_str());
}


// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size > 0) {
  long s_axis_rx_metadata_stream_ingress_size = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size; j != e; j++) {
    s_axis_rx_metadata_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_metadata_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_metadata_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_metadata, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_metadata, end_str());
}
long __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size - ((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->size();
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_0_lv = ((long long*)&__xlx_apatb_param_s_axis_rx_data_V_data_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_s_axis_rx_data_V_keep_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_s_axis_rx_data_V_strb_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_s_axis_rx_data_V_last_V_stream_buf[j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size, &tcl_file.s_axis_rx_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVIN_s_axis_rx_data_V_last_V, end_str());

// dump stream ingress status to file

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_data_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_data_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_data_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_data_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_data_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_keep_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_keep_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_keep_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_keep_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_keep_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_strb_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_strb_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_strb_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_strb_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_strb_V, end_str());
}

// dump stream ingress status to file
{
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
if (__xlx_apatb_param_s_axis_rx_data_stream_buf_final_size > 0) {
  long s_axis_rx_data_V_last_V_stream_ingress_size = __xlx_apatb_param_s_axis_rx_data_stream_buf_size;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  for (int j = 0, e = __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size; j != e; j++) {
    s_axis_rx_data_V_last_V_stream_ingress_size--;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
  }
} else {
  long s_axis_rx_data_V_last_V_stream_ingress_size = 0;
sprintf(__xlx_sprintf_buffer.data(), "%d\n", s_axis_rx_data_V_last_V_stream_ingress_size);
 aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
}
aesl_fh.write(WRAPC_STREAM_INGRESS_STATUS_s_axis_rx_data_V_last_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_s_axis_rx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_IN_s_axis_rx_data_V_last_V, end_str());
}
long __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size = ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->size() - __xlx_apatb_param_m_axis_tx_metadata_stream_buf_size;
{
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->empty())
    __xlx_apatb_param_m_axis_tx_metadata_stream_buf.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_metadata_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_tx_metadata)->write(__xlx_apatb_param_m_axis_tx_metadata_stream_buf[i]);
  }
// print m_axis_tx_metadata Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size; j != e; ++j) {
sc_bv<96> __xlx_tmp_lv;
__xlx_tmp_lv.range(63,0) = ((long long*)&__xlx_apatb_param_m_axis_tx_metadata_stream_buf[__xlx_apatb_param_m_axis_tx_metadata_stream_buf_size+j])[0*2+0];
__xlx_tmp_lv.range(95,64) = ((long long*)&__xlx_apatb_param_m_axis_tx_metadata_stream_buf[__xlx_apatb_param_m_axis_tx_metadata_stream_buf_size+j])[0*2+1];
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size, &tcl_file.m_axis_tx_metadata_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_metadata, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_metadata_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_metadata, end_str());
}
long __xlx_apatb_param_m_axis_tx_length_stream_buf_final_size = ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->size() - __xlx_apatb_param_m_axis_tx_length_stream_buf_size;
{
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->empty())
    __xlx_apatb_param_m_axis_tx_length_stream_buf.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_length_stream_buf.size(); ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_tx_length)->write(__xlx_apatb_param_m_axis_tx_length_stream_buf[i]);
  }
// print m_axis_tx_length Transactions
{
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_length, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_length_stream_buf_final_size; j != e; ++j) {
sc_bv<16> __xlx_tmp_lv = ((short*)&__xlx_apatb_param_m_axis_tx_length_stream_buf[__xlx_apatb_param_m_axis_tx_length_stream_buf_size+j])[0];
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_length, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}

  tcl_file.set_num(__xlx_apatb_param_m_axis_tx_length_stream_buf_final_size, &tcl_file.m_axis_tx_length_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_length, end_str());
}

{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_length, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_length_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_length, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_length, end_str());
}

//********************** dump C output stream *******************
long __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size = ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->size() - __xlx_apatb_param_m_axis_tx_data_stream_buf_size;
{
  while (!((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf.push_back(((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf.size(); ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->write(__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->write(__xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->write(__xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf[i]);
  }
{
  while (!((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->empty())
    __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf.push_back(((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->read());
  for (int i = 0; i < __xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf.size(); ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->write(__xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf[i]);
  }
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, begin_str(AESL_transaction));
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, begin_str(AESL_transaction));
for (int j = 0, e = __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size; j != e; ++j) {
sc_bv<64> __xlx_tmp_0_lv = ((long long*)&__xlx_apatb_param_m_axis_tx_data_V_data_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_0_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_1_lv = ((char*)&__xlx_apatb_param_m_axis_tx_data_V_keep_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_1_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
sc_bv<8> __xlx_tmp_2_lv = ((char*)&__xlx_apatb_param_m_axis_tx_data_V_strb_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_2_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
sc_bv<1> __xlx_tmp_4_lv = ((char*)&__xlx_apatb_param_m_axis_tx_data_V_last_V_stream_buf[__xlx_apatb_param_m_axis_tx_data_stream_buf_size+j])[0];
sprintf(__xlx_sprintf_buffer.data(), "%s\n", __xlx_tmp_4_lv.to_string(SC_HEX).c_str());
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, __xlx_sprintf_buffer.data());
}
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_data_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_data_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_keep_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_keep_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_strb_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_strb_V, end_str());
tcl_file.set_num(__xlx_apatb_param_m_axis_tx_data_stream_buf_final_size, &tcl_file.m_axis_tx_data_V_last_V_depth);
aesl_fh.write(AUTOTB_TVOUT_m_axis_tx_data_V_last_V, end_str());
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_data_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_keep_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_strb_V, end_str());
}
{
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, begin_str(AESL_transaction));
sprintf(__xlx_sprintf_buffer.data(), "%d\n", __xlx_apatb_param_m_axis_tx_data_stream_buf_final_size);
 aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, __xlx_sprintf_buffer.data());
aesl_fh.write(WRAPC_STREAM_SIZE_OUT_m_axis_tx_data_V_last_V, end_str());
}
// print dhcpIpAddressOut Transactions
{
aesl_fh.write(AUTOTB_TVOUT_dhcpIpAddressOut, begin_str(AESL_transaction));
{
    sc_bv<32> __xlx_tmp_lv = *((int*)__xlx_apatb_param_dhcpIpAddressOut);
aesl_fh.write(AUTOTB_TVOUT_dhcpIpAddressOut, __xlx_tmp_lv.to_string(SC_HEX)+string("\n"));
}
  tcl_file.set_num(1, &tcl_file.dhcpIpAddressOut_depth);
aesl_fh.write(AUTOTB_TVOUT_dhcpIpAddressOut, end_str());
}

CodeState = DELETE_CHAR_BUFFERS;
AESL_transaction++;
tcl_file.set_num(AESL_transaction , &tcl_file.trans_num);
}
