package f.object.ex1;

import java.util.Scanner;

public class Run2 {
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("주문할 음식 입력 : ");
		String food1 = sc.next();
		String food2 = sc.next();
		String food3 = sc.next();
			
		Menu kim = new Menu();
		Menu choi = new Menu();
		Menu jeon = new Menu();

		kim.foodname(food1);
		kim.foodtype("한식");
		kim.foodprice(5000);
		kim.receipt();
		
		choi.foodname(food2);
		choi.foodtype("양식");
		choi.foodprice(15000);
		choi.receipt();
		
		jeon.foodname(food3);
		jeon.foodtype("일식");
		jeon.foodprice(3000);
		jeon.receipt();
		
	}
}