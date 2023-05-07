using System.IO.Ports;

namespace hevc_video_server
{
    public class Program
    {
        // 码流保存地址
        public static readonly string HEVC_VIDEO_PATH = "Videos/receive.hevc";

        public static void Main()
        {
            // 获取可用串口
            var validSerialPorts = SerialPort.GetPortNames();
            if(validSerialPorts.Any() )
            {
                Console.WriteLine("============= Valid Serial Ports =============");
                foreach (var serialPort in validSerialPorts)
                {
                    Console.WriteLine(serialPort);
                }
                Console.Write("Choose a serial port to connect:");
                var selectedSerialPort = Console.ReadLine();

                using var hevcWriteStream = new FileStream(HEVC_VIDEO_PATH, FileMode.CreateNew, FileAccess.Write);
                
            }

            Console.WriteLine("No available serial port is found. Please check the connection");
            Console.ReadKey();
        }
    }
}