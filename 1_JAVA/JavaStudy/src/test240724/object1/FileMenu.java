package test240724.object1;

import java.io.File;
import java.util.Scanner;

public class FileMenu {
	private Scanner sc = new Scanner(System.in);
	private FileController fc = new FileController();
	
	public void mainMenu() {
		int menu = 0;
		while(menu != 9) {
			System.out.println("***** My Note *****");
			System.out.println("1. 노트 새로 만들기");
			System.out.println("2. 노트 열기");
			System.out.println("3. 노트 열어서 수정하기");
			System.out.println("9. 끝내기");
			System.out.print("메뉴 번호 : ");
			menu = sc.nextInt();
			switch(menu) {
			case 1:
				fileSave();
				break;
			case 2:
				fileOpen();
				break;
			case 3:
				fileEdit();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				break;
			default:
				System.out.println("잘못 입력하셨습니다.");
				break;
			}
		}
	}
	public void fileSave(){
		StringBuilder sb = new StringBuilder();	//문자열을 다루는 객체(String과 비슷한 역할을 한다.)
		
		while(true) {
			System.out.println("파일에 저장할 내용을 입력하세요");
			System.out.println("ex끝it 이라고 입력하면 종료됩니다.");
			System.out.print("내용 : ");
			String str = sc.nextLine();
			
			if(str.equals("ex끝it")) {
				while(true) {
					System.out.println("저장할 파일 명을 입력해주세요(ex. myFile.txt) : ");
					String fileName = sc.next();
					File f = new File(fileName);
					if(f.exists()) {
						System.out.print("이미 존재하는 파일입니다. 덮어쓰시겠습니까?(y/n)");
						char isPass = sc.next().charAt(0);
						if(isPass == 'y') {
							fc.fileSave(fileName, sb);
							return;
						}
					}
					else {
						fc.fileSave(fileName, sb);
						return;
					}
				}
			}
			sb.append(str);
		}
	}
	public void fileOpen() {
		
	}
	public void fileEdit() {
		
	}
}
