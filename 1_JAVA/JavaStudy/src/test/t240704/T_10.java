package test.t240704;

public class T_10 {

	public static void main(String[] args) {
		int[][] arr = new int[4][4];
		
		int count = 16;
		for (int i = 0; i < 4; i++) {
			for (int j = 0; j < 4; j++) {
				arr[i][j] = count;
				count -= 1;
				if (count > 8) System.out.printf("%d ",arr[i][j]); 
				else System.out.printf(" %d ",arr[i][j]);
			}
			System.out.println();
		}
	}

}
