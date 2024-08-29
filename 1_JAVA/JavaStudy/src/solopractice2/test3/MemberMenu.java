package solopractice2.test3;

import java.util.Scanner;

public class MemberMenu {
	Scanner sc = new Scanner(System.in);
	MemberController mc = new MemberController();

	public void mainMenu() {

		System.out.println("========== KH 사이트 ==========");

		while (true) {
			System.out.println("******* 메인 메뉴 *******");
			System.out.println("1. 회원가입");
			System.out.println("2. 로그인");
			System.out.println("3. 같은 이름 회원 찾기");
			System.out.println("9. 종료");
			System.out.print("메뉴 번호 선택 : ");
			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				this.joinMembership();
				break;
			case 2:
				this.logIn();
				break;
			case 3:
				this.sameName();
				break;
			case 9:
				System.out.println("프로그램 종료");
				return;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요.");
			}

		}
//		******* 메인 메뉴 *******
//		1. 회원가입 // joinMembership() 실행
//		2. 로그인 // logIn() 실행 후 memberMenu() 실행
//		3. 같은 이름 회원 찾기 // sameName()
//		9. 종료 // “프로그램 종료.” 출력 후 main()으로 리턴
//		메뉴 번호 선택 : >> 입력 받음
		// 메뉴 화면 반복 실행 처리
		// 잘 못 입력 하였을 경우 "잘못 입력하였습니다. 다시 입력해주세요" 출력 후 반복

	}

	public void memberMenu() {
//		******* 회원 메뉴 *******
//		1. 비밀번호 바꾸기 // changePassword() 실행
//		2. 이름 바꾸기 // changeName()
//		3. 로그아웃 // “로그아웃 되었습니다.” 출력 후 mainMenu()로 리턴
//		메뉴 번호 선택 : >> 입력 받음
		// 메뉴 화면 반복 실행 처리
		// 잘 못 입력 하였을 경우 "잘못 입력하였습니다. 다시 입력해주세요" 출력 후 반복
		while (true) {
			System.out.println("******* 회원 메뉴 *******");
			System.out.println("1. 비밀번호 바꾸기");
			System.out.println("2. 이름 바꾸기");
			System.out.println("3. 로그아웃");
			System.out.println("메뉴 번호 선택 : ");
			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				this.changePassword();
				break;
			case 2:
				this.changeName();
				break;
			case 3:
				System.out.println("로그아웃 되었습니다.");
				return;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
			}
		}

	}

	public void joinMembership() {

		while (true) {
			System.out.print("아이디 : ");
			String id = sc.nextLine();

			System.out.print("비밀번호 : ");
			String password = sc.nextLine();

			System.out.print("이름 : ");
			String name = sc.nextLine();
			
			Member m = new Member(password, name);			
			boolean isInsert = mc.joinMembership(id, m);
			
			if(isInsert) {
				System.out.println("중복된 대상입니다. 다시 입력하세요.");
			}else {
				System.out.println("성공적으로 회원가입 완료하였습니다");
				return;
			}
		}

	}

	public void logIn() {
		while (true) {
			System.out.print("아이디 : ");
			String id = sc.nextLine();

			System.out.print("비밀번호 : ");
			String password = sc.nextLine();
			
			mc.logIn(id, password);		

		}

	}

	public void changePassword() {

	}

	public void changeName() {

	}

	public void sameName() {

	}

}
