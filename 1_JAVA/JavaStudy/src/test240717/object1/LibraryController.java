package test240717.object1;

public class LibraryController {
	private Member mem = null;
	private Book[] blist = new Book[5];
	
	{
		blist[0] = new CookBook("백종원의 집밥", "백종원", "tvN", true);
		blist[1] = new AniBook("한번 더 해요", "미티", "원모어", 19);
		blist[2] = new AniBook("루피의 원피스", "루피", "japan", 12);
		blist[3] = new CookBook("이혜정의 얼마나 맛있게요", "이혜정", "문학", false);
		blist[4] = new CookBook("최현석 날 따라해봐", "최현석", "소금책", true);

	}
	
	public void insertMember(Member mem) {
		this.mem = mem;
	}
	public Member myInfo() {
		return this.mem;
	}
	public Book[] selectAll() {
		Book[] res = new Book[5];
		for(int i = 0; i < blist.length; i++) {
			res[i] = blist[i];
		}
		return res;
	}
	public Book[] searchBook(String keyword) {
		Book[] searchedBook = new Book[5];
		int index = 0;
		for(int i = 0; i < blist.length; i++) {
			if(blist[i].toString().contains(keyword)) {
				searchedBook[index++] = blist[i];
			}
		}
		return searchedBook;
	}
	public int rentBook(int index) {
		int result = 0;
		if(blist[index] instanceof AniBook) {
			result = 1;
		}
		else if(blist[index] instanceof CookBook) {
			result = 2;
		}
		return result;
	}
}
