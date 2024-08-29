package solopractice.object.practice7;

public class PhoneController {
	private String[] result = new String[2];
	

	public String[] method() {
		//2개 Phone객체를 저장하기 위한 객체배열 생성
		Phone[] phArr = new Phone [2];
		
		phArr[0] = new GalaxyNote9();
		phArr[1] = new V40();
		
		for(int i=0; i<phArr.length; i++) {
			result[i] = ((SmartPhone)phArr[i]).printInformation();
		//printInformation()은 SmartPhone클래스에 있기 때문에 다운캐스팅하여 result에 넣어준다.
		}
		// 반환 값을 String배열에 담아 반환
		return result;
	}
}
 