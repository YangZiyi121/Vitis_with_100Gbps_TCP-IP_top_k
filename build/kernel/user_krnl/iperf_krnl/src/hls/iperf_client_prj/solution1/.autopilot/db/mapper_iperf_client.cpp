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
unsigned int ap_apatb_m_axis_listen_port_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_listen_port_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_listen_port.dat");
unsigned int ap_apatb_s_axis_listen_port_status_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_listen_port_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_listen_port_status.dat");
unsigned int ap_apatb_s_axis_notifications_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_notifications_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_notifications.dat");
unsigned int ap_apatb_m_axis_read_package_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_read_package_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_read_package.dat");
unsigned int ap_apatb_s_axis_rx_metadata_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_metadata_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_metadata.dat");
unsigned int ap_apatb_s_axis_rx_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_V_data_V.dat");
unsigned int ap_apatb_s_axis_rx_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_V_keep_V.dat");
unsigned int ap_apatb_s_axis_rx_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_s_axis_rx_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_rx_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_rx_data_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_in_.dat");
unsigned int ap_apatb_m_axis_open_connection_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_open_connection_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_open_connection.dat");
unsigned int ap_apatb_s_axis_open_status_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_open_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_open_status.dat");
unsigned int ap_apatb_m_axis_close_connection_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_close_connection_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_close_connection.dat");
unsigned int ap_apatb_m_axis_tx_metadata_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_metadata_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_metadata.dat");
unsigned int ap_apatb_m_axis_tx_data_V_data_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_V_data_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_V_data_V.dat");
unsigned int ap_apatb_m_axis_tx_data_V_keep_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_V_keep_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_V_keep_V.dat");
unsigned int ap_apatb_m_axis_tx_data_V_strb_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_V_strb_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_V_strb_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_m_axis_tx_data_V_last_V_cap_bc;
static AESL_RUNTIME_BC __xlx_m_axis_tx_data_V_last_V_V_size_Reader("../tv/stream_size/stream_size_out_m_axis_tx_data_V_last_V.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb__cap_bc;
static AESL_RUNTIME_BC __xlx__V_size_Reader("../tv/stream_size/stream_size_out_.dat");
unsigned int ap_apatb_s_axis_tx_status_cap_bc;
static AESL_RUNTIME_BC __xlx_s_axis_tx_status_V_size_Reader("../tv/stream_size/stream_size_in_s_axis_tx_status.dat");
struct __cosim_s2__ { char data[2]; };
struct __cosim_s1__ { char data[1]; };
struct __cosim_s10__ { char data[16]; };
struct __cosim_s40__ { char data[64]; };
struct __cosim_s4__ { char data[4]; };
struct __cosim_s8__ { char data[8]; };
struct __cosim_sB__ { char data[11]; };
struct __cosim_s9__ { char data[9]; };
extern "C" void iperf_client(__cosim_s2__*, __cosim_s1__*, __cosim_s10__*, int*, __cosim_s2__*, volatile void *, volatile void *, volatile void *, , volatile void *, , , long long*, __cosim_s10__*, __cosim_s2__*, int*, volatile void *, volatile void *, volatile void *, , volatile void *, , , long long*, __cosim_s1__, __cosim_s1__, __cosim_s2__, __cosim_s1__, __cosim_s1__, __cosim_s4__, __cosim_s8__, __cosim_s2__, __cosim_s2__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__, __cosim_s4__);
extern "C" void apatb_iperf_client_hw(volatile void * __xlx_apatb_param_m_axis_listen_port, volatile void * __xlx_apatb_param_s_axis_listen_port_status, volatile void * __xlx_apatb_param_s_axis_notifications, volatile void * __xlx_apatb_param_m_axis_read_package, volatile void * __xlx_apatb_param_s_axis_rx_metadata, volatile void * __xlx_apatb_param_s_axis_rx_data_V_data_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_keep_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_strb_V, volatile void * __xlx_apatb_param_s_axis_rx_data_V_last_V, volatile void * __xlx_apatb_param_m_axis_open_connection, volatile void * __xlx_apatb_param_s_axis_open_status, volatile void * __xlx_apatb_param_m_axis_close_connection, volatile void * __xlx_apatb_param_m_axis_tx_metadata, volatile void * __xlx_apatb_param_m_axis_tx_data_V_data_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_keep_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_strb_V, volatile void * __xlx_apatb_param_m_axis_tx_data_V_last_V, volatile void * __xlx_apatb_param_s_axis_tx_status, __cosim_s1__* __xlx_apatb_param_runExperiment, __cosim_s1__* __xlx_apatb_param_dualModeEn, __cosim_s2__* __xlx_apatb_param_useConn, __cosim_s1__* __xlx_apatb_param_pkgWordCount, __cosim_s1__* __xlx_apatb_param_packetGap, __cosim_s4__* __xlx_apatb_param_timeInSeconds, __cosim_s8__* __xlx_apatb_param_timeInCycles, __cosim_s2__* __xlx_apatb_param_useIpAddr, __cosim_s2__* __xlx_apatb_param_regBasePort, __cosim_s4__* __xlx_apatb_param_regIpAddress0, __cosim_s4__* __xlx_apatb_param_regIpAddress1, __cosim_s4__* __xlx_apatb_param_regIpAddress2, __cosim_s4__* __xlx_apatb_param_regIpAddress3, __cosim_s4__* __xlx_apatb_param_regIpAddress4, __cosim_s4__* __xlx_apatb_param_regIpAddress5, __cosim_s4__* __xlx_apatb_param_regIpAddress6, __cosim_s4__* __xlx_apatb_param_regIpAddress7, __cosim_s4__* __xlx_apatb_param_regIpAddress8, __cosim_s4__* __xlx_apatb_param_regIpAddress9) {
  //Create input buffer for m_axis_listen_port
  ap_apatb_m_axis_listen_port_cap_bc = __xlx_m_axis_listen_port_V_size_Reader.read_size();
  __cosim_s2__* __xlx_m_axis_listen_port_input_buffer= new __cosim_s2__[ap_apatb_m_axis_listen_port_cap_bc];
  // collect __xlx_s_axis_listen_port_status_tmp_vec
  unsigned __xlx_s_axis_listen_port_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_listen_port_status_V_read_Size = __xlx_s_axis_listen_port_status_V_size_Reader.read_size();
  vector<__cosim_s1__> __xlx_s_axis_listen_port_status_tmp_vec;
  while (!((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->empty() && __xlx_s_axis_listen_port_status_V_tmp_Count < __xlx_s_axis_listen_port_status_V_read_Size) {
    __xlx_s_axis_listen_port_status_tmp_vec.push_back(((hls::stream<__cosim_s1__>*)__xlx_apatb_param_s_axis_listen_port_status)->read());
    __xlx_s_axis_listen_port_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_listen_port_status_cap_bc = __xlx_s_axis_listen_port_status_tmp_vec.size();
  // store input buffer
  __cosim_s1__* __xlx_s_axis_listen_port_status_input_buffer= new __cosim_s1__[__xlx_s_axis_listen_port_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_listen_port_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_listen_port_status_input_buffer[i] = __xlx_s_axis_listen_port_status_tmp_vec[i];
  }
  // collect __xlx_s_axis_notifications_tmp_vec
  unsigned __xlx_s_axis_notifications_V_tmp_Count = 0;
  unsigned __xlx_s_axis_notifications_V_read_Size = __xlx_s_axis_notifications_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_notifications_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->empty() && __xlx_s_axis_notifications_V_tmp_Count < __xlx_s_axis_notifications_V_read_Size) {
    __xlx_s_axis_notifications_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_notifications)->read());
    __xlx_s_axis_notifications_V_tmp_Count++;
  }
  ap_apatb_s_axis_notifications_cap_bc = __xlx_s_axis_notifications_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_notifications_input_buffer= new __cosim_s10__[__xlx_s_axis_notifications_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_notifications_tmp_vec.size(); ++i) {
    __xlx_s_axis_notifications_input_buffer[i] = __xlx_s_axis_notifications_tmp_vec[i];
  }
  //Create input buffer for m_axis_read_package
  ap_apatb_m_axis_read_package_cap_bc = __xlx_m_axis_read_package_V_size_Reader.read_size();
  int* __xlx_m_axis_read_package_input_buffer= new int[ap_apatb_m_axis_read_package_cap_bc];
  // collect __xlx_s_axis_rx_metadata_tmp_vec
  unsigned __xlx_s_axis_rx_metadata_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_metadata_V_read_Size = __xlx_s_axis_rx_metadata_V_size_Reader.read_size();
  vector<__cosim_s2__> __xlx_s_axis_rx_metadata_tmp_vec;
  while (!((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->empty() && __xlx_s_axis_rx_metadata_V_tmp_Count < __xlx_s_axis_rx_metadata_V_read_Size) {
    __xlx_s_axis_rx_metadata_tmp_vec.push_back(((hls::stream<__cosim_s2__>*)__xlx_apatb_param_s_axis_rx_metadata)->read());
    __xlx_s_axis_rx_metadata_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_metadata_cap_bc = __xlx_s_axis_rx_metadata_tmp_vec.size();
  // store input buffer
  __cosim_s2__* __xlx_s_axis_rx_metadata_input_buffer= new __cosim_s2__[__xlx_s_axis_rx_metadata_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_metadata_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_metadata_input_buffer[i] = __xlx_s_axis_rx_metadata_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_V_data_V_tmp_vec
  unsigned __xlx_s_axis_rx_data_V_data_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_V_data_V_V_read_Size = __xlx_s_axis_rx_data_V_data_V_V_size_Reader.read_size();
  vector<__cosim_s40__> __xlx_s_axis_rx_data_V_data_V_tmp_vec;
  while (!((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->empty() && __xlx_s_axis_rx_data_V_data_V_V_tmp_Count < __xlx_s_axis_rx_data_V_data_V_V_read_Size) {
    __xlx_s_axis_rx_data_V_data_V_tmp_vec.push_back(((hls::stream<__cosim_s40__>*)__xlx_apatb_param_s_axis_rx_data_V_data_V)->read());
    __xlx_s_axis_rx_data_V_data_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_V_data_V_cap_bc = __xlx_s_axis_rx_data_V_data_V_tmp_vec.size();
  // store input buffer
  __cosim_s40__* __xlx_s_axis_rx_data_V_data_V_input_buffer= new __cosim_s40__[__xlx_s_axis_rx_data_V_data_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_V_data_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_V_data_V_input_buffer[i] = __xlx_s_axis_rx_data_V_data_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_V_keep_V_tmp_vec
  unsigned __xlx_s_axis_rx_data_V_keep_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_V_keep_V_V_read_Size = __xlx_s_axis_rx_data_V_keep_V_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_rx_data_V_keep_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->empty() && __xlx_s_axis_rx_data_V_keep_V_V_tmp_Count < __xlx_s_axis_rx_data_V_keep_V_V_read_Size) {
    __xlx_s_axis_rx_data_V_keep_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_keep_V)->read());
    __xlx_s_axis_rx_data_V_keep_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_V_keep_V_cap_bc = __xlx_s_axis_rx_data_V_keep_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_rx_data_V_keep_V_input_buffer= new long long[__xlx_s_axis_rx_data_V_keep_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_V_keep_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_V_keep_V_input_buffer[i] = __xlx_s_axis_rx_data_V_keep_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_V_strb_V_tmp_vec
  unsigned __xlx_s_axis_rx_data_V_strb_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_V_strb_V_V_read_Size = __xlx_s_axis_rx_data_V_strb_V_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_rx_data_V_strb_V_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->empty() && __xlx_s_axis_rx_data_V_strb_V_V_tmp_Count < __xlx_s_axis_rx_data_V_strb_V_V_read_Size) {
    __xlx_s_axis_rx_data_V_strb_V_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_rx_data_V_strb_V)->read());
    __xlx_s_axis_rx_data_V_strb_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_V_strb_V_cap_bc = __xlx_s_axis_rx_data_V_strb_V_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_rx_data_V_strb_V_input_buffer= new long long[__xlx_s_axis_rx_data_V_strb_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_V_strb_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_V_strb_V_input_buffer[i] = __xlx_s_axis_rx_data_V_strb_V_tmp_vec[i];
  }
  // collect __xlx_s_axis_rx_data_V_last_V_tmp_vec
  unsigned __xlx_s_axis_rx_data_V_last_V_V_tmp_Count = 0;
  unsigned __xlx_s_axis_rx_data_V_last_V_V_read_Size = __xlx_s_axis_rx_data_V_last_V_V_size_Reader.read_size();
  vector<char> __xlx_s_axis_rx_data_V_last_V_tmp_vec;
  while (!((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->empty() && __xlx_s_axis_rx_data_V_last_V_V_tmp_Count < __xlx_s_axis_rx_data_V_last_V_V_read_Size) {
    __xlx_s_axis_rx_data_V_last_V_tmp_vec.push_back(((hls::stream<char>*)__xlx_apatb_param_s_axis_rx_data_V_last_V)->read());
    __xlx_s_axis_rx_data_V_last_V_V_tmp_Count++;
  }
  ap_apatb_s_axis_rx_data_V_last_V_cap_bc = __xlx_s_axis_rx_data_V_last_V_tmp_vec.size();
  // store input buffer
  char* __xlx_s_axis_rx_data_V_last_V_input_buffer= new char[__xlx_s_axis_rx_data_V_last_V_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_rx_data_V_last_V_tmp_vec.size(); ++i) {
    __xlx_s_axis_rx_data_V_last_V_input_buffer[i] = __xlx_s_axis_rx_data_V_last_V_tmp_vec[i];
  }
  //Create input buffer for m_axis_open_connection
  ap_apatb_m_axis_open_connection_cap_bc = __xlx_m_axis_open_connection_V_size_Reader.read_size();
  long long* __xlx_m_axis_open_connection_input_buffer= new long long[ap_apatb_m_axis_open_connection_cap_bc];
  // collect __xlx_s_axis_open_status_tmp_vec
  unsigned __xlx_s_axis_open_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_open_status_V_read_Size = __xlx_s_axis_open_status_V_size_Reader.read_size();
  vector<__cosim_s10__> __xlx_s_axis_open_status_tmp_vec;
  while (!((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->empty() && __xlx_s_axis_open_status_V_tmp_Count < __xlx_s_axis_open_status_V_read_Size) {
    __xlx_s_axis_open_status_tmp_vec.push_back(((hls::stream<__cosim_s10__>*)__xlx_apatb_param_s_axis_open_status)->read());
    __xlx_s_axis_open_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_open_status_cap_bc = __xlx_s_axis_open_status_tmp_vec.size();
  // store input buffer
  __cosim_s10__* __xlx_s_axis_open_status_input_buffer= new __cosim_s10__[__xlx_s_axis_open_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_open_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_open_status_input_buffer[i] = __xlx_s_axis_open_status_tmp_vec[i];
  }
  //Create input buffer for m_axis_close_connection
  ap_apatb_m_axis_close_connection_cap_bc = __xlx_m_axis_close_connection_V_size_Reader.read_size();
  __cosim_s2__* __xlx_m_axis_close_connection_input_buffer= new __cosim_s2__[ap_apatb_m_axis_close_connection_cap_bc];
  //Create input buffer for m_axis_tx_metadata
  ap_apatb_m_axis_tx_metadata_cap_bc = __xlx_m_axis_tx_metadata_V_size_Reader.read_size();
  int* __xlx_m_axis_tx_metadata_input_buffer= new int[ap_apatb_m_axis_tx_metadata_cap_bc];
  //Create input buffer for m_axis_tx_data_V_data_V
  ap_apatb_m_axis_tx_data_V_data_V_cap_bc = __xlx_m_axis_tx_data_V_data_V_V_size_Reader.read_size();
  __cosim_s40__* __xlx_m_axis_tx_data_V_data_V_input_buffer= new __cosim_s40__[ap_apatb_m_axis_tx_data_V_data_V_cap_bc];
  //Create input buffer for m_axis_tx_data_V_keep_V
  ap_apatb_m_axis_tx_data_V_keep_V_cap_bc = __xlx_m_axis_tx_data_V_keep_V_V_size_Reader.read_size();
  long long* __xlx_m_axis_tx_data_V_keep_V_input_buffer= new long long[ap_apatb_m_axis_tx_data_V_keep_V_cap_bc];
  //Create input buffer for m_axis_tx_data_V_strb_V
  ap_apatb_m_axis_tx_data_V_strb_V_cap_bc = __xlx_m_axis_tx_data_V_strb_V_V_size_Reader.read_size();
  long long* __xlx_m_axis_tx_data_V_strb_V_input_buffer= new long long[ap_apatb_m_axis_tx_data_V_strb_V_cap_bc];
  //Create input buffer for m_axis_tx_data_V_last_V
  ap_apatb_m_axis_tx_data_V_last_V_cap_bc = __xlx_m_axis_tx_data_V_last_V_V_size_Reader.read_size();
  char* __xlx_m_axis_tx_data_V_last_V_input_buffer= new char[ap_apatb_m_axis_tx_data_V_last_V_cap_bc];
  // collect __xlx_s_axis_tx_status_tmp_vec
  unsigned __xlx_s_axis_tx_status_V_tmp_Count = 0;
  unsigned __xlx_s_axis_tx_status_V_read_Size = __xlx_s_axis_tx_status_V_size_Reader.read_size();
  vector<long long> __xlx_s_axis_tx_status_tmp_vec;
  while (!((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->empty() && __xlx_s_axis_tx_status_V_tmp_Count < __xlx_s_axis_tx_status_V_read_Size) {
    __xlx_s_axis_tx_status_tmp_vec.push_back(((hls::stream<long long>*)__xlx_apatb_param_s_axis_tx_status)->read());
    __xlx_s_axis_tx_status_V_tmp_Count++;
  }
  ap_apatb_s_axis_tx_status_cap_bc = __xlx_s_axis_tx_status_tmp_vec.size();
  // store input buffer
  long long* __xlx_s_axis_tx_status_input_buffer= new long long[__xlx_s_axis_tx_status_tmp_vec.size()];
  for (int i = 0; i < __xlx_s_axis_tx_status_tmp_vec.size(); ++i) {
    __xlx_s_axis_tx_status_input_buffer[i] = __xlx_s_axis_tx_status_tmp_vec[i];
  }
  // DUT call
  iperf_client(__xlx_m_axis_listen_port_input_buffer, __xlx_s_axis_listen_port_status_input_buffer, __xlx_s_axis_notifications_input_buffer, __xlx_m_axis_read_package_input_buffer, __xlx_s_axis_rx_metadata_input_buffer, __xlx_s_axis_rx_data_V_data_V_input_buffer, __xlx_s_axis_rx_data_V_keep_V_input_buffer, __xlx_s_axis_rx_data_V_strb_V_input_buffer, __xlx_s_axis_rx_data_V_last_V_input_buffer, __xlx_m_axis_open_connection_input_buffer, __xlx_s_axis_open_status_input_buffer, __xlx_m_axis_close_connection_input_buffer, __xlx_m_axis_tx_metadata_input_buffer, __xlx_m_axis_tx_data_V_data_V_input_buffer, __xlx_m_axis_tx_data_V_keep_V_input_buffer, __xlx_m_axis_tx_data_V_strb_V_input_buffer, __xlx_m_axis_tx_data_V_last_V_input_buffer, __xlx_s_axis_tx_status_input_buffer, *__xlx_apatb_param_runExperiment, *__xlx_apatb_param_dualModeEn, *__xlx_apatb_param_useConn, *__xlx_apatb_param_pkgWordCount, *__xlx_apatb_param_packetGap, *__xlx_apatb_param_timeInSeconds, *__xlx_apatb_param_timeInCycles, *__xlx_apatb_param_useIpAddr, *__xlx_apatb_param_regBasePort, *__xlx_apatb_param_regIpAddress0, *__xlx_apatb_param_regIpAddress1, *__xlx_apatb_param_regIpAddress2, *__xlx_apatb_param_regIpAddress3, *__xlx_apatb_param_regIpAddress4, *__xlx_apatb_param_regIpAddress5, *__xlx_apatb_param_regIpAddress6, *__xlx_apatb_param_regIpAddress7, *__xlx_apatb_param_regIpAddress8, *__xlx_apatb_param_regIpAddress9);
  for (unsigned i = 0; i <ap_apatb_m_axis_listen_port_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_listen_port)->write(__xlx_m_axis_listen_port_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_read_package_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_m_axis_read_package)->write(__xlx_m_axis_read_package_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_open_connection_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_open_connection)->write(__xlx_m_axis_open_connection_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_close_connection_cap_bc; ++i)
    ((hls::stream<__cosim_s2__>*)__xlx_apatb_param_m_axis_close_connection)->write(__xlx_m_axis_close_connection_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_metadata_cap_bc; ++i)
    ((hls::stream<int>*)__xlx_apatb_param_m_axis_tx_metadata)->write(__xlx_m_axis_tx_metadata_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_V_data_V_cap_bc; ++i)
    ((hls::stream<__cosim_s40__>*)__xlx_apatb_param_m_axis_tx_data_V_data_V)->write(__xlx_m_axis_tx_data_V_data_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_V_keep_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_keep_V)->write(__xlx_m_axis_tx_data_V_keep_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_V_strb_V_cap_bc; ++i)
    ((hls::stream<long long>*)__xlx_apatb_param_m_axis_tx_data_V_strb_V)->write(__xlx_m_axis_tx_data_V_strb_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb_m_axis_tx_data_V_last_V_cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_m_axis_tx_data_V_last_V)->write(__xlx_m_axis_tx_data_V_last_V_input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
  for (unsigned i = 0; i <ap_apatb__cap_bc; ++i)
    ((hls::stream<char>*)__xlx_apatb_param_)->write(__xlx__input_buffer[i]);
}
