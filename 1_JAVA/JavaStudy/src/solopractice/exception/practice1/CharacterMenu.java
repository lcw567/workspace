package solopractice.exception.practice1;

import java.util.Scanner;

public class CharacterMenu {
	public void menu() {
		
		CharacterController cc = new CharacterController();
		
		Scanner sc = new Scanner(System.in);
		System.out.print("문자열 : ");
		String s = sc.nextLine();
		
		cc.countAlpha(s);
// 사용자에게 문자열을 입력 받아 CharacterController의 countAlpha()에
// 매개변수로 넘겨주어 반환 값을 출력함
// 이 때 countAlpha()메소드를 호출하는 부분부터 try~catch를 이용하여 예외 처리
	}
}
