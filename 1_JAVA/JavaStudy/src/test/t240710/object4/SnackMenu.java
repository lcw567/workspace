package test.t240710.object4;

import java.util.Scanner;

public class SnackMenu {
	//필드
	private Scanner sc = new Scanner(System.in);
	private SnackController scr = new SnackController();
	
	public void menu() {
		String kind;
		String name;
		String flavor;
		int numOf;
		int price;
		
		System.out.println("스낵류를 입력하세요");
		
		System.out.print("종류 :");
		kind = sc.next();
		
		System.out.print("이름 :");
		name = sc.next();
		
		System.out.print("맛 :");
		flavor = sc.next();
		
		System.out.print("개수 :");
		numOf = sc.nextInt();
		
		System.out.print("가격 :");
		price = sc.nextInt();
		
		String res = scr.saveData(kind, name, flavor, numOf, price);
		System.out.println(res);
		
		System.out.println("저장된 정보를 확인하시겟습니까?(y/n)");
		char ch = sc.next().charAt(0);
		if(ch == 'y') {
			res = scr.confrimData();
			System.out.println(res);
		}
	}
}
