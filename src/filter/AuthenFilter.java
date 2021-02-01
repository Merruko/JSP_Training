package filter;

/* 모든 프로젝트에 영향을 끼치는 관계로 모든 필터 자바파일은 주석 처리함 */

/*
import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
*/

public class AuthenFilter /*implements Filter*/ {
	/*
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter 초기화...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		   throws IOException, ServletException {

		System.out.println("Filter 수행...");
				
		String name = request.getParameter("name");
		
		if(name==null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null 입니다.";
			writer.println(message);
			return;
		}
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy( ){
		System.out.println("Filter 해제...");
	}
	*/
}