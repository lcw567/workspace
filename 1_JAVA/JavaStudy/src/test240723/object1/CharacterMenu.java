package test240723.object1;

import java.util.Scanner;

public class CharacterMenu {
	
	public void menu() {
		Scanner sc = new Scanner(System.in);
		CharacterController cc = new CharacterController();
		System.out.print("문자열 : ");
		String str = sc.nextLine();
		
		System.out.printf("'%s'에 포함된 영문자 개수 : %d",str, cc.countAlpha(str));
		try {
			System.out.printf("'%s'에 포함된 영문자 개수 : %d",str, cc.countAlpha(str));
		}
		catch(CharCheckException e)
		{
			System.out.println("문자열에 공백이 포함되어 있습니다.");
		}
		finally {
			sc.close();
			System.out.println("잘종료되었습니다.");
		}
	}
}
