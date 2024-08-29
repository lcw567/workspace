package test.t240705;

import java.util.Scanner;

public class T_12 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int ran;
		String name, user, com;
		System.out.print("당신의 이름을 입력해주세요 : ");
		name = sc.next();
		while(true) {
			System.out.print("가위바위보 : ");
			user = sc.next();
			if (user.equals("exit")) break;
			ran = (int)(Math.random() * 3);
			if (ran == 0) com = "가위";
			else if (ran == 1) com = "바위";
			else com = "보";
			System.out.printf("컴퓨터 : %s\n", com);
			System.out.printf("%s : %s\n", name, user);
//			if (user.equals("가위") && com.equals("바위")) System.out.println("졌습니다.");
//			else if (user.equals("바위") && com.equals("보")) System.out.println("졌습니다.");
//			else if (user.equals("보") && com.equals("가위")) System.out.println("졌습니다.");
//			else if (user.equals("바위") && com.equals("가위")) System.out.println("이겼습니다.");
//			else if (user.equals("보") && com.equals("바위")) System.out.println("이겼습니다.");
//			else if (user.equals("가위") && com.equals("보")) System.out.println("이겼습니다.");
//			else System.out.println("비겼습니다.");
			
			switch (user) {
				case "가위": if ()
			} 
		}
		
	}

}
