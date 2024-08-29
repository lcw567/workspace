package b.operator;

public class Operator {
	/*
	 * 산술연산자
	 * + - * / %
	 * 
	 * * / % > + -
	 * 
	 * 복합 대입 연산자
	 * 산술연산자와 대입연산자를 결합해서 사용하 수 있다.
	 * 
	 * += /= *= %=
	 */
	public static void main(String[] args) {
		
		int a = 5;
		int b = 10;
		int c = (++a)+b;
		int d = c / a;
		int e = c % a;
		int f = e++;
		int g = (--b) + (d--);
		int h = 2;
		// a=6, b=9, c=16, d=1, e=5, f=4, g=11, h=2
		int i = (a++) + b / (--c / f) * (g-- - d) % (++e + h); //12
	}

}
