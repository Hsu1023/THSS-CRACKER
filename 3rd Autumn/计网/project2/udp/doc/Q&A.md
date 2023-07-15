How to write a chat program (two clients chat with each other) with UDP?

事实上，用UDP对话不需要确认对方的传输状态，因此两个客户端分别用一个端口和对方进行通信，采用UDP的方法，接收和发送彼此不冲突，且不用确认对方的状态。