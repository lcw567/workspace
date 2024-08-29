package Test01;
import java.util.Scanner;

public class Input {
	/*
	 * 키보드로 값을 입력하는 방법
	 * Scanner를 사용한다.
	 * 
	 * Scanner 이름 = new Scanner(System.in);
	 * 
	 * sc.next() : 사용자가 입력한 값중 공백이 있을 경우 공백 이전까지의 값만 가져온다.
	 * sc.nextLine() : 사용자가 입력한 값중 \n를 포함하는 한 라인을 읽고 \n 버린 나머지 값만 가져온다.
	 * 
	 * sc.nextByte(), sc.nextShort(), sc.nextInt(), sc.nextLong()
	 * sc.nextFloat(), sc.nextDouble() 
	 * 위처럼 정수나 실수를 입력받는 코드를 작성했을 때 \n토근이 함께 들어오기 때문에
	 * sc.nextLine()을 통해서 비워주는 코드를 작성해야 한다.
	 * 
	 * sc.close() // 더이상 Scanner를 사용하지 않겠다.
	 * 이유는 시스템에 부하를 주기 때문에 
	 */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
//		String str1, str2;
//		str1 = sc.next();
//		sc.nextLine(); //버퍼에서 \n을 비워주는 코드
//		str2 = sc.nextLine();
		/*
		 * str1에 Hello World를 입력했을때 st1 = Hello str2 = World 가나온다.
		 * 이유는 버퍼에 str1에서 입력한 Hello World에서 Hello 뒤에 공백이 있어서 공백전까지만 가져옴.
		 * 뒤에 값이 남아서 str2에 남아있는 값이 들어가게 된다.
		 * 이걸 해결하기 위해서는 중간에 sc.nextLine();을 삽입하여 문제를 해결
		 */
		
//		System.out.println("str1입력한 값 : " + str1);
//		System.out.println("str2입력한 값 : " + str2);
		
		System.out.println("==============================");
		String name;
		int age;
		float height;
		
		System.out.print("이름을 입력해 주세요 : ");
		name = sc.next();
		sc.nextLine();
		
		System.out.print("나이를 입력해 주세요 : ");
		age = sc.nextInt();
		sc.nextLine();
		
		System.out.print("키를 입력해 주세요 : ");
		height = sc.nextFloat();
		sc.nextLine();
		
		System.out.println("이름 : " + name);
		System.out.println("나이 : " + age);
		System.out.println("키 : " + height);
	}
}
