package solopractice2.test2;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;

public class LotteryController {
	HashSet lottery = new HashSet();
	HashSet win = new HashSet();
	
	public boolean insertObject(Lottery l) {
		return lottery.add(l);
	}
	
	public boolean deleteObject(Lottery l) {
		boolean isRemove = lottery.remove(l);
		if(isRemove && win != null) {
		}
		
		return lottery.remove(l);
	}
	
	public HashSet winObject() {
		if(lottery.size() <4) {
			return null;
		}
		List<Lottery> list = new ArrayList<>();
		list.addAll(lottery);
		
		while(win.size() < 4) {
			int rand = (int) (Math.random() * list.size());
			win.add(list.get(rand));
		}
		return win;
	}
	
	public TreeSet sortedWinObject() {
		return null;
	}
	
	public boolean searchWinner(Lottery l) {
		return true;
	}
	
	

}
