package filter;
/*
import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
*/
public class InitParamFilter /*implements Filter*/ {
	/*
	private FilterConfig filterConfig = null;

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
		System.out.println("Filter2 초기화...");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
		   throws IOException, ServletException {
		
		System.out.println("Filter2 수행...");
		String id = request.getParameter("id");
		String pwd = request.getParameter("passwd");
				
		String param1 = filterConfig.getInitParameter("param1");
		String param2 = filterConfig.getInitParameter("param2");
		
		String message;
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		
		if(id.equals(param1) && pwd.equals(param2)) {
			message = "로그인 성공했습니다.";
		} else {
			message = "로그인 실패했습니다.";
		}
		writer.println(message);
		
		chain.doFilter(request, response);
	}
	
	@Override
	public void destroy( ){
		System.out.println("Filter2 해제...");
	}
	*/
}