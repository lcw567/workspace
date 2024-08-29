package test240717.object1;

import java.util.Scanner;

public class LibraryMenu {
	private LibraryController lc = new LibraryController();
	private Scanner sc = new Scanner(System.in);
	
	
	
	public void mainMenu() {
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("나이 : ");
		int age = sc.nextInt();
		System.out.print("성별 : ");
		char gender = sc.next().charAt(0);
		Member m = new Member(name, age, gender);
		lc.insertMember(m);
		int menu = 0;
		while(menu != 9) {
			System.out.println("==== 메뉴 ====");
			System.out.println("1. 마이페이지");
			System.out.println("2. 도서 전체 검색");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 대여하기");
			System.out.println("9. 프로그램 종료하기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:
				System.out.println(lc.myInfo().toString());
				System.out.println();
				break;
			case 2:
				selectAll();
				System.out.println();
				break;
			case 3:
				searchBook();
				System.out.println();
				break;
			case 4:
				rentBook();
				System.out.println();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				break;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력하십시오.");
			}
		}
	}
	public void selectAll() {
		for(int i = 0; i < lc.selectAll().length; i++) {
			System.out.printf("%d번도서 : ", i);
			System.out.println(lc.selectAll()[i].toString());
		}
	}
	public void searchBook() {
		System.out.print("검색할 제목 키워드 : ");
		String keyword = sc.next();
		System.out.println();
		for(int i = 0; i < lc.searchBook(keyword).length; i++) {
			if(lc.searchBook(keyword)[i] != null) {
				System.out.println(lc.searchBook(keyword)[i].toString());
			}
		}
	}
	public void rentBook() {
		selectAll();
		System.out.print("대여할 도서 번호 선택 : ");
		int index = sc.nextInt();
		if(lc.rentBook(index) == 1) {
			System.out.println("성공적으로 대여되었습니다.");
		}
		else if(lc.rentBook(index) == 2) {
			System.out.println("나이 제한으로 대여 불가능입니다.");
		}
		else {
			System.out.println("성공적으로 대여되었습니다. 요리학원 쿠폰이 발급되었으니 마이페이지에서 확인하게요.");
		}
	}
}
