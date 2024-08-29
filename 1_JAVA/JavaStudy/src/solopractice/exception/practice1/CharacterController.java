package solopractice.exception.practice1;

import java.io.IOException;

public class CharacterController {
	// 기본 생성자
	public int countAlpha(String s) throws CharCheckException {

		int count = 0;
		for (int i = 0; i < s.length(); i++) {
			char c = s.charAt(i);
			if (c >= 65) {
				count++;
			}	
			// 매개변수로 들어온 값에 있는 영문자를 세어 반환
			// 문자열에 공백이 있다면 CharCheckException발생, 에러 메시지는 출력 값 참고
		}
		//2. throws : 여기서 예외를 처리하지 않고 현재 이 메소드를 호출한 곳으로 예외 처리를 떠넘기겠다.
		System.out.println("입력 : ");
		
		return 0;
	}
}