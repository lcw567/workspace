package zzprogramers.lv1;

public class Kakaogift {

	public static void main(String[] args) {
		int answer = 0;
		String[] friends = {"muzi", "ryan", "frodo", "neo"};
		String[] gifts = {"muzi frodo", "muzi frodo", "ryan muzi", "ryan muzi", "ryan muzi", "frodo muzi", "frodo ryan", "neo muzi"};
		String[] temp;
        int[] gift_score = new int[friends.length];
        int[][] gift_table = new int[friends.length][friends.length];
        int[] now_gift = new int[friends.length];
        
        //gift_table
        for(int i = 0; i < gifts.length; i++) {
        	temp = gifts[i].split(" ");
        	for(int j = 0; j < friends.length; j++) {
        		for(int k = 0; k < friends.length; k++) {
            		if(friends[j].equals(temp[0])) {
            			if(friends[k].equals(temp[1])) {
            				gift_table[j][k]++;
            			}
            		}
            	}
        		//gift_score
        		if(friends[j].equals(temp[0])) gift_score[j]++;
        		if(friends[j].equals(temp[1])) gift_score[j]--;
        	}
        }
        
        //now_gift
        for(int i = 0; i < friends.length; i++) {
        	for(int j = 0; j < friends.length; j++) {
        		//자기 자신빼기
        		if(i == j) continue;
        		
        		//더 많이 준사람이 받기
        		if(gift_table[i][j] > gift_table[j][i]) {
        			now_gift[i]++;
        		}
        		else if(gift_table[i][j] < gift_table[j][i]) {
        			now_gift[j]++;
        		}
        		//둘다 안줬을때
        		else if(gift_table[i][j] == 0 && gift_table[j][i] == 0) {
        			if(gift_score[i] > gift_score[j]) {
        				now_gift[i]++;
        			}
        			else if(gift_score[i] < gift_score[j]) {
        				now_gift[j]++;
        			}
        		}
        		//선물한 횟수가 같을때
        		else if(gift_table[i][j] == gift_table[j][i]) {
        			if(gift_score[i] > gift_score[j]) {
        				now_gift[i]++;
        			}
        			else if(gift_score[i] < gift_score[j]) {
        				now_gift[j]++;
        			}
        		}
        	}
        }
        //위에서 중복되는 경우가 있으니 /2씩 적용
        for(int i = 0; i < now_gift.length; i++) {
        	now_gift[i] /= 2;
        }
        
        //가장 많이 받아야 하는사람
        for(int i = 0; i < now_gift.length; i++) {
        	if(now_gift[i] > answer) answer = now_gift[i];
        }
        
        System.out.println();
		System.out.print(answer);
	}

}
