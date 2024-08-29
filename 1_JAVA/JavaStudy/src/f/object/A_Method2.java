package f.object;

public class A_method2 {

	public static void main(String[] args) {
		System.out.println(adder(123, 444));
		System.out.println(adder(90));
		
		
	}
	//				반환형 메소드이름(매개변수)
	public static int adder(int num1, int num2) {
		int result = num1 + num2;
		return result;
	}
	// 매개변수의 갯수 또는 타입이 다르면 메소드를 구분할 수 있다. -> 메소드 오버로딩
	public static int adder(int num) {
		return num + 10;
	}
	public static int adder(double num) {
		return (int)(num + 10);
	}
}
