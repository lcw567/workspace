package solopractice2.test1;

import java.util.Scanner;

public class PointMenu {
	
	private Scanner sc = new Scanner(System.in);
	private CircleController cc = new CircleController();
	private RectangleController rc = new RectangleController();
	
	public void mainMenu() {
		while(true) {
		System.out.println("===== 메뉴 =====");
		System.out.println("1. 원");
		System.out.println("2. 사각형");
		System.out.println("9. 끝내기");
		System.out.print("메뉴 번호 : ");
		
		int num = sc.nextInt();
		sc.nextLine();
		
		switch(num) {
		case 1:
			this.circleMenu();
			break;
		case 2:
			this.rectangleMenu();
			break;
		case 9:
			sc.close();
			return;
		default:
			System.out.println("잘못 입력했습니다.");
			break;
		}
		
		
		}
	}

	public void circleMenu() {
		while(true) {
			System.out.println("===== 원 메뉴 =====");
			System.out.println("1. 원 둘레");
			System.out.println("2. 원 넓이");
			System.out.println("9. 메인으로");
			System.out.print("메뉴 번호 : ");
			
			int num = sc.nextInt();
			sc.nextLine();
			
			switch(num) {
			case 1:
				this.calcCircum();
				break;
			case 2:
				this.calcCircleArea();
				break;
			case 9:
				return;
			default:
				System.out.println("잘못 입력했습니다.");
				break;
			}
			
			
			}

	}

	public void rectangleMenu() {
		while(true) {
			System.out.println("===== 메뉴 =====");
			System.out.println("1. 사각형 둘레");
			System.out.println("2. 사각형 넓이");
			System.out.println("9. 메인으로");
			System.out.print("메뉴 번호 : ");
			
			int num = sc.nextInt();
			sc.nextLine();
			
			switch(num) {
			case 1:
				this.calcPerimeter();
				break;
			case 2:
				this.calcRectArea();
				break;
			case 9:
				return;
			default:
				System.out.println("잘못 입력했습니다.");
				break;
			}
		}

	}

	public void calcCircum() {
		System.out.print("x 좌표 : ");
		int x = sc.nextInt();
		sc.nextLine();
		
		System.out.print("y 좌표 : ");
		int y = sc.nextInt();
		sc.nextLine();
		
		System.out.print("반지름 : ");
		int radius = sc.nextInt();
		sc.nextLine();
		
		System.out.println(cc.calcArea(x, y, radius));

	}

	public void calcCircleArea() {
		System.out.print("x 좌표 : ");
		int x = sc.nextInt();
		sc.nextLine();
		
		System.out.print("y 좌표 : ");
		int y = sc.nextInt();
		sc.nextLine();
		
		System.out.print("반지름 : ");
		int radius = sc.nextInt();
		sc.nextLine();

		System.out.println(cc.calcCircum(x, y, radius));

	}


	public void calcPerimeter() {
		System.out.print("x 좌표 : ");
		int x = sc.nextInt();
		sc.nextLine();
		
		System.out.print("y 좌표 : ");
		int y = sc.nextInt();
		sc.nextLine();
		
		System.out.print("가로 : ");
		int width = sc.nextInt();
		sc.nextLine();
		
		System.out.print("세로 : ");
		int height = sc.nextInt();
		sc.nextLine();

		System.out.println(rc.calcPerimeter(x, y, width, height));


	}

	public void calcRectArea() {
		System.out.print("x 좌표 : ");
		int x = sc.nextInt();
		sc.nextLine();
		
		System.out.print("y 좌표 : ");
		int y = sc.nextInt();
		sc.nextLine();
		
		System.out.print("가로 : ");
		int width = sc.nextInt();
		sc.nextLine();
		
		System.out.print("세로 : ");
		int height = sc.nextInt();
		sc.nextLine();

		System.out.println(rc.calcArea(x, y, width, height));


	}

}
