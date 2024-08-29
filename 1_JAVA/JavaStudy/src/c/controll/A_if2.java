package C.controll;

import java.util.Scanner;

public class A_if2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		/*
		 * 나이를 입력받아
		 * 13세이하 : 어린이
		 * 13세 초과 19세 이하 : 청소년
		 * 19세 초과 : 성인
		 * 
		 * 나이를 입력 : xx
		 * xx세는 xxx에 속합니다.
		 */
		
//		int age;
//		System.out.println("나이를 입력 : ");
//		age = sc.nextInt();
//		if (age<=13) {
//			System.out.printf("%d세는 어린이에 속합니다.",age);
//		}
//		else if (13<age && age<=19) {
//			System.out.printf("%d세는 청소년에 속합니다.",age);
//		}
//		else {
//			System.out.printf("%d세는 성인에 속합니다.",age);
//		}
		
		/*
		 * 성별을 (m/f)(대소문자 상관x)로 입력받아 남학생인지 여학생인지
		 * 출력하는 프로그램을 작성하세요
		 * 
		 * 성별(m/f) : x
		 * 여학생입니다. / 남학생입니다. / 잘못 입력하셨습니다.
		 */
		
//		char sex;
//		System.out.print("성별(m/f) : ");
//		sex = sc.next().charAt(0);
//		
//		if (sex == 'm') {
//			System.out.println("남학생입니다.");
//		}
//		else if (sex == 'f') {
//			System.out.println("여학생입니다.");
//		}
//		else {
//			System.out.println("잘못입력하셨습니다.");
//		}
		
		/*
		 * 정수(양수)를 입력받아
		 * 짝수인지 홀수인지 출력하는 프로그램을 작성해라
		 * 
		 * 정수 입력 : xx
		 * 짝수입니다. / 홀수입니다. / 양수가 아닙니다.
		 */
		
//		int num;
//		System.out.print("정수 입력 : ");
//		num = sc.nextInt();
//		
//		if (num % 2 == 1) {
//			System.out.println("홀수입니다.");
//		}
//		else if (num % 2 == 0) {
//			System.out.println("짝수입니다.");
//		}
//		else {
//			System.out.println("양수가 아닙니다.");
//		}
		
		/*
		 * 과일을 구매하는 프로그램을 작성하여봅시다.
		 * 구매하고자하는 과일을 입력하면
		 * 그에맞는 가격이 출력되는 프로그램을 작성해 주세요.
		 * 
		 * 구매하고자 하는 과일(사과(2000), 바나나(3000), 딸기(5000)) 입력 : xx
		 * xx의 가격은 xxxx입니다. / 잘못입력하셨습니다.
		 */
		
//		String fruit;
//		System.out.print("구매하고자 하는 과일 (사과(2000), 바나나(3000), 딸기(5000)) 입력 : ");
//		fruit = sc.next();
//		
//		switch (fruit) {
//		
//		case "사과" : System.out.println("사과의 가격은 2000원입니다."); break;
//		case "바나나" : System.out.println("바나나의 가격은 3000원입니다."); break;
//		case "딸기" : System.out.println("딸기의 가격은 5000원입니다."); break;
//		default : System.out.println("잘못입력하셨습니다.");
		
		/*
		 * 월을 입력받아 해당월에 말일이 며칠까지 있는지를 출력하는 프로그램 작성
		 * 
		 * 월을 입력하세요 :xx
		 * xx월은 xx일까지입니다.
		 * 
		 * 1,3,5,7,8,10,12 31
		 * 4,6,9,11 30
		 * 2 28
		 */
		
		int month;
		System.out.print("월을 입력하세요 : ");
		month = sc.nextInt();
		
//		if (month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12) {
//			System.out.printf("%d월은 31일까지 입니다.", month);
//		}
//		else if (month == 4 || month == 6 || month == 9 || month == 11) {
//			System.out.printf("%d월은 30일까지 입니다.", month);
//		}
//		else if (month == 2) {
//			System.out.printf("%d월은 28일까지 입니다.", month);
//		}
//		else {
//			System.out.println("잘못입력하셨습니다.");
//		}
//		================================
		int day = 0;
		switch(month) {
		case 1:
		case 3: 
		case 5: 
		case 7: 
		case 8: 
		case 10:  
		case 12:
			day = 31;	break;
		case 4:
		case 6:
		case 9:
		case 11:
			day = 30;	break;
		case 2 :
			day = 28;	break;
		default : System.out.println("잘못입력하셨습니다."); break;
		}
		if (0 < day) {
			System.out.printf("%d월은 %d일 까지입니다.", month , day);
		}
	}

}
