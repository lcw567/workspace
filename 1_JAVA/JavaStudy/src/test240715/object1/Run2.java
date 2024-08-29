package test240715.object1;

import java.util.Scanner;

public class Run2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("입력 : ");
		int num = sc.nextInt();
		
		for(int i = 0; i < num+1; i++) {
			System.out.printf("%d ",i);
		}
		
		
	}

}
