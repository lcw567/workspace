package solopractice.object.practice7;

import test.t240718.object2.PhoneController;

public class Run {
	public static void main(String[] args) {
		
		PhoneController pc = new PhoneController();
		//method() 호출 후 반환 값을 String 배열에 담고
		String[] results = pc.method();
		
		for(String res : results) {
			System.out.println(res);
		}
		
	}
}
