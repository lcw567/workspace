package test.t240705;

import java.util.Scanner;

public class T_08 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int a, b, exit = 0;
		String c;
		
		while(true) {
			while(true) {
				System.out.print("연산자(+, -, *, /, %) : ");
				c = sc.next();
				if (c.equals("exit")) {
					exit = 1;
					break;
				}
				else if (c.charAt(0) == '+' || c.charAt(0) == '-' || c.charAt(0) == '*' || c.charAt(0) == '/' || c.charAt(0) == '%') break;
				else System.out.println("없는 연산자입니다. 다시 입력해주세요.");
			}
			if (exit == 1) break;
			System.out.print("정수1 : ");
			a = sc.nextInt();
			
			while(true) {
				System.out.print("정수2 : ");
				b = sc.nextInt();
				if (c.charAt(0) == '/' && b == 0) System.out.println("0으로 나눌 수 없습니다. 다시 입력해주세요.");
				else break;
			}
			
			if(c.charAt(0) == '+') System.out.printf("%d + %d = %d\n",a , b, a+b);
			if(c.charAt(0) == '-') System.out.printf("%d - %d = %d\n",a , b, a-b);
			if(c.charAt(0) == '*') System.out.printf("%d * %d = %d\n",a , b, a*b);
			if(c.charAt(0) == '/') System.out.printf("%d / %d = %d\n",a , b, a/b);
			if(c.charAt(0) == '%') System.out.printf("%d % %d = %d\n",a , b, a%b);
		}
	}

}
