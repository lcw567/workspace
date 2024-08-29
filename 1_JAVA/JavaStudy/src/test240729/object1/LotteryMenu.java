package test240729.object1;

import java.util.HashSet;
import java.util.Scanner;
import java.util.TreeSet;

public class LotteryMenu {
	private Scanner sc = new Scanner(System.in);
	private LotteryController lc = new LotteryController();
	
	public void mainMenu() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("========== KH 추첨 프로그램 ==========");
			System.out.println("******* 메인 메뉴 *******");
			System.out.println("1. 추첨 대상 추가");
			System.out.println("2. 추첨 대상 삭제");
			System.out.println("3. 당첨 대상 확인");
			System.out.println("4. 정렬된 당첨 대상 확인");
			System.out.println("5. 당첨 대상 검색");
			System.out.println("9. 종료");
			System.out.println();
			System.out.print("메뉴 번호 입력 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:
				insertObject();
				break;
			case 2:
				deleteObject();
				break;
			case 3:
				winObject();
				break;
			case 4:
				sortedWinObject();
				break;
			case 5:
				searchWinner();
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
	public void insertObject() {
		System.out.print("추가할 추첨 대상 수 : ");
		int amount = sc.nextInt();
		int cnt = 0;
		while(cnt != amount) {
			System.out.print("이름 : ");
			String name = sc.next();
			System.out.print("핸드폰 번호('-'빼고) : ");
			String phone = sc.next();
			if(lc.insertObject(new Lottery(name, phone))) cnt++;
			else {
				System.out.println("중복된 대상입니다. 다시 입력하세요.");
				continue;
			}
		}
		System.out.println("추가 완료되었습니다.");
	}
	public void deleteObject() {
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("핸드폰 번호('-'빼고) : ");
		String phone = sc.next();
		if(lc.deleteObject(new Lottery(name, phone))) System.out.println("삭제 완료 되었습니다.");
		else System.out.println("존재하지 않는 대상입니다.");
	}	
	public void winObject() {
//		for(Object o : lc.winObject()) {
//			System.out.println(o);
//		}
		HashSet win = lc.winObject();
		if(win != null) {
			System.out.println(win);
		}
		else System.out.println("당첨결과가 없습니다.");
	}
	public void sortedWinObject() {
		TreeSet sortedList = lc.sortedWinObject();
		if(sortedList.isEmpty()) {
			System.out.println("당첨결과가 없습니다.");
		}
		else {
			for(Object obj : sortedList) {
				System.out.println(obj);
			}
		}
	}
	public void searchWinner() {
//		검색할 대상의 이름과 핸드폰 번호를 받고 매개변수 있는 Lottery 생성자를 이용해
//		객체에 정보를 담아 lc에 객체를 보냄.
//		받은 결과에 따라 true면 “축하합니다. 당첨 목록에 존재합니다.”,
//		false면 “안타깝지만 당첨 목록에 존재하지 않습니다.” 출력
		System.out.println("검색할 대상의 이름과 핸드폰 번호를 입력하세요.");
		System.out.println("이름 : ");
		String name = sc.next();
		System.out.println("핸드폰 번호('-'빼고) : ");
		String phone = sc.next();
		
		if(lc.searchWinner(new Lottery(name, phone))) {
			System.out.println("축하합니다. 당첨 목록에 존재합니다.");
		}
		else System.out.println("안타깝지만 당첨 목록에 존재하지 않습니다.");
	}
}
