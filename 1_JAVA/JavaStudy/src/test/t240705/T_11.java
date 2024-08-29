package test.t240705;

import java.util.Scanner;

public class T_11 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int user, com, count = 0;
		
		com = (int)(Math.random() * 100) + 1;
		while(true) {
			System.out.print("1~100 사이의 임의의 난수를 맞춰보세요 : ");
			user = sc.nextInt();
			count += 1;
			if (1 > user && user > 100) {
				System.out.println("1~100 사이의 숫자를 입력해주세요.");
				continue;
			}
			else if (user > com) {
				System.out.println("DOWN!");
			}
			else System.out.println("UP!");
			
			if (com == user) {
				System.out.println("정답입니다 !!");
				System.out.printf("%d회만에 맞추셨습니다.", count);
				break;
			}
		}
		
		
	}

}
