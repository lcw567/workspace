package test.t240704;

import java.util.Scanner;

public class T_07 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String str;
		System.out.print("문자열 : ");
		str = sc.next();
		char[] arr = new char[str.length()];
		
		for (int i = 0; i < str.length(); i++) {
			arr[i] = str.charAt(i);
		}
		System.out.print("문자 : ");
		char find;
		find = sc.next().charAt(0);
		System.out.printf("%s에 %c가 존재하는 위치(인덱스) : ",str ,find);
		int total = 0;
		for (int i = 0; i < str.length(); i++) {
			if (arr[i] == find) {
				System.out.printf("%d ",i);
				total += 1;
			}
		}
		System.out.println();
		System.out.printf("%c 개수 : %d", find, total);

	}

}
