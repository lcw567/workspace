package test.t240704;

import java.util.Scanner;

public class T_06 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int num;
		System.out.print("양의 정수 : ");
		num = sc.nextInt();
		int[] arr = new int[num];
		for (int i = 0; i < num; i++) {
			arr[i] = i + 1;
			System.out.printf("%d ",arr[i]);
		}
	}

}
