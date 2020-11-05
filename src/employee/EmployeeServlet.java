package employee;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Membersublit
 */

@WebServlet("/employee")
public class EmployeeServlet extends HttpServlet {
   private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
    public EmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

   /**
    * @see Servlet#init(ServletConfig)
    */
    
   public void init(ServletConfig config) throws ServletException {
      // TODO Auto-generated method stub
   }

   /**
    * @see Servlet#destroy()
    */
   
   public void destroy() {
      // TODO Auto-generated method stub
   }

   /**
    * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
    */
   
   protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      response.setContentType("text/html; charset=utf-8");
      
      PrintWriter out = response.getWriter();
      
      //회원조회
      EmployeeDAO employeeDAO = new EmployeeDAO();
      ArrayList<Employee> list = employeeDAO.getListAll();
      
      out.println("<html><body>");
      out.println("<table border=1><tr>");
      out.println("<td>회원번호</td><td>비밀번호</td><td>이름</td><td>가입일</td>");
      
      for(Employee employee : list) {
         int id = employee.getCompanyId();
         String pw = employee.getPasswd();
         String name= employee.getName();
         Date joindate = employee.getJoinDate();
         
         out.println("<tr><td>"+id+"</td>< td>"+pw+"</td><td>"+name+"</td><td>"+joindate+"</td><tr>");
     
      }
      
      out.print("</table></body></html>");
      
   }

}