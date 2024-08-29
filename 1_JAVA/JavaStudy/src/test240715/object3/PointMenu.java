package test240715.object3;

import java.util.Scanner;

public class PointMenu {
	Scanner sc = new Scanner(System.in);
	CircleController cc = new CircleController();
	RectangleController rc = new RectangleController();
	
	
	
	public void mainMenu() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("===== 메뉴 =====");
			System.out.println("1. 원");
			System.out.println("2. 사각형");
			System.out.println("9. 끝내기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1: 
				circleMenu();
				break;
			case 2: 
				rectangleMenu();
				break;
			case 9: 
				System.out.println("프로그램을 종료합니다.");
				break;
			}
		}
	}
	public void circleMenu() {
		int menu = 0;
		System.out.println("===== 원 메뉴 =====");
		System.out.println("1. 원 둘레");
		System.out.println("2. 원 넓이");
		System.out.println("9. 메인으로");
		System.out.print("메뉴 번호 : ");
		menu = sc.nextInt();
		switch(menu) {
		case 1: 
			calcCircum();
			break;
		case 2: 
			calcCircleArea();
			break;
		case 9: 
			break;
		}
	}
	public void rectangleMenu() {
		int menu = 0;
		System.out.println("===== 사각형 메뉴 =====");
		System.out.println("1. 사각형 둘레");
		System.out.println("2. 사각형 넓이");
		System.out.println("9. 메인으로");
		System.out.print("메뉴 번호 : ");
		menu = sc.nextInt();
		switch(menu) {
		case 1: 
			calcPerimeter();
			break;
		case 2: 
			calcRectArea();
			break;
		case 9: 
			break;
		}
	}
	public void calcCircum() {
		int x, y, radius;
		System.out.print("x 좌표 : ");
		x = sc.nextInt();
		System.out.print("y 좌표 : ");
		y = sc.nextInt();
		System.out.print("반지름 : ");
		radius = sc.nextInt();
		System.out.println(cc.calcCircum(x, y, radius));
	}
	public void calcCircleArea() {
		int x, y, radius;
		System.out.print("x 좌표 : ");
		x = sc.nextInt();
		System.out.print("y 좌표 : ");
		y = sc.nextInt();
		System.out.print("반지름 : ");
		radius = sc.nextInt();
		System.out.println(cc.calcArea(x, y, radius));
	}
	public void calcPerimeter() {
		int x, y, height, width;
		System.out.print("x 좌표 : ");
		x = sc.nextInt();
		System.out.print("y 좌표 : ");
		y = sc.nextInt();
		System.out.print("높이 : ");
		height = sc.nextInt();
		System.out.print("너비 : ");
		width = sc.nextInt();
		System.out.println(rc.calcPerimeter(x, y, height, width));
	}
	public void calcRectArea() {
		int x, y, height, width;
		System.out.print("x 좌표 : ");
		x = sc.nextInt();
		System.out.print("y 좌표 : ");
		y = sc.nextInt();
		System.out.print("높이 : ");
		height = sc.nextInt();
		System.out.print("너비 : ");
		width = sc.nextInt();
		System.out.println(rc.calcArea(x, y, height, width));
	}
}
