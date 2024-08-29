package test.t240705;

import java.util.Scanner;

public class T_10 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int count, again1 = 0;
		char find, again;
		char[] charr;
		String str;
		
		while(true) {
			System.out.print("문자열 : ");
			str = sc.next();
			charr = new char[str.length()];
			System.out.print("문자 : ");
			find = sc.next().charAt(0);
			count = 0;
			for (int i = 0; i < str.length(); i++) {
				charr[i] = str.charAt(i);
				if (charr[i] == find) count += 1;
			}
			System.out.printf("포함된 개수 : %d\n",count);
			
			while(true) {
				System.out.print("더 하시겠습니까? (y/n) : ");
				again = sc.next().charAt(0);
				if (again == 'N' || again == 'n') {
					again1 = 1;
					break;
				}
				else if (again == 'Y' || again == 'y') break;
				else System.out.println("잘못입력하셨습니다.");
				
			}
			if (again1 == 1) {
				System.out.print("종료");
				break;
			}
			
		}
		
	}

}
