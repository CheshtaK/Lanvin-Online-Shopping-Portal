
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

public class LoginServlet extends HttpServlet 
{   
    private int counter;
    
    public void init()
    {
        counter=0;
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter pw = response.getWriter();
        Connection con;
	PreparedStatement st; 
	ResultSet rs;
	
        String usernamex = request.getParameter("username");
	String passwordx = request.getParameter("password");
		
	if((usernamex.equals("Cheshta"))&&(passwordx.equals("cheshta")))
	{
            response.sendRedirect("http://localhost:8080/LanvinF/Product.jsp");
	}
	else
	{
            String username1 = request.getParameter("username");
            String password1 = request.getParameter("password");
            try
            {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
		st = con.prepareStatement("select * from Users where UserName=? and Password=?");
		st.setString(1,username1);
		st.setString(2,password1);
		rs = st.executeQuery();
		counter++;
		if(rs.next())
		{
                    request.setAttribute("username1",username1);
                    request.setAttribute("password1",password1);
                    
                    HttpSession session = request.getSession();
                    session.setAttribute("username",username1);
                    
                    response.sendRedirect("http://localhost:8080/LanvinF/Home.jsp");
		}
		else if(counter==3)
		{
                    Cookie ck = new Cookie("username1","");
                    ck.setMaxAge(0);
                    response.addCookie(ck);
                    pw.println("You have successfully been logged out");
		}
		else
		{	
                    JOptionPane.showMessageDialog(null, "Invalid Password","INVALID", JOptionPane.ERROR_MESSAGE);
                    response.sendRedirect("http://localhost:8080//LanvinF//LoginPage.jsp");
		}
            }
            catch(Exception e)
            {
		System.out.println(e);
            }
	}
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
