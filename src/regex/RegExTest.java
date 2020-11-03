package regex;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class RegExTest {

	public static void main(String[] args) {

		// 정규 표현식 예제1
		Pattern p = Pattern.compile("a*b");	//Pattern 클래스 호출 (*은 반복을 뜻함)
		Matcher m = p.matcher("aaabb");		//Matcher 클래스 호출
		boolean b = m.matches();
		System.out.println(b);
		System.out.println("===============================");
		
		// 정규 표현식 예제2
		String pattern = "^[0-9]$";		//0부터 9까지 한개
//		String pattern = "^[0-9]*$";	//0부터 9까지 여러개
		String value = "1234";
		boolean b2 = Pattern.matches(pattern, value);
		System.out.println(b2);
		
	}

}