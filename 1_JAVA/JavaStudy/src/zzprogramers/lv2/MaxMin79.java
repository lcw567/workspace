package zzprogramers.lv2;

public class MaxMin79 {

	public static void main(String[] args) {
		String s = "-1 -2 -3 -4";
		String answer = "";
        String[] temp1 = null;
        int min = 999999999, max = -999999999;
		
        for(int i = 0; i < s.length(); i++) {
			temp1 = s.split(" ");
		}
        int[] temp2 = new int[temp1.length];
        for(int i = 0; i < temp1.length; i++) {
        	temp2[i] = Integer.parseInt(temp1[i]);
        }
		for(int i = 0; i < temp1.length; i++) {
			if(temp2[i] < min) min = temp2[i];
			if(temp2[i] > max) max = temp2[i];
		}
		
		answer += min + " ";
		answer += max + "";
		System.out.println(answer);
	}

}
