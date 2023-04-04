import re
import subprocess
import struct
import binascii

#Reverse the order of the bytes in the hex string
def reverse_N(N):
    #print(N)
    dataLine_hex = str(hex(N))[2:]
    dataLine_hex = dataLine_hex.rjust(8, '0')
    #print(dataLine_hex)
    dataLine_hex_reverse = ""
    for i in range(4):
        dataLine_hex_reverse += dataLine_hex [6-2*i: 8-2*i]
    return dataLine_hex_reverse

#Convert float to hex
def float_to_hex(f):
    return binascii.hexlify(struct.pack('<f', f))


if __name__ == '__main__':
    #send_cmd = 'cat test_16_1.txt|xxd -r -p| nc -w 1 10.72.138.18 2888'
    #echo_cmd ="echo '1f0000000000803f0000004000004040000080400000a0400000c0400000e0400000004100001041000020410000304100004041000050410000604100007041'|xxd -r -p| nc -w 1 10.72.138.18 2888"
    for time in range(1000):
        data = ""
        for i in range(16):
            data += float_to_hex(time + i).decode("utf-8")
        echo_cmd = "echo '" + data + "'|xxd -r -p| nc -w 1 10.72.138.18 2888"
        #print(echo_cmd)
        result = subprocess.Popen(echo_cmd, shell=True, stdout=subprocess.PIPE).communicate()[0]
        
        
