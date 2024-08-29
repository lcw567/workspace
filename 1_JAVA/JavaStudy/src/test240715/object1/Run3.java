package test240715.object1;

public class Run3 {

	public static void main(String[] args) {
		int[] arr = new int[10];
		int[] cnt = new int[20];
		
		System.out.print("입력 : ");
		for(int i = 0; i < 10; i++) {
			arr[i] = (int)(Math.random() * 19) + 1;
			System.out.printf("%d ",arr[i]);
			cnt[arr[i]-1]++;
		}
		System.out.println();
		System.out.print("입력횟수 : ");
		for(int i = 0; i < 20; i++) {
			System.out.printf("%d ",cnt[i]);
		}
		
		
	}

}
