package test240730.object1;

import java.util.Map.Entry;
import java.util.Scanner;
import java.util.TreeMap;

public class MemberMenu {
	private Scanner sc = new Scanner(System.in);
	private MemberController mc = new MemberController();
	
	public void mainMenu() {
//		******* 메인 메뉴 *******
//		1. 회원가입 // joinMembership() 실행
//		2. 로그인 // logIn() 실행 후 memberMenu() 실행
//		3. 같은 이름 회원 찾기 // sameName()
//		9. 종료 // “프로그램 종료.” 출력 후 main()으로 리턴
//		메뉴 번호 선택 : >> 입력 받음
//		// 메뉴 화면 반복 실행 처리
//		// 잘 못 입력 하였을 경우 "잘못 입력하였습니다. 다시 입력해주세요" 출력 후 반복
		int menu = 0;
		while(menu != 9) {
			System.out.println("******* 메인 메뉴 *******");
			System.out.println("1. 회원가입");
			System.out.println("2. 로그인");
			System.out.println("3. 같은 이름 회원 찾기");
			System.out.println("9. 종료\n");
			System.out.print("메뉴 번호 선택 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:
				joinMembership();
				break;
			case 2:
				logIn();
				memberMenu();
				break;
			case 3:
				sameName();
				break;
			case 9:
				System.out.println("프로그램 종료");
				break;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
				break;
			}
		}
	}
	public void memberMenu() {
//		******* 회원 메뉴 *******
//		1. 비밀번호 바꾸기 // changePassword() 실행
//		2. 이름 바꾸기 // changeName()
//		3. 로그아웃 // “로그아웃 되었습니다.” 출력 후 mainMenu()로 리턴
//		메뉴 번호 선택 : >> 입력 받음
//		// 메뉴 화면 반복 실행 처리
//		// 잘 못 입력 하였을 경우 "잘못 입력하였습니다. 다시 입력해주세요" 출력 후 반복
		int menu = 0;
		while(menu != 3) {
			System.out.println("1. 비밀번호 바꾸기");
			System.out.println("2. 이름 바꾸기");
			System.out.println("3. 로그아웃\n");
			System.out.print("메뉴 번호 선택 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:
				changePassword();
				break;
			case 2:
				changeName();
				break;
			case 3:
				System.out.println("로그아웃 되었습니다.");
				break;
			default:
				System.out.println("잘못 입력하였습니다. 다시 입력해주세요");
				break;
			}
		}
	}
	public void joinMembership() {
//		회원가입하기 위해 아이디, 비밀번호, 이름을 받고 비밀번호와 이름은
//		Member객체에 담고 id와 객체는 MemberController(mc)의 joinMembership()로 보냄.
//		받은 결과에 따라 true면 “성공적으로 회원가입 완료하였습니다.”,
//		false면 “중복된 아이디입니다. 다시 입력해주세요.” 출력
		System.out.print("아이디 : ");
		String id = sc.next();
		System.out.print("비밀번호 : ");
		String password = sc.next();
		System.out.print("이름 : ");
		String name = sc.next();
		
		if(mc.joinMembership(id, new Member(password, name))) System.out.println("성공적으로 회원가입 완료하였습니다.");
		else System.out.println("중복된 아이디입니다. 다시 입력해주세요.");
	}
	public void logIn() {
//		아이디와 비밀번호를 사용자에게 받아 mc의 logIn()메소드로 넘겨 줌
//		반환 값 있으면 “OOO님, 환영합니다!” 출력 후 로그인 된 화면으로(memberMenu()),
//		없으면 “틀린 아이디 또는 비밀번호입니다. 다시 입력해주세요.” 출력 후 반복
		while(true) {
			System.out.print("아이디 : ");
			String id = sc.next();
			System.out.print("비밀번호 : ");
			String password = sc.next();
			
			if(mc.logIn(id, password) != null) {
				System.out.printf("%s님, 환영합니다!", mc.logIn(id, password));
				break;
			}
			else System.out.println("틀린 아이디 또는 비밀번호입니다. 다시 입력해주세요.");
		}
	}
	public void changePassword() {
//		아이디와 비밀번호, 변경할 비밀번호를 받아 mc의 chagePassword()로 보냄.
//		받은 결과 값이 true면 “비밀번호 변경에 성공했습니다.”,
//		false면 “비밀번호 변경에 실패했습니다. 다시 입력해주세요.” 출력 후 반복
		while(true) {
			System.out.print("아이디 : ");
			String id = sc.next();
			System.out.print("현재 비밀번호 : ");
			String oldPassword = sc.next();
			System.out.print("새로운 비밀번호 : ");
			String newPassword = sc.next();
			
			if(mc.changePassword(id, oldPassword, newPassword)) {
				System.out.println("비밀번호 변경에 성공했습니다.");
				break;
			}
			else System.out.println("비밀번호 변경에 실패했습니다. 다시 입력해주세요.");
		}
	}
	public void changeName() {
//		아이디와 비밀번호를 받아 mc의 logIn()으로 넘겨 현재 저장되어 있는 이름을 받고
//		사용자에게 현재 저장되어 있는 이름을 출력하여 보여줌.
//		변경할 이름을 받아 mc의 chageName()로 id와 함께 넘기고
//		“이름 변경에 성공하였습니다.” 출력
//		만일 logIn()로부터 저장되어 있는 이름을 받지 못 했다면
//		“이름 변경에 실패했습니다. 다시 입력해주세요” 출력 후 반복
		System.out.print("아이디 : ");
		String id = sc.next();
		System.out.print("비밀번호 : ");
		String password = sc.next();
		
		String name = mc.logIn(id, password);
		if(name != null) {
			System.out.printf("현재 설정된 이름 : %s", name);
			
			System.out.print("변경할 이름 : ");
			String newName = sc.next();
			mc.changeName(id, newName);
			
			System.out.println("이름 변경에 성공하였습니다.");
		}
		else {
			System.out.println("이름 변경에 실패했습니다. 다시 입력해주세요");
		}
	}
	public void sameName() {
//		검색할 이름을 받고 mc의 sameName()메소드로 넘김.
//		반환 값을 가지고 entrySet()을 이용하여 ‘이름-아이디’ 형식으로 출력
		System.out.print("검색할 이름 : ");
		String name = sc.next();
		TreeMap result = mc.sameName(name);
		if(result.isEmpty()) {
			System.out.println("회원을 찾지 못하였습니다.");
		}
		else {
			for(Object id : result.entrySet()) {
				Entry<String, String> en = (Entry)entry;
				System.out.println(en.getKey() + " : " + en.getValue());
			}
		}
		
	}
}
