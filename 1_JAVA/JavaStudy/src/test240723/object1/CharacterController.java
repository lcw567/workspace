package test240723.object1;

public class CharacterController {

	public CharacterController() {
		super();
	}
	public int countAlpha(String s) throws CharCheckException{
		int cnt = 0;
		for(int i = 0; i < s.length(); i++) {
			if(s.charAt(i) == ' ') {
				throw new CharCheckException("체크할 문자열 안에 공백이 포함되어 있습니다.");
			}
			else if(64 < s.charAt(i) && s.charAt(i) < 91) cnt++;
			else if(96 < s.charAt(i) && s.charAt(i) < 123) cnt++;
		}
		return cnt;
	}
}
