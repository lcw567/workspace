package test240711.object3;

import java.util.Scanner;

public class Library {
	
	Scanner sc = new Scanner(System.in);
	public void menu() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("===========도서관리 프로그램===========");
			System.out.println("1. 도서 등록");
			System.out.println("2. 등록 도서 목록");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 삭제");
			System.out.println("9. 종료");
			System.out.print("메뉴 선택 : ");
			menu = sc.nextInt();
		}
	}
}