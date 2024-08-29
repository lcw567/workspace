package Test01;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;


public class sss {
	public int userAdd(String id, String password, String nickname) {
		String[] checkNickName = us.nickNameRead();
		boolean cid = true;
		boolean cnn = true;
		
		//지금까지 회원가입된 아이디와 닉네임들을 전부 읽어와서 아이디가 중복되었는지 닉네임이 중복되었는지 숫자로 리턴
		for(int i = 0; i < checkNickName.length; i++) {
			if(checkNickName[i] == nickname) cnn = false;
		}
		if(us.userRead(id) != null) {
			cid = false;
		}
		else if(cid == false) {
			return 2;
		}
		if(cid == false) {
			for(int i = 0; i < checkNickName.length; i++) {
				if(checkNickName[i] == nickname) cnn = false;
			}
		}
		
		//닉네임이 겹치는건 새로운 배열이나 세트를 추가해서 모든 데이터 값을 읽고 겹치는게 있으면 return 3;
		else {
			us.userSave(id, password, nickname);
			us.nickNameSave(nickname);
			return 0;
		}
		return 999;
	}
}
