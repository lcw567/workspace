package test.t240705;

import java.util.Scanner;

public class T_04 {

	public static void main(String[] args) {
		int a, b, c;
		double ai, ci;
		Scanner sc = new Scanner(System.in);
		
		System.out.print("A사원의 연봉 : ");
		a = sc.nextInt();
		System.out.print("B사원의 연봉 : ");
		b = sc.nextInt();
		System.out.print("C사원의 연봉 : ");
		c = sc.nextInt();
		System.out.println();
		ai = a * 1.4;
		ci = c * 1.15;
		
		System.out.printf("A사원 연봉/연봉+a : %d/%.1f\n",a , ai);
		if (a + ai > 3000) System.out.println("3000 이상");
		else System.out.println("3000 미만");
		System.out.printf("B사원 연봉/연봉+a : %d/%.1f\n",b , (double)b);
		if (b > 3000) System.out.println("3000 이상");
		else System.out.println("3000 미만");
		System.out.printf("C사원 연봉/연봉+a : %d/%f\n",c , ci);
		if (c + ci > 3000) System.out.println("3000 이상");
		else System.out.println("3000 미만");
		
	}

}
