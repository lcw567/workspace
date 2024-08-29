package test240718.object3;

public class Run {
	
	public void main(String[] args) {
		PhoneController pc = new PhoneController();
		String[] res = pc.method();
		
		for(int i = 0; i < res.length; i++) {
			System.out.println(res[i]);
		}
	}
}
