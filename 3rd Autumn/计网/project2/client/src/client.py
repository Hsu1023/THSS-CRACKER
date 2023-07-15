import socket
import os
import random

class Client():
    def __init__(self):
        self.FTPSocket = socket.socket()
        self.listenSocket = socket.socket()
        self.listenPort = -1 # PORT
        self.dataSocket = socket.socket()
        self.dataPort = -1 # PASV
        self.connectMode = None
        self.connecting = False
        self.host = "127.0.0.1"
        self.port = 21
        self.username = "anonymous"
        self.password = "19260817"
        self.client_name = socket.gethostname()
        self.client_ip = socket.gethostbyname(self.client_name)
        # self.client_ip = "127.0.0.1"

    def stdout(self, msg):
        print(msg)

    def stderr(self, msg):
        print(msg)

    def stdin(self):
        msg = input()
        return msg

    def sockrecv(self, length=1024):
        try:
            res = self.FTPSocket.recv(length).decode()
            return res
        except:
            self.stderr("Recv Error!")
            return None
    
    def socksend(self, msg):
        try:
            msg += '\r\n'
            msg = msg.encode()
            self.FTPSocket.send(msg)
        except:
            self.stderr("Send Error!")
            return None

    def datarecv(self, length=1024):
        try:
            res = self.dataSocket.recv(length)
            return res
        except:
            self.stderr("Recv Error!")
            return None

    def datasend(self, msg):
        try:
            self.dataSocket.sendall(msg)
        except:
            self.stderr("Send Error!")
            return None

    def assertstart(self, msg, code, errormsg=''):
        if msg.split(' ')[0] in str(code):
            return True
        
        else:
            if errormsg:
                self.stderr(errormsg)
            return False

    def init_connect(self):
        self.stdout("Initialize connection...")
        self.stdout("Key in host address:")
        self.host = self.stdin()
        try:
            self.FTPSocket.connect((self.host, self.port))
        except:
            self.stderr("Connection error")
            return False
        res = self.sockrecv()
        self.stdout(res)
        self.assertstart(res, 220, 'Connection error')
        return True

    def sendcmd(self, code, msg1, msg2=''):
        if not msg2:
            msg = msg1
        else:
            msg = msg1 + ' '+ msg2
        self.socksend(msg)
        res = self.sockrecv()
        self.stdout(res)
        if not self.assertstart(res, code, f'{msg1} error'):
            return False
        return res

    def login(self):
        self.stdout("> Please key in USER name:")
        self.username = self.stdin()
        if self.sendcmd(331, 'USER', self.username) is False:
            print('return')
            return False

        self.stdout("> Please key in PASS word:")
        self.password = self.stdin()
        if self.sendcmd(230, 'PASS', self.password) is False:
            return False
        return True
    
    def QUIT(self):
        if not self.sendcmd(221, 'QUIT'):
            return False
        return True

    def SYST(self):
        if not self.sendcmd(215, 'SYST'):
            return False
        return True
    
    def PWD(self):
        if not self.sendcmd(257, 'PWD'):
            return False
        return True

    def RNFR(self):
        self.stdout("> Please key in pathname to rename from:")
        param = self.stdin()
        if not self.sendcmd(350, 'RNFR', param):
            return False
        return True
    
    def RNTO(self):
        self.stdout("> Please key in pathname to rename to:")
        param = self.stdin()
        if not self.sendcmd(250, 'RNTO', param):
            return False
        return True

    def CWD(self):
        self.stdout("> Please key in workdir to tranfer to:") #change working dir
        param = self.stdin()
        if not self.sendcmd(250, 'CWD', param):
            return False
        return True
    
    def TYPE(self):
        self.stdout("> Please key in binary flag parameter:")
        param = self.stdin()
        if not self.sendcmd(200, 'TYPE', param):
            return False
        return True
    
    def MKD(self):
        self.stdout("> Please key in directory to create:")
        param = self.stdin()
        if not self.sendcmd((257, 226), 'MKD', param):
            return False
        return True

    def RMD(self):
        self.stdout("> Please key in directory to remove:")
        param = self.stdin()
        if not self.sendcmd(250, 'RMD', param):
            return False
        return True

    def closeAll(self):
        self.listenSocket.close()
        self.listenSocket = socket.socket()
        self.listenPort = -1
        self.dataSocket.close()
        self.dataSocket = socket.socket()
        self.dataPort = -1

    def PASV(self):
        res = self.sendcmd(227, 'PASV')
        if not res:
            return False
        res = res.split(')')[-2].split(',')
        p1 = int(res[-2])
        p2 = int(res[-1])
        dataPort = p1 * 256 + p2
        try:
            self.closeAll()
            self.dataPort = dataPort
        except:
            self.stderr("PASV error!")
            return False
        self.connectMode = "PASV"
        self.connecting = False
        self.stdout("Switch to PASV mode successfully: port {}".format(dataPort))
        return True


    def PORT(self):
        tempPort = -1
        # tempSocket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        
        while True:
            tempPort = random.randint(20000,65535)
            try:
                self.closeAll()
                self.listenPort = tempPort
                self.listenSocket.bind((self.client_ip, self.listenPort))
                self.listenSocket.listen(5)
            except:
                continue
            break
        param = "{},{},{}".format(self.client_ip.replace('.',','), tempPort // 256, tempPort % 256)
        res = self.sendcmd(200, 'PORT', param)
        if not res:
            return False
        self.connectMode = "PORT"
        self.connecting = False
        self.stdout("Switch to PORT mode successfully: port {}".format(tempPort))
        return True
    
    def LIST(self):
        if self.connectMode not in ['PASV', 'PORT']:
            self.stderr('Please select PASV/PORT first!')
            return False
        self.stdout('> Please key in LIST directory(press ENTER for default):')
        msg = self.stdin()
        if not self.sendcmd(150, 'LIST', msg):
            return False
        if self.connectMode == 'PASV':
            if not self.connecting:
                self.dataSocket.connect((self.host, self.dataPort))
                self.connecting = True
                self.stdout("PASV mode sucessfully connected!")
        elif self.connectMode == 'PORT':
            if not self.connecting:
                self.dataSocket, address = self.listenSocket.accept()
                self.connecting = True
                self.stdout("PORT mode sucessfully connected!")
        res_data = self.datarecv(8192)
        self.stdout(res_data.decode())
        res = self.sockrecv()
        if res:
            self.stdout(res)

    def RETR(self):
        if self.connectMode not in ['PASV', 'PORT']:
            self.stderr('Please select PASV/PORT first!')
            return False
        self.stdout('> Please key in RETR directory(press ENTER for default):')
        msg = self.stdin()
        if not self.sendcmd(150, 'RETR', msg):
            return False
        if self.connectMode == 'PASV':
            if not self.connecting:
                self.dataSocket.connect((self.host, self.dataPort))
                self.connecting = True
                self.stdout("PASV mode sucessfully connected!")
        elif self.connectMode == 'PORT':
            if not self.connecting:
                self.dataSocket, address = self.listenSocket.accept()
                self.connecting = True
                self.stdout("PORT mode sucessfully connected!")
        
        try:
            with open(msg, 'wb+') as f:
                while True:
                    res_data = self.datarecv(8192)
                    if res_data is None or len(res_data) == 0:
                        break
                    f.write(res_data)
                    print("RETR success")
        except:
            self.stderr("Open filename error!")
            return
        self.closeAll()
        self.connectMode = None
        self.connecting = False
        self.sockrecv()
        

    def STOR(self):
        if self.connectMode not in ['PASV', 'PORT']:
            self.stderr('Please select PASV/PORT first!')
            return False
        self.stdout('> Please key in STOR directory(press ENTER for default):')
        msg = self.stdin()
        if not self.sendcmd(150, 'STOR', msg):
            return False
        if self.connectMode == 'PASV':
            if not self.connecting:
                self.dataSocket.connect((self.host, self.dataPort))
                self.connecting = True
                self.stdout("PASV mode sucessfully connected!")
        elif self.connectMode == 'PORT':
            if not self.connecting:
                self.dataSocket, address = self.listenSocket.accept()
                self.connecting = True
                self.stdout("PORT mode sucessfully connected!")
        try:
            with open(msg, 'rb+') as f:
                res_data = f.read()
            print(len(res_data))
            res_data += b'\0'
            print("STOR success!")
        except:
            self.stderr("Open filename error!")
            return
        self.datasend(res_data)
        self.closeAll()
        self.connectMode = None
        self.connecting = False
        self.sockrecv()
        
        
    def start(self):
        while True:
            self.stdout('> Please key in FTP command verb:')
            cmd = self.stdin()
            if cmd == 'QUIT':
                self.QUIT()
                break
            elif cmd == 'SYST':
                self.SYST()
            elif cmd == 'PWD':
                self.PWD()
            elif cmd == 'TYPE':
                self.TYPE()
            elif cmd == 'PASV':
                self.PASV()            
            elif cmd == 'PORT':
                self.PORT()
            elif cmd == 'LIST':
                self.LIST()
            elif cmd == 'MKD':
                self.MKD()
            elif cmd == 'RMD':
                self.RMD()            
            elif cmd == 'RNFR':
                self.RNFR()            
            elif cmd == 'RNTO':
                self.RNTO()          
            elif cmd == 'CWD':
                self.CWD()
            elif cmd == 'RETR':
                self.RETR()
            elif cmd == 'STOR':
                self.STOR()
            else:
                self.socksend(cmd)
                self.stdout(self.sockrecv())
            

if __name__ == '__main__':
    client = Client()
    while not client.init_connect():
        pass
    while not client.login():
        pass
    client.start()