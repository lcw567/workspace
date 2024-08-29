package a.basic;
import java.util.Scanner;

public class Practice2 {
	/*
	 * 키보드로 가로, 세로 값을 실수형으로 입력받아 사각형의 면적과 둘레를 계산하여 출력하세요.
	 * 면적 : 가로 * 세로
	 * 둘레 : (가로 + 세로) * 2
	 * 
	 * 가로 : (키보드로 입력)
	 * 세로 : (키보드로 입력)
	 * 
	 * 면적 : ~ 
	 * 둘레 : ~
	 * + 소수점 2번째 자리까지만 출력
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double num1, num2, num3, num4;
		
		System.out.print("가로 길이 : ");
		num1 = sc.nextDouble();
		sc.nextLine();
		
		System.out.print("세로 길이 : ");
		num2 = sc.nextDouble();
		sc.nextLine();
		
		num3 = num1 * num2;
		num4 = (num1 + num2) * 2;
		
		System.out.printf("면적 : %.2f\n", num3);
		System.out.printf("둘레 : %.2f", num4 );
	}

}
