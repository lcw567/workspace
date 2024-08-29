package test.t240705;

import java.util.Scanner;

public class T_01 {

	public static void main(String[] args) {
		double kor, eng, math;
		int total = 0, aver = 0;
		Scanner sc = new Scanner(System.in);
		System.out.print("국어 : ");
		kor = sc.nextDouble();
		System.out.print("영어 : ");
		eng = sc.nextDouble();
		System.out.print("수학 : ");
		math = sc.nextDouble();
		total = (int)(kor + eng + math);
		aver = (int)(total / 3);
		
		System.out.printf("총점 : %d\n", total);
		System.out.printf("평균 : %d\n", aver);
	}

}
