import socket

size = 8192

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(('', 9876))

try:
  count = 0
  while True:
    count += 1
    data, address = sock.recvfrom(size)
    data = data.upper().decode()
    ret_msg= ("{} {}".format(str(count), data)).encode()
    sock.sendto(ret_msg, address)
finally:
  sock.close()