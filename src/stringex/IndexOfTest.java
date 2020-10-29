package stringex;

public class IndexOfTest {

	public static void main(String[] args) {
		
		// IndexOf() -> 인덱스를 반환 (앞에서 찾음)
		String str = "happy";
		System.out.println(str.indexOf('p'));		//2
		
		// lastIndexOf() -> 인덱스를 반환 (뒤에서 찾음)
		System.out.println(str.lastIndexOf('p'));	//3
		
		// 파일 경로
		String path = "C:\\upload";
		System.out.println(path.indexOf('\\'));		//2
		System.out.println(path.lastIndexOf('\\')); //2

	}

}