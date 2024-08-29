package test240711.object3;

import java.util.Scanner;

public class Asd {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Book[] bookArr = new Book[10];
		int menu;
		while(menu != 9) {
			System.out.println("===========도서관리 프로그램===========");
			System.out.println("1. 도서 등록");
			System.out.println("2. 등록 도서 목록");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 삭제");
			System.out.println("9. 종료");
			System.out.print("메뉴 선택 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:	
				for(int i = 0; i < 10; i++) {
					if(bookArr[i].getTitle() == null) {
						int booknum;
						String title, genre, author;
						System.out.print("제목 : ");
						title = sc.next();
						bookArr[i].setTitle(title);
						System.out.print("장르 : ");
						genre = sc.next();
						bookArr[i].setGenre(genre);
						System.out.print("저자 : ");
						author = sc.next();
						bookArr[i].setAuthor(author);
						System.out.print("책번 : ");
						booknum = sc.nextInt();
						bookArr[i].setBooknum(booknum);
					}
					if(bookArr[i] != null) System.out.println("full");
				}
				break;
			case 2:
				System.out.println("==========도서 목록==========");
				for(int i = 0; i < 10; i++) {
					System.out.printf("%d. %s",i ,bookArr[i].getTitle());
				}
				break;
			case 3:
				System.out.println("==========도서 찾기==========");
				System.out.print("도서 제목 : ");
				String find;
				find = sc.next();
				for(int i = 0; i < 10; i++) {
					if(bookArr[i].getTitle().equals(find)) {
						System.out.println("제목 : " + bookArr[i].getTitle());
						System.out.println("장르 : " + bookArr[i].getGenre());
						System.out.println("저자 : " + bookArr[i].getAuthor());
						System.out.println("책번 : " + bookArr[i].getBooknum());
					}
				}
				break;
			case 4:
				System.out.println("==========등록 도서목록==========");
				for(int i = 0; i < bookArr.length; i++) {
					if(bookArr[i] == null) {
						break;
					}
					System.out.println(bookArr[i].toString());
				}
				
				System.out.print("삭제할 도서의 번호 입력 : ");
//				int num = sc.nextInt();
//				bookArr[num].setTitle(null);
//				bookArr[num].setGenre(null);
//				bookArr[num].setAuthor(null);
//				bookArr[num].setBooknum(0);
				for(int i = 0; i < bookArr.length; i++) {
					if(bookArr[i] == null) {
						System.out.println("삭제할 도서의 번호를 찾지 못하였습니다.");
						break;
					}
					else if(num == bookArr[i].getNumber()) {
						System.out.println("삭제 데이터 : " + bookArr[i].toString());
						
					}
				}
				System.out.println("삭제 완료");
				break;
			case 9:
				System.out.println("종료");
				break;
			default :
				System.out.println("잘못 입력하셨습니다.");
				break;	
			}
		}
	}

}
