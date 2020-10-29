package stringex;

public class SubstringTest {

	public static void main(String[] args) {
		
		// substring(int beginIndex) : 시작인덱스부터 끝까지 추출
		String str = "unhaapy";
		String str2 = str.substring(2);
		System.out.println(str2);
		
		// substring(int begin, int end) : 시작부터 (끝-1)까지 문자열 추출
		String word = "hamburger";
		String word2 = word.substring(4, 8);
		System.out.println(word2);
		
		// lastIndexOf()와 함께 사용
		String path = "C:\\upload";
		String result = path.substring(path.lastIndexOf('\\') + 1);
		System.out.println(result);	//upload 추출

	}

}