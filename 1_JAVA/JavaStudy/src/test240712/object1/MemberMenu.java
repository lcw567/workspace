package test240712.object1;

import java.util.Scanner;

public class MemberMenu {
	private Scanner sc = new Scanner(System.in);
	private MemberController mc = new MemberController();
	
	
	
	public MemberMenu() {}
	public void mainMenu() {
//		mc.start();
		int menu=0;
		while(menu != 9) {
			System.out.printf("최대 등록 가능한 회원 수는 %d명입니다.\n",mc.SIZE);
			System.out.printf("현재 등록된 회원 수는 %d명입니다.\n", mc.existMemberNum());
			if(mc.existMemberNum() != mc.SIZE) {
				System.out.println("1. 새 회원 등록");
				System.out.println("2. 회원 검색");
				System.out.println("3. 회원 정보 수정");
				System.out.println("4. 회원 삭제");
				System.out.println("5. 모두 출력");
				System.out.println("9. 끝내기");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				System.out.println();
				switch(menu) {
				case 1: 
					insertMember();
					break;
				case 2: 
					searchMember();
					break;
				case 3: 
					updateMember();
					break;
				case 4: 
					deleteMember();
					break;
				case 5: 
					printAll();
					break;
				case 9: 
					System.out.println("프로그램을 종료합니다.");
					break;
				default: 
					System.out.println("잘못 입력하셨습니다.");
					break;
				}
			}
			else if(mc.existMemberNum() == mc.SIZE) {
				System.out.println("회원 수가 꽉 찼기 때문에 일부 메뉴만 오픈됩니다.");
				System.out.println("2. 회원 검색");
				System.out.println("3. 회원 정보 수정");
				System.out.println("4. 회원 삭제");
				System.out.println("5. 모두 출력");
				System.out.println("9. 끝내기");
				System.out.print("메뉴 번호 : ");
				menu = sc.nextInt();
				System.out.println();
				switch(menu) {
				case 1: 
					insertMember();
					break;
				case 2: 
					searchMember();
					break;
				case 3: 
					updateMember();
					break;
				case 4: 
					deleteMember();
					break;
				case 5: 
					printAll();
					break;
				case 9: 
					System.out.println("프로그램을 종료합니다.");
					break;
				default: 
					System.out.println("잘못 입력하셨습니다.");
					break;
				}
			}
		}
	}
	public void insertMember() {
		String id, name, password, email, gender = "x";
		int age;
		System.out.print("아이디 : ");
		id = sc.next();
		if(mc.checkId(id) == true) {
			System.out.println("중복된 아이디입니다. 다시 입력해주세요.");
			insertMember();
		}
		System.out.print("이름 : ");
		name = sc.next();
		System.out.print("비밀번호 : ");
		password = sc.next();
		System.out.print("이메일 : ");
		email = sc.next();
		while(true) {
			System.out.print("성별 : ");
			gender = sc.next();
			if(gender.equals("M") || gender.equals("m") || gender.equals("F") || gender.equals("f")) break;
			
		}
		System.out.print("나이 : ");
		age = sc.nextInt();
		
		mc.insertMember(id, name, password, email, gender, age);
	}
	public void searchMember() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("1. 아이디로 검색하기");
			System.out.println("2. 이름으로 검색하기");
			System.out.println("3. 이메일로 검색하기");
			System.out.println("9. 메인으로 돌아가기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			System.out.println();
			switch(menu) {
			case 1: 
				searchId();
				break;
			case 2: 
				searchName();
				break;
			case 3: 
				searchEmail();
				break;
			case 9: 
				System.out.println("메인으로 돌아갑니다.");
				break;
			default: 
				System.out.println("잘못 입력했습니다.");
				break;
			}
		}
	}
	public void searchId() {
		System.out.print("찾는 아이디 : ");
		String find = sc.next();
		System.out.println(mc.searchEmail(find));
	}
	public void searchName() {
		System.out.print("찾는 이름 : ");
		String find = sc.next();
		System.out.println(mc.searchName(find));
	}
	public void searchEmail() {
		System.out.print("찾는 이메일 : ");
		String find = sc.next();
		System.out.println(mc.searchName(find));
	}
	public void updateMember() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("1. 비밀번호 수정하기");
			System.out.println("2. 이름 수정하기");
			System.out.println("3. 이메일 수정하기");
			System.out.println("9. 메인으로 돌아가기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			System.out.println();
			switch(menu) {
			case 1: 
				updatePassword();
				break;
			case 2:
				updateName();
				break;
			case 3:
				updateEmail();
				break;
			case 9:
				System.out.println("메인으로 돌아갑니다.");
				break;
			default:
				System.out.println("잘못 입력하셨습니다.");
				break;
			}
		}
	}
	public void updatePassword() {
		System.out.print("수정할 아이디 : ");
		String id = sc.next();
		System.out.print("수정할 비밀번호 : ");
		String password = sc.next();
		
		if(mc.updatePassword(id, password) == false) System.out.println("존재하지 않는 아이디입니다.");
		else System.out.println("수정이 성공적으로 되었습니다.");
	}
	public void updateName() {
		System.out.print("수정할 아이디 : ");
		String id = sc.next();
		System.out.print("수정할 이름 : ");
		String name = sc.next();
		
		if(mc.updateName(id, name) == false) System.out.println("존재하지 않는 아이디입니다.");
		else System.out.println("수정이 성공적으로 되었습니다.");
	}
	public void updateEmail() {
		System.out.print("수정할 아이디 : ");
		String id = sc.next();
		System.out.print("수정할 이메일 : ");
		String Email = sc.next();
		
		if(mc.updateEmail(id, Email) == false) System.out.println("존재하지 않는 아이디입니다.");
		else System.out.println("수정이 성공적으로 되었습니다.");
	}
	public void deleteMember() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("1. 특정 회원 삭제하기");
			System.out.println("2. 모든 회원 삭제하기");
			System.out.println("9. 메인으로 돌아가기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			System.out.println();
			switch(menu) {
			case 1: 
				deleteOne();
				break;
			case 2:
				deleteAll();
				break;
			case 9:
				System.out.println("메인으로 돌아갑니다.");
				break;
			default:
				System.out.println("잘못 입력하셨습니다.");
				break;
			}
		}
	}
	public void deleteOne() {
		Boolean res = false;
		System.out.print("삭제할 아이디 : ");
		String id = sc.next();
		System.out.print("정말 삭제하시겠습니까?(y/n) : ");
		String confirm = sc.next();
		if(confirm.charAt(0) == 'y' || confirm.charAt(0) == 'Y') {
			res = mc.delete(id);
		}
		if(res == false) {
			System.out.println("성공적으로 삭제하였습니다.");
			System.out.println();
		}
		else {
			System.out.println("존재하지 않는 아이디입니다.");
			System.out.println();
		}
	}
	public void deleteAll() {
		System.out.print("정말 삭제하시겠습니까?(y/n) : ");
		String confirm = sc.next();
		if(confirm.charAt(0) == 'y' || confirm.charAt(0) == 'Y') {
			mc.delete();
			System.out.println("성공적으로 삭제하였습니다.");
		}
	}
	public void printAll() {
		if(mc.existMemberNum() == 0) {
			System.out.println("저장된 회원이 없습니다.");
		}
		else {
			mc.printAll();
			System.out.println();
		}
	}
}
