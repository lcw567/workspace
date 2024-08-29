package zz;

import java.util.Scanner;

public class Run {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int width = sc.nextInt();
		int height = sc.nextInt();
		
		int area = getArea(width, height);
		int circum = getCircum(width, height);
		
		System.out.println(area);
		System.out.println(circum);
	}
	
	public static int getArea(int width, int height) {
		int result = width * height;
		return result;
	}
	
	public static int getCircum(int width, int height) {
		int result = (width + height) * 2;
		return result;
	}
	
}
