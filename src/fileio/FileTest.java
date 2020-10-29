package fileio;

import java.io.File;
import java.io.IOException;

public class FileTest {

	public static void main(String[] args) throws IOException {
		
		File file = new File("c:\\upload\\newFile.txt");
		file.createNewFile();	//실제 파일 생성
		
		System.out.println(file.isFile());
		System.out.println(file.getName());
		System.out.println(file.getPath());
		System.out.println(file.canRead());
		System.out.println(file.canWrite());
		
		file.delete();	//실제 파일 삭제
		
	}

}
