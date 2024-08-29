package a.basic;

public class Variable {
	// 변수 : 값을 기록하고 사용하기위한 공간. 값을 보관하거나, 보관된 값을 가져와 사용할 수 있다.
	// [표현법] 자료형 변수이름;
	// 자료형 : 변수의 크기 및 모양을 지정해주는 부분
	// 변수이름 : 변수를 식별하기위해 붙여주는 이름
	public static void main(String[] args) {
		//정수형 변수 num을 선언
		int num;
		//정수형 변수 num에 10이라는 값을 대입해라
		num = 10;
		System.out.println(num);
		
		//참과 거짓을 표현하는 자료형으로 isTrue라는 이름의 변수를 만들어줘.
		boolean isTrue;
		isTrue = true;
		isTrue = false;
		System.out.println(isTrue);
		//실수형(소수점 6자리까지) 자료형을 저장할 수 있는 num2라는 이름의 변수를 만들어줘.
		float num2;
		num2 = 3.14f;
		System.out.println(num2);
		
		//정수 자료형
		//byte(1), short(2), int(4), long(8)
		//모두 정수를 저장하는 자료형, 각 자료형마다 표현할 수 있는 수의 범위가 다르다.
		
		byte by = 10;
		short sh = 10;
		int in = 10;
		long lo =10;
		
		System.out.println("정수 자료형");
		System.out.println(by);
		System.out.println(sh);
		System.out.println(in);
		System.out.println(lo);
		
		//실수 자료형
		//float(4), double(8)
		//실수를 저장하는 자료형으로 float보다 double이 더 정밀한 수를 표현할 수 있다.
		
		float fl = 4.24f;
		double dou = 4.24;
		System.out.println("실수 자료형");
		System.out.println(fl + dou);
		
		char a ='a';
		System.out.println(a);
		
		String str = new String("s");
		System.out.println(str);
		
		System.out.println(" ~!@#$%^&*()_+ ");
		
	}
}
