package E.array;

import java.util.Scanner;

public class A_array3 {
	public static void main(String[] args) {
		// 1. 크기가 10인 정수형 배열 생성후
		
		// 2. 반복문을 통해서 0번 인덱스부터 마지막 인덱스까지 모든 값을 1로 초기화
		
		// 3. 반복문을 통해서 0 ~ 마지막 인덱스까지 전부 출력
		
//		int[] arr = new int[10];
//		for (int i = 0; i < 10; i++) {
//			arr[i] = 1;
//			System.out.printf("%d ",arr[i]);
//		}
		
		/*
		 * 4. 사용자에게 배열의 길이를 입력받아 해당크기의 문자열배열을 생성해라.
		 * 길이 입력 : x
		 */
		
//		int num;
		Scanner sc = new Scanner(System.in);
//		System.out.print("배열 수 : ");
//		num = sc.nextInt();
//		int[] ar;
//		ar = new int[num];
//		
//		/*
//		 * 2. 반복문을 활용해서 매번 사용자에게 과일명을 입력받아 그값을 stArr에 대입(0~마지막 인덱스)
//		 * 좋아하는 과일을 입력 : 바나나(반복)
//		 */
//		String str1;
//		String stArr[];
//		stArr = new String[num];
//		for (int i = 0; i < num; i++) {
//			str1 = sc.next();
//			stArr[i] = str1;
//		}
//		System.out.println("===============");
//		for (int i = 0; i < num; i++) {
//			System.out.println(stArr[i]);
//		}
		
		
		//6. 반복문을 이용해서 stArr에 있는 모든 값을 출력
		
		//사용자에게 문자열 하나 입력받은 후
		//각각의 인덱스에 있는 문자들을 char배열에 옮겨담기
		
//		String str;
//		char str2[];
//		str = sc.next();
//		str2 = new char[str.length()];
//		for (int i = 0; i < str.length(); i++) {
//			str2[i] = str.charAt(i);
//		}
//		System.out.println(str2);
		
		//사용자에게 배열의 길이를 입력받아 해당 길이의 정수형배열 arr을 생성한다.
		//arr에 모든 인덱스값에 1~100사이의 랜덤값을 할당해주고
		//arr에 모든 값을 출력한 후
		// 이중 짝수인 값의 총 합을 구해서 출력
		
		int num;
		System.out.print("배열의 길이 : ");
		num = sc.nextInt();
		int arr[];
		arr = new int[num];
		int total = 0;
		
		System.out.printf("%d의 랜덤한값 : ", num);
		for (int i = 0; i < num; i++) {
			arr[i] = (int)(Math.random() * 100) + 1;
			System.out.printf("%d ", arr[i]);
			if (arr[i] % 2 == 0) total += arr[i];
		}
		System.out.println();
		System.out.printf("짝수인 값의 합 : %d", total);
	}
}
