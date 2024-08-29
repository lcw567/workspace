package test240711.object2;

public class Human {
	String name;
	int account;
	
	public Human() {
		super();
	}
	public Human(String name, int account) {
		super();
		this.name = name;
		this.account = account;
	}
	
	public void buy(TV myTV) {
		if(this.account >= myTV.getPrice()) {
			System.out.printf("%s님 구매내역\n",this.name);
			myTV.show();
			account -= myTV.getPrice();
			System.out.printf("남은 잔액 : %d",this.account);
		}
		else System.out.printf("%s님 잔액이 부족하여 구매하실 수 없습니다.",name);
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
}
