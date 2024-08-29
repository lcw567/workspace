package l.io.ex1;

import java.io.File;
import java.io.IOException;

public class Run2 {
	public static void main(String[] args){
		
		//1. 경로지정을 딱히 하지 않고 파일 생성하기
		File f1 = new File("test.txt");
		//2. 존재하는 폴더에 파일 생성
		File f2 = new File("D:\\test2.txt");
		//3. 존재하지 않는 경로에 파일 생성
		File f3 = new File("D:\\tmp\\test.txt");
		
		try {
			
			
			f1.createNewFile(); //createNewFile을 하면 실제 파일이 만들어짐.
			f2.createNewFile();
			f3.createNewFile(); //존재하지 않는 경로로 생성시 예외발생 ->IOException
			
			//3. 폴더먼저 만들고 파일 만들어지게 하는 방법
			File tmpFolder = new File("D:\\tmp");
			tmpFolder.mkdir();//폴더를 만듦.
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
