package Test01.t240703;

import java.util.Scanner;

public class T_03 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int kor, eng, math, total;
		double aver;
		System.out.print("국어점수 : ");
		kor = sc.nextInt();
		System.out.print("수학점수 : ");
		math = sc.nextInt();
		System.out.print("영어점수 : ");
		eng = sc.nextInt();
		
		total = kor + math + eng;
		aver = total / 3.0;
		
		if (kor >= 40 && math >= 40 && eng >= 40 && aver >= 60) {
			System.out.printf("국어 : %d\n",kor);
			System.out.printf("수학 : %d\n",math);
			System.out.printf("영어 : %d\n",eng);
			System.out.printf("합계 : %d\n",total);
			System.out.printf("평균 : %.1f\n",aver);
			System.out.println("축하합니다, 합격입니다!");
		}
		else System.out.println("불합격입니다.");

	}

}
