
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

public class ValidationServlet extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter pw = response.getWriter();
	try
	{	
            String fname1 = request.getParameter("fname");
            String lname1 = request.getParameter("lname");
            String mobile1 = request.getParameter("mobile");
            String email1 = request.getParameter("email");
            String gender1 = request.getParameter("gender");
            String uname1 = request.getParameter("uname");
            String password1 = request.getParameter("password");
            String cpassword1 = request.getParameter("cpassword");
			
            if(mobilevalid(mobile1,pw)==true)
            {
                if(cpasswordvalid(password1,cpassword1,pw)==true)
		{
                    request.setAttribute("cpassword1",cpassword1);
                    request.setAttribute("password1",password1);
                    request.setAttribute("uname1",uname1 );
                    request.setAttribute("gender1",gender1);
                    request.setAttribute("email1",email1);
                    request.setAttribute("mobile1",mobile1);
                    request.setAttribute("lname1",lname1);
                    request.setAttribute("fname1",fname1);
                    RequestDispatcher rd = request.getRequestDispatcher("/RegisterServlet");
                    rd.include(request,response);
                    response.sendRedirect("http://localhost:8080/LanvinF/LoginPage.jsp");
		}
		else
		{	
                    JOptionPane.showMessageDialog(null, "<html>Passwords don't match.<br>Please confirm the password again</html>","NO MATCH", JOptionPane.ERROR_MESSAGE);
                    response.sendRedirect("http://localhost:8080/LanvinF/RegistrationPage.jsp");
		}
            }
            else
            {
		JOptionPane.showMessageDialog(null, "Enter a valid mobile number","INVALID", JOptionPane.ERROR_MESSAGE);
		response.sendRedirect("http://localhost:8080/LanvinF/RegistrationPage.jsp");
            }
        }
	catch(Exception e)
	{
            System.out.println(e);
        }
    }
	
    public static boolean mobilevalid(String mobile1,PrintWriter pw)
    {
        if(mobile1.length()==10)
            return true;
	return false;
    }
	
    public static boolean cpasswordvalid(String password1, String cpassword1, PrintWriter pw)
    {
	if(password1.equals(cpassword1)==true)
            return true;
	return false;
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
