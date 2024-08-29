package test.t240705;

import java.util.Scanner;

public class T_06 {

	public static void main(String[] args) {
		int mid, fin, hom, lec;
		double mid2, fin2, hom2, lec2, total;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("중간 고사 점수 : ");
		mid = sc.nextInt();
		System.out.print("기말 고사 점수 : ");
		fin = sc.nextInt();
		System.out.print("과제 점수 : ");
		hom = sc.nextInt();
		System.out.print("출석 회수 : ");
		lec = sc.nextInt();
		System.out.println();
		System.out.println("==============결과==============");
		
		mid2 = (mid * 0.2);
		fin2 = (fin * 0.3);
		hom2 = (hom * 0.3);
		lec2 = lec;
		total = mid2 + fin2 + hom2 + lec2;
		
		System.out.printf("중간 고사 점수(20) : %.1f\n", mid2);
		System.out.printf("기말 고사 점수(30) : %.1f\n", fin2);
		System.out.printf("과제 점수(30) : %.1f\n", hom2);
		System.out.printf("출석 회수(20) : %.1f\n", lec2);
		System.out.printf("총점 : %.1f\n", total);
		
		if (total > 70.0 && lec2 >= 0.7 * lec) {
			System.out.println("Pass");
		}
		else if (lec2 < 0.7 * lec) {
			System.out.println("Fail [출석 미달]");
		}
		else if (total < 70.0) {
			System.out.println("Fail [점수 미달]");
		}
		
	}

}
