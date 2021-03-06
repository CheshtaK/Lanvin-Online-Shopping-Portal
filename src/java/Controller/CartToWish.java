package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CartToWish extends HttpServlet 
{
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        PrintWriter pw = response.getWriter();
	Connection con;
        Statement st;
	PreparedStatement st1;
	ResultSet rs;	
	
        String Id = request.getParameter("Id");
        String image = null;
        String category = null;
        String brand = null;
        String description = null;
        String nprice = null;
        String oprice = null;
        String size = null;
        
        int no = Integer.parseInt(Id);       
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/OnlineShopping","root","cheshta");
                    
            st = con.createStatement();
            rs = st.executeQuery("select * from Cart where Id ='"+no+"'"); 
            while(rs.next())
            {
                image = rs.getString(1);
                category = rs.getString(2);
                brand = rs.getString(3);
                description = rs.getString(4);
                nprice = rs.getString(5);
                oprice = rs.getString(7);
                size = rs.getString(8);
            }
                 
            st1 = con.prepareStatement("insert into Wishlist values(?,?,?,?,?,?,?,?)");
            st1.setString(1,image);
            st1.setString(2,category);
            st1.setString(3,brand);
            st1.setString(4,description);
            st1.setString(5,nprice);
            st1.setString(6,Id);
            st1.setString(7,oprice);
            st1.setString(8,size);
            
            st.executeUpdate("delete from Cart where Id='"+no+"'");
            
            boolean ctr = st1.execute();
            response.sendRedirect("http://localhost:8080/LanvinF/Cart.jsp");
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
