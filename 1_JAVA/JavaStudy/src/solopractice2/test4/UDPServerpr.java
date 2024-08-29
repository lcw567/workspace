package solopractice2.test4;

import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.SocketException;

public class UDPServerpr {

	public static void main(String[] args) {
		int port = 4000;
		
		try (DatagramSocket dsoc = new DatagramSocket(port)){
			
			byte[] data = new byte[60000];
			
			DatagramPacket dp = new DatagramPacket(data, data.length);
			System.out.println("데이터 받을 준비 완료");
			
			while(true) {
				dsoc.receive(dp);
				
				System.out.println("클라이언트 ip : " + dp.getAddress());
				String message = new String(dp.getData(), "UTF-8");
				System.out.println("클라이언트가 보낸 내용 : " + message);
			}
		} catch (SocketException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


	}

}
