package test240718.object3;

public class PhoneController {
	private String[] result = new String[2];
	
	public String[] method() {
		Phone[] res = new Phone[2];
		
		res[0] = new GalaxyNote9();
		res[1] = new V40();
		
		for(int i = 0; i < res.length; i++) {
			result[i] = ((SmartPhone)res[i]).printInformation();
		}
		return result;
	}
}
