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
unsigned int ap_apatb_s_axis_lup_req_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_lup_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_lup_req.dat");
unsigned int ap_apatb_s_axis_upd_req_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_upd_req_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_upd_req.dat");
unsigned int ap_apatb_m_axis_lup_rsp_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_lup_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_lup_rsp.dat");
unsigned int ap_apatb_m_axis_upd_rsp_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_upd_rsp_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_upd_rsp.dat");
struct __cosim_s10__ { char data[16]; };
struct __cosim_s20__ { char data[32]; };
struct __cosim_sC__ { char data[12]; };
struct __cosim_s12__ { char data[18]; };
struct __cosim_sF__ { char data[15]; };
struct __cosim_s13__ { char data[19]; };
extern "C" void hash_table_top(__cosim_s10__*, __cosim_s20__*, __cosim_s10__*, __cosim_s20__*, volatile void *);
extern "C" void apatb_hash_table_top_hw(volatile void * __xlx_apatb_param_s_axis_lup_req, volatile void * __xlx_apatb_param_s_axis_upd_req, volatile void * __xlx_apatb_param_m_axis_lup_rsp, volatile void * __xlx_apatb_param_m_axis_upd_rsp, volatile void * __xlx_apatb_param_regInsertFailureCount) {
  // collect __xlx_s_axis_lup_req_tmp_vec
  unsigned __xlx_s_axis_lup_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_lup_req_V_read_Size = __xlx_s_axis_lup_req_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_lup_req_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->empty() && __xlx_s_axis_lup_req_V_tmp_Count < __xlx_s_axis_lup_req_V_read_Size) {
    __xlx_s_axis_lup_req_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_lup_req)->read());
    __xlx_s_axis_lup_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_lup_req_cap_bc = __xlx_s_axis_lup_req_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_lup_req_input_buffer= new __cosim_s10__[__xlx_s_axis_lup_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_lup_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_lup_req_input_buffer[i] = __xlx_s_axis_lup_req_tmp_vec[i];
  }
  // collect __xlx_s_axis_upd_req_tmp_vec
  unsigned __xlx_s_axis_upd_req_V_tmp_Count = 0;
  unsigned __xlx_s_axis_upd_req_V_read_Size = __xlx_s_axis_upd_req_V_size_Reader.read_size();
  vector<__cosim_s20__> __xlx_s_axis_upd_req_tmp_vec;
  while (!((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_upd_req)->empty() && __xlx_s_axis_upd_req_V_tmp_Count < __xlx_s_axis_upd_req_V_read_Size) {
    __xlx_s_axis_upd_req_tmp_vec.push_back(((hls::stream<__cosim_s20__>*)__xlx_apatb_param_s_axis_upd_req)->read());
    __xlx_s_axis_upd_req_V_tmp_Count++;
  }
  ap_apatb_s_axis_upd_req_cap_bc = __xlx_s_axis_upd_req_tmp_vec.size();
  // store input buffer
  __cosim_s20__* __xlx_s_axis_upd_req_input_buffer= new __cosim_s20__[__xlx_s_axis_upd_req_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_upd_req_tmp_vec.size(); ++i) {
    __xlx_s_axis_upd_req_input_buffer[i] = __xlx_s_axis_upd_req_tmp_vec[i];
  }
  //Create input buffer for m_axis_lup_rsp
  ap_apatb_m_axis_lup_rsp_cap_bc = __xlx_m_axis_lup_rsp_V_size_Reader.read_size();
  __cosim_s10__* __xlx_m_axis_lup_rsp_input_buffer= new __cosim_s10__[ap_apatb_m_axis_lup_rsp_cap_bc];
  //Create input buffer for m_axis_upd_rsp
  ap_apatb_m_axis_upd_rsp_cap_bc = __xlx_m_axis_upd_rsp_V_size_Reader.read_size();
  __cosim_s20__* __xlx_m_axis_upd_rsp_input_buffer= new __cosim_s20__[ap_apatb_m_axis_upd_rsp_cap_bc];
  // DUT call
  hash_table_top(__xlx_s_axis_lup_req_input_buffer, __xlx_s_axis_upd_req_input_buffer, __xlx_m_axis_lup_rsp_input_buffer, __xlx_m_axis_upd_rsp_input_buffer, __xlx_apatb_param_regInsertFailureCount);
  for (unsigned i = 0; i <ap_apatb_m_axis_lup_rsp_cap_bc; ++i)
    ((hls::stream<__cosim_s10__>*)__xlx_apatb_param_m_axis_lup_rsp)->write(__xlx_m_axis_lup_rsp_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_upd_rsp_cap_bc; ++i)
    ((hls::stream<__cosim_s20__>*)__xlx_apatb_param_m_axis_upd_rsp)->write(__xlx_m_axis_upd_rsp_input_buffer[i]);
}
