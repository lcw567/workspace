package d.loop;

public class E_continue {
	/*
	 * continue : 반복문 안에 기술되는 구문
	 * 				continue; 코드를 실행시 그 뒤의 코드를 실행하지 않고 곧바로 다시 반복문의 상단으로 이동
	 * 
	 */
	public static void main(String[] args) {
		/*
		 * 1부터 100까지의 총 합계
		 * 단, 6의 배수값은 빼고
		 */
		
		int total = 0;
		for (int i = 1; i < 101; i++) {
			if (i % 6 ==0) continue;
			total += i;
		}
		System.out.println(total);

	}

}
