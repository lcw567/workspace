package test.t240731.object1;

import java.util.ArrayList;
import java.util.HashMap;

public class FarmController {
	private HashMap<Farm, Integer> hMap;
	private ArrayList<Farm> list;
	
	public FarmController() {
		super();
		this.hMap = new HashMap<>();
		this.list = new ArrayList<>();
	}

	public boolean addNewKind(Farm f, int amount) {
		if(hMap.containsKey(f)) { //f라는 키로 데이터가 존재한다면 -> 추가불가
			return false;
		}else { // 추가가능
			hMap.put(f, amount);
			return true;
		}
	}
	
	public boolean removeKind(Farm f) {
		if (hMap.containsKey(f)) { //f라는 키 데이터(FarmMenu클래스에서 입력받음)
			hMap.remove(f);
			return true;
		} else {
			return false;
		}
	}
	
	public boolean changeAmount(Farm f, int amount) {
		if(hMap.containsKey(f)) {
			hMap.replace(f, amount);
			return true;
		}
		return true;
	}
	
	public HashMap<Farm, Integer> printFarm() {
		return this.hMap;
	}
	
	public boolean buyFarm(Farm f) {
		Integer amount = hMap.get(f);
		if (amount != null && amount > 0) {
			list.add(f);
			hMap.replace(f, amount - 1);
			return true;
		} else {
			return false;	
		}
		
	}
	public boolean removeFarm(Farm f) {
//		if (list.contains(f)) { 내가 한 코드
//			list.remove(f);
//			return true;
//		} else {
//			return false;
//		}
		Integer amount = hMap.get(f);
		if(amount != null && amount > 0) {
			list.add(f);
			hMap.replace(f,amount - 1);
			return true;
		}else {
			return false;
		}
	}
	public ArrayList<Farm> printBuyFarm() {
		return this.list;
	}
	
}