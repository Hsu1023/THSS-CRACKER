using System;
using System.Text;
using System.Net;
using System.Net.Sockets;

namespace UDPServer
{
    class Program
    {
        static void Main(string[] args)
        {
            var IPEP = new IPEndPoint(IPAddress.Any, 9876);
            var theSock = new UdpClient(IPEP);
            while (true)
            {
                var client = new IPEndPoint(IPAddress.Any, 0);
                var data = theSock.Receive(ref client);
                var rcvData = Encoding.ASCII.GetString(data);
                var newData = Encoding.ASCII.GetBytes(rcvData.ToUpper());
                theSock.Send(newData, newData.Length, client);
            }
        }
    }
}