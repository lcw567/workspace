package test.t240704;

public class T_05 {

	public static void main(String[] args) {
//		int[] num = new int[10];
//		
//		for(int i = 0; i < 10; i++) {
//			num[i] = i+1;
//			System.out.printf("%d ",num[i]);
//		}
		int[] num = new int[10];
		
		for(int i = 9; i >= 0; i--) {
			num[i] = i+1;
			System.out.println(num[i]);
		}
	}
}

