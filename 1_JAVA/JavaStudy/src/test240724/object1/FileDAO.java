package test240724.object1;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class FileDAO {
	public boolean checkName(String file) {
		
	}
	public void fileSave(String file, String s) {
		try (BufferedWriter bw = new BufferedWriter(new FileWriter(file))){
			bw.write(s);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public StringBuilder fileOpen(String file) {
		
	}
	public void fileEdit(String file, String s) {
		
	}
}
