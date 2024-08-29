package solopractice;

public class HelloWorld2 {
	public static void main(String[] args) {
		System.out.println("Hello World222");
		System.out.println("여기다 쓰면 화면에 나타납니다.");
		
		//대표적인 if문과 for문 연습
		/*int a = 1;
		int b = 2;
		if(a < b) {
			System.out.println("a가 b보다 작습니다.");
		}
		else{
			System.out.println("a가 b보다 같거나 큽니다.");
		}
		
		for(int i = 0; i<=5; i++) {
			for(int j = 0; j <= i; j++) {
				System.out.print("*");
			}
			System.out.println("");
		}*/
		
		for(int i = 2; i <=9; i++) {
			for(int j = 1; j<=9; j++) {
				int sum = i*j;
				System.out.println(i+"x"+j+"="+sum);
			}
		}
	}
}
