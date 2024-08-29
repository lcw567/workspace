package test.t240710.object2;

import java.util.Scanner;

public class SnackMenu {
	Scanner sc = new Scanner(System.in);
	SnackController scr = new SnackController();
	
	public void menu() {
		System.out.print("종류 : ");
		String kind = sc.next();
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("맛 : ");
		String flavor = sc.next();
		System.out.print("개수 : ");
		int numOf = sc.nextInt();
		System.out.print("가격 : ");
		int price = sc.nextInt();
		
		String pr = scr.saveData(kind, name, flavor, numOf, price);
		System.out.println(pr);
		
		char ch;
		System.out.print("저장한 정보를 확인하시겠습니까?(y/n) : ");
		ch = sc.next().charAt(0);
		if(ch == 'y') {
			pr = scr.confirmData();
			System.out.println(pr);
		}
	}
}
