package solopractice2.test4;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.Socket;
import java.util.Scanner;

public class TCPClientpr {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		BufferedReader br = null;
		PrintWriter pw = null;
		
		int port = 3000;
		String serverIP = "192.168.30.9";
		
		Socket socket = null;
		
		try {
			socket = new Socket(serverIP, port);
			
			if(socket != null) {
				System.out.println("서버와 연결 성공");
				
				br = new BufferedReader(new InputStreamReader(socket.getInputStream()));
				
				pw = new PrintWriter(socket.getOutputStream());
				
				while(true) {
					System.out.println("서버에게 보낼 내용 : ");
					String sendMessage = sc.nextLine();
					pw.println(sendMessage);
					pw.flush();
					
					String message = br.readLine();
					System.out.println("서버로부터 전달받은 메세지 : " + message);
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}finally {
			try {
				pw.close();
				br.close();
			}catch(IOException e) {
				e.printStackTrace();
			}
		}
	}

}
