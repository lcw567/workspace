package solopractice2.test4;

import java.net.InetAddress;
import java.net.UnknownHostException;

public class Runpr {

	public static void main(String[] args) {
		try {
			InetAddress localhost = InetAddress.getLocalHost();
			System.out.println(localhost);
			
			System.out.println("내 PC명 : " + localhost.getHostName());
			System.out.println("내 IP주소 : " + localhost.getHostAddress());
			
			System.out.println("====================");
			
			InetAddress googleHost = InetAddress.getByName("www.google.com");
			
			System.out.println("google 서버명 : " + googleHost.getHostName());
			System.out.println("google IP주소 : " + googleHost.getHostAddress());
			
			System.out.println("====================");
			
			InetAddress[] naverHost = InetAddress.getAllByName("www.naver.com");
			System.out.println("네이버의 호스트 개수 "+ naverHost.length);
			
			for(InetAddress n : naverHost) {
				System.out.println("네이버 서버명 : " + n.getHostName());
				System.out.println("네이버 IP주소 : " + n.getHostAddress());
			}
			
			
		} catch (UnknownHostException e) {
			e.printStackTrace();
		}
	}

}
