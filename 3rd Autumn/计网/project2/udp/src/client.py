import socket
 
size = 8192
 
try:
  msg = raw_input()
  sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
  sock.sendto(msg, ('localhost', 9876))
  print(sock.recv(size))
  sock.close()
 
except:
  print("cannot reach the server")