package test.t240708;

public class Test2 {
	/*
	 * 2단에서 5단까지의 구구단의 결과 중 홀수인 것만 출력한다. 단, for문을 이용한다. 
	 */

	public static void main(String[] args) {
				
		for(int i = 2; i <= 5; i++) {
			for(int j = 1; j <= 9; j++) {
				int result = i * j;
				if(result % 2 == 1) { // 결과가 홀수인 경우만 출력
					System.out.println(i + " * " + j + " = " + result);
				}
			}
		}
	}
}