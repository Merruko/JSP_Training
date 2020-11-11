package dbcp;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

@WebServlet("/dbcp")

public class DbcpServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

    public DbcpServlet() {
        super();
    }

	public void init(ServletConfig config) throws ServletException {
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Connection conn = null;
		DataSource ds = null;
		
		try {
				Context initCtx = new InitialContext();
				Context envCtx = (Context) initCtx.lookup("java:/comp/env");
				ds = (DataSource) envCtx.lookup("jdbc/oracle");
			
				conn = ds.getConnection();	// DataSource에서 연결 객체를 얻어옴
				System.out.println("DB 연결 성공");
				
			} catch (NamingException e) {
				e.printStackTrace();
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
	
	public void destroy() {
		
	}
	
}