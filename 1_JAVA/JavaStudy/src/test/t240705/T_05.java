package test.t240705;

import java.util.Scanner;

public class T_05 {

	public static void main(String[] args) {
		double height, weight, bmi;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("키(m)를 입력해 주세요 : ");
		height = sc.nextDouble();
		System.out.print("뭄무게(kg)를 입력해 주세요 : ");
		weight = sc.nextDouble();
		
		bmi = weight / (height * height);
		System.out.printf("BMI 지수 : %f\n", bmi);
		
		if (bmi >= 30) System.out.println("고도 비만");
		else if (bmi >= 25) System.out.println("비만");
		else if (bmi >= 23) System.out.println("과체중");
		else if (bmi >= 18.5) System.out.println("정상체중");
		else  System.out.println("저체중");
		
	}

}
