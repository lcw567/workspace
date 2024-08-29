package solopractice;

import java.util.Scanner;

public class Baekjun3 {

	/*오른쪽으로 정렬한 별 피라미드를 만드시오.*/
	
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		for(int i=0; i<5; i++) {
		    for(int j=5-i; j>1; j--) {
		        System.out.print(" ");
		    }
		    for(int k=0; k<=i; k++) {
		        System.out.print("*");
		    }
		    System.out.println();
		}
	}

}
