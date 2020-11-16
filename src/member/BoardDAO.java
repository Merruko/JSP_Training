package member;

import java.sql.Connection;
import java.sql.Date;	
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO {
	
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	private static String url = "jdbc:oracle:thin:@localhost:1521:orcl";
	private static String user = "HR";
	private static String pwd = "1234";
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	ResultSet rs = null;
	DataSource ds = null;
	
	// DB 연결
	private void connDB() {
		try {
			Context initCtx = new InitialContext();
			Context envCtx = (Context)initCtx.lookup("java:/comp/env");
			ds = (DataSource)envCtx.lookup("jdbc/oracle");
			
			conn = ds.getConnection();
			System.out.println("DB 연결 성공!!");
		} catch (NamingException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
			/* try {
				Class.forName(driver);
				conn = DriverManager.getConnection(url,user,pwd);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
			e.printStackTrace();
			} */
	}
	
	// DB 연결 종료 
	private void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	// 새글 추가  
	public int writing(String title, String content, String memberId) {
		connDB();
		String sql = "INSERT INTO t_board(bno, title, content, regDate, memberId) VALUES (my_seql.NEXTVAL, ?, ?, SYSDATE, ?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, title);
			pstmt.setString(2, content);
			pstmt.setString(3, memberId);
			pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return -1;
		}
	
	// 글 목록 조회
	public ArrayList<Board> getListAll(){
		ArrayList<Board> list = new ArrayList<>();
		connDB();
		String sql = "SELECT * FROM t_board ORDER BY bno";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				int bno = rs.getInt("bno");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Date regDate = rs.getDate("regDate");
				String memberId = rs.getString("memberId");
				
				Board board = new Board();
				board.setBno(bno);
				board.setTitle(title);
				board.setContent(content);
				board.setRegDate(regDate);
				board.setMemberId(memberId);
				list.add(board);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return list;
	}
	
	// 글 상세 보기
	public Board getDB(int no) {
		connDB();
		Board board = new Board();
		String sql = "SELECT * FROM t_board WHERE bno = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
			board.setBno(rs.getInt("bno"));
			board.setTitle(rs.getString("title"));
			board.setContent(rs.getString("content"));
			board.setRegDate(rs.getDate("regDate"));
			board.setMemberId(rs.getString("memberId"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return board;
	}
}