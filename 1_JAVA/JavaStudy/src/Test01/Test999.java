package Test01;

public class Test999 {
	public static void main(String[] args) {
		boolean answer = true;
		String s = "(()))(()";
		int l = 0;
		int r = 0;
		int half_l = 0;
		int half_r = 0;
		if(s.length() % 2 == 0) {
			for(int i = 0; i< s.length() / 2; i++) {
				if(s.charAt(i) == '(') r++;
				else l++;
			}
			if(l != r) answer = false;
			for(int i = (int)(s.length() / 2); i< s.length(); i++) {
				if(s.charAt(i) == '(') half_r++;
				else half_l++;
			}
			if(half_l != half_r) answer = false;
			if(s.charAt(0) == ')' || s.charAt(s.length()-1) == '(') answer = false;
		}
		else answer = false;
		int total_l = l + half_l;
		int total_r = r + half_r;
		if(l != r) answer = false;
        
        
        System.out.println(answer);
	}
}