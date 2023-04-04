#include <systemc>
#include <vector>
#include <iostream>
#include "hls_stream.h"
#include "ap_int.h"
#include "ap_fixed.h"
using namespace std;
using namespace sc_dt;
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
unsigned int ap_apatb_s_axis_ip_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_ip_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_ip_V_data_V.dat");
unsigned int ap_apatb_s_axis_ip_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_ip_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_ip_V_keep_V.dat");
unsigned int ap_apatb_s_axis_ip_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_ip_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_ip_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_s_axis_ip_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_ip_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_ip_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_s_axis_arp_lookup_reply_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_arp_lookup_reply_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_arp_lookup_reply.dat");
unsigned int ap_apatb_m_axis_ip_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_ip_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_ip_V_data_V.dat");
unsigned int ap_apatb_m_axis_ip_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_ip_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_ip_V_keep_V.dat");
unsigned int ap_apatb_m_axis_ip_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_ip_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_ip_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_m_axis_ip_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_ip_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_ip_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_m_axis_arp_lookup_request_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_arp_lookup_request_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_arp_lookup_request.dat");
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
extern "C" void mac_ip_encode_top(volatile void *, volatile void *, volatile void *, , volatile void *, , , long long*, volatile void *, volatile void *, volatile void *, , volatile void *, , , __cosim_s4__*, __cosim_s8__, __cosim_s4__, __cosim_s4__);
extern "C" void apatb_mac_ip_encode_top_hw(volatile void * __xlx_apatb_param_s_axis_ip_V_data_V, volatile void * __xlx_apatb_param_s_axis_ip_V_keep_V, volatile void * __xlx_apatb_param_s_axis_ip_V_strb_V, volatile void * __xlx_apatb_param_s_axis_ip_V_last_V, volatile void * __xlx_apatb_param_s_axis_arp_lookup_reply, volatile void * __xlx_apatb_param_m_axis_ip_V_data_V, volatile void * __xlx_apatb_param_m_axis_ip_V_keep_V, volatile void * __xlx_apatb_param_m_axis_ip_V_strb_V, volatile void * __xlx_apatb_param_m_axis_ip_V_last_V, volatile void * __xlx_apatb_param_m_axis_arp_lookup_request, __cosim_s8__* __xlx_apatb_param_myMacAddress, __cosim_s4__* __xlx_apatb_param_regSubNetMask, __cosim_s4__* __xlx_apatb_param_regDefaultGateway) {
  // collect __xlx_s_axis_ip_V_data_V_tmp_vec
  unsigned __xlx_s_axis_ip_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_ip_V_data_V_V_read_Size = __xlx_s_axis_ip_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_s_axis_ip_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_ip_V_data_V)->empty() && __xlx_s_axis_ip_V_data_V_V_tmp_Count < __xlx_s_axis_ip_V_data_V_V_read_Size) {
    __xlx_s_axis_ip_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_ip_V_data_V)->read());
    __xlx_s_axis_ip_V_data_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_ip_V_data_V_cap_bc = __xlx_s_axis_ip_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_s_axis_ip_V_data_V_input_buffer= new __cosim_s40__[__xlx_s_axis_ip_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_ip_V_data_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_ip_V_data_V_input_buffer[i] = __xlx_s_axis_ip_V_data_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_ip_V_keep_V_tmp_vec
  unsigned __xlx_s_axis_ip_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_ip_V_keep_V_V_read_Size = __xlx_s_axis_ip_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_ip_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_ip_V_keep_V)->empty() && __xlx_s_axis_ip_V_keep_V_V_tmp_Count < __xlx_s_axis_ip_V_keep_V_V_read_Size) {
    __xlx_s_axis_ip_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_ip_V_keep_V)->read());
    __xlx_s_axis_ip_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_ip_V_keep_V_cap_bc = __xlx_s_axis_ip_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_ip_V_keep_V_input_buffer= new long long[__xlx_s_axis_ip_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_ip_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_ip_V_keep_V_input_buffer[i] = __xlx_s_axis_ip_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_ip_V_strb_V_tmp_vec
  unsigned __xlx_s_axis_ip_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_ip_V_strb_V_V_read_Size = __xlx_s_axis_ip_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_ip_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_ip_V_strb_V)->empty() && __xlx_s_axis_ip_V_strb_V_V_tmp_Count < __xlx_s_axis_ip_V_strb_V_V_read_Size) {
    __xlx_s_axis_ip_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_ip_V_strb_V)->read());
    __xlx_s_axis_ip_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_ip_V_strb_V_cap_bc = __xlx_s_axis_ip_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_ip_V_strb_V_input_buffer= new long long[__xlx_s_axis_ip_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_ip_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_ip_V_strb_V_input_buffer[i] = __xlx_s_axis_ip_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_ip_V_last_V_tmp_vec
  unsigned __xlx_s_axis_ip_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_ip_V_last_V_V_read_Size = __xlx_s_axis_ip_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_s_axis_ip_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_ip_V_last_V)->empty() && __xlx_s_axis_ip_V_last_V_V_tmp_Count < __xlx_s_axis_ip_V_last_V_V_read_Size) {
    __xlx_s_axis_ip_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_ip_V_last_V)->read());
    __xlx_s_axis_ip_V_last_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_ip_V_last_V_cap_bc = __xlx_s_axis_ip_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_s_axis_ip_V_last_V_input_buffer= new char[__xlx_s_axis_ip_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_ip_V_last_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_ip_V_last_V_input_buffer[i] = __xlx_s_axis_ip_V_last_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_arp_lookup_reply_tmp_vec
  unsigned __xlx_s_axis_arp_lookup_reply_V_tmp_Count = 0;
  unsigned __xlx_s_axis_arp_lookup_reply_V_read_Size = __xlx_s_axis_arp_lookup_reply_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_arp_lookup_reply_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->empty() && __xlx_s_axis_arp_lookup_reply_V_tmp_Count < __xlx_s_axis_arp_lookup_reply_V_read_Size) {
    __xlx_s_axis_arp_lookup_reply_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_arp_lookup_reply)->read());
    __xlx_s_axis_arp_lookup_reply_V_tmp_Count++;
  }
  ap_apatb_s_axis_arp_lookup_reply_cap_bc = __xlx_s_axis_arp_lookup_reply_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_arp_lookup_reply_input_buffer= new long long[__xlx_s_axis_arp_lookup_reply_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_arp_lookup_reply_tmp_vec.size(); ++i) {
    __xlx_s_axis_arp_lookup_reply_input_buffer[i] = __xlx_s_axis_arp_lookup_reply_tmp_vec[i];
  }
  //Create input buffer for m_axis_ip_V_data_V
  ap_apatb_m_axis_ip_V_data_V_cap_bc = __xlx_m_axis_ip_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_m_axis_ip_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_m_axis_ip_V_data_V_cap_bc];
  //Create input buffer for m_axis_ip_V_keep_V
  ap_apatb_m_axis_ip_V_keep_V_cap_bc = __xlx_m_axis_ip_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_m_axis_ip_V_keep_V_input_buffer= new long long[ap_apatb_m_axis_ip_V_keep_V_cap_bc];
  //Create input buffer for m_axis_ip_V_strb_V
  ap_apatb_m_axis_ip_V_strb_V_cap_bc = __xlx_m_axis_ip_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_m_axis_ip_V_strb_V_input_buffer= new long long[ap_apatb_m_axis_ip_V_strb_V_cap_bc];
  //Create input buffer for m_axis_ip_V_last_V
  ap_apatb_m_axis_ip_V_last_V_cap_bc = __xlx_m_axis_ip_V_last_V_V_size_Reader.read_size();
  char* __xlx_m_axis_ip_V_last_V_input_buffer= new char[ap_apatb_m_axis_ip_V_last_V_cap_bc];
  //Create input buffer for m_axis_arp_lookup_request
  ap_apatb_m_axis_arp_lookup_request_cap_bc = __xlx_m_axis_arp_lookup_request_V_size_Reader.read_size();
  __cosim_s4__* __xlx_m_axis_arp_lookup_request_input_buffer= new __cosim_s4__[ap_apatb_m_axis_arp_lookup_request_cap_bc];
  // DUT call
  mac_ip_encode_top(__xlx_s_axis_ip_V_data_V_input_buffer, __xlx_s_axis_ip_V_keep_V_input_buffer, __xlx_s_axis_ip_V_strb_V_input_buffer, __xlx_s_axis_ip_V_last_V_input_buffer, __xlx_s_axis_arp_lookup_reply_input_buffer, __xlx_m_axis_ip_V_data_V_input_buffer, __xlx_m_axis_ip_V_keep_V_input_buffer, __xlx_m_axis_ip_V_strb_V_input_buffer, __xlx_m_axis_ip_V_last_V_input_buffer, __xlx_m_axis_arp_lookup_request_input_buffer, *__xlx_apatb_param_myMacAddress, *__xlx_apatb_param_regSubNetMask, *__xlx_apatb_param_regDefaultGateway);
  for (unsigned i = 0; i <ap_apatb_m_axis_ip_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_ip_V_data_V)->write(__xlx_m_axis_ip_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_ip_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_ip_V_keep_V)->write(__xlx_m_axis_ip_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_ip_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_ip_V_strb_V)->write(__xlx_m_axis_ip_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_ip_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_ip_V_last_V)->write(__xlx_m_axis_ip_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_arp_lookup_request_cap_bc; ++i)
    ((hls::stream<__cosim_s4__>*)__xlx_apatb_param_m_axis_arp_lookup_request)->write(__xlx_m_axis_arp_lookup_request_input_buffer[i]);
}
