
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

public class RegisterServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter pw = response.getWriter();
	Connection con;
	PreparedStatement st;
	ResultSet rs;
		
	String fname2 = (String)request.getAttribute("fname1");
	String lname2 = (String)request.getAttribute("lname1");
	String mobile2 = (String)request.getAttribute("mobile1");
	String email2 = (String)request.getAttribute("email1");
	String gender2 = (String)request.getAttribute("gender1");
	String uname2 = (String)request.getAttribute("uname1");
	String password2 = (String)request.getAttribute("password1");
	try
	{	
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
            st = con.prepareStatement("insert into Users values(?,?,?,?,?,?,?)");
            st.setString(1,fname2);
            st.setString(2,lname2);
            st.setString(3,mobile2);
            st.setString(4,email2);
            st.setString(5,gender2);
            st.setString(6,uname2);
            st.setString(7,password2);
            int ctr = st.executeUpdate();
	}
        catch(Exception e)
	{
            pw.println(e);
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
