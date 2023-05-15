import asyncio
import subprocess
import time

NUM_CONN = 4
NUM_CMD_PER_CONN = 1
messages = []
#latency = []
#batch_latency = []
def reverse_N(N):
    #print(N)
    dataLine_hex = str(hex(N))[2:]
    dataLine_hex = dataLine_hex.rjust(8, '0')
    #print(dataLine_hex)
    dataLine_hex_reverse = ""
    for i in range(4):
        dataLine_hex_reverse += dataLine_hex [6-2*i: 8-2*i]
    return dataLine_hex_reverse

def gen_cmd():
    # messages for sorting
    for cocurrent in range(NUM_CMD_PER_CONN):
        data = ""
        for i in range(16):
            data += reverse_N(cocurrent * i + 13)
        messages.append(data)
    print(messages)

async def tcp_client(conn_id):
    reader, writer = await asyncio.open_connection('10.72.138.18', 2888)
    start = time.time()
    for req in messages:
        #print(bytes.fromhex(req))
        writer.write(bytes.fromhex(req))
        await writer.drain()
        #print("[%s] Sent: %s" % (conn_id, req.hex()))
        #await asyncio.sleep(0.5)
        rsp = await reader.read(64)
        print("[%s] Recv: %s" % (conn_id, rsp.hex()))
    interval = time.time() - start
    #batch_latency.append(interval)
    writer.close()
    await writer.wait_closed()

async def main():
    # start = time.time()
    await asyncio.gather(*[tcp_client(i) for i in range(NUM_CONN)])
    #latency.append(sum(batch_latency)/len(batch_latency))
    # interval = time.time() - start
    # latency.append(interval)

if __name__ == '__main__':
    gen_cmd()
    # define the messages to send
    configure = "ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff00" + '0' * 128
    echo_cmd = "echo '" + configure + "'|xxd -r -p| nc -w 1 10.72.138.18 2888"
    #result = subprocess.Popen(echo_cmd, shell=True, stdout=subprocess.PIPE).communicate()[0] #configure
    time.sleep(1)
    for i in range(10):
        asyncio.run(main())
        time.sleep(2)