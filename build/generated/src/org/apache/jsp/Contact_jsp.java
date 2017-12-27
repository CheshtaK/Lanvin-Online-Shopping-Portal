package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Contact_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            #p2{\n");
      out.write("                position: relative;\n");
      out.write("                left: 70px;\n");
      out.write("            }\n");
      out.write("            #p3{\n");
      out.write("                position: relative;\n");
      out.write("                left: 70px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            #map {\n");
      out.write("        width: 100%;\n");
      out.write("        height: 400px;\n");
      out.write("        background-color: grey;\n");
      out.write("      }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#ffccff\">\n");
      out.write("<!--        <b>&emsp;&emsp;&emsp;&emsp;Registered Office Address</b>\n");
      out.write("        <p id=\"p2\">\n");
      out.write("            3rd Floor, A Block, <br>\n");
      out.write("            AKRM Tech Park, 7th Mile, <br>\n");
      out.write("            Krishna Industrial Area, <br>\n");
      out.write("            Kalim Gate, <br>\n");
      out.write("            Bangalore – 555058 <br>\n");
      out.write("        </p>\n");
      out.write("        &emsp;\n");
      out.write("        &emsp;\n");
      out.write("        &emsp;\n");
      out.write("        <p id=\"p3\">\n");
      out.write("            Telephone: +91-85-6155599\n");
      out.write("        </p>-->\n");
      out.write("\n");
      out.write("        <h3>My Google Maps Demo</h3>\n");
      out.write("    <div id=\"map\"></div>\n");
      out.write("    </body>\n");
      out.write("    \n");
      out.write("    <script>\n");
      out.write("      function initMap() {\n");
      out.write("        var uluru = {lat: 28.725111,lng: 77.129161};\n");
      out.write("        var map = new google.maps.Map(document.getElementById('map'), {\n");
      out.write("          zoom: 4,\n");
      out.write("          center: uluru\n");
      out.write("        });\n");
      out.write("        var marker = new google.maps.Marker({\n");
      out.write("          position: uluru,\n");
      out.write("          map: map\n");
      out.write("        });\n");
      out.write("      }\n");
      out.write("    </script>\n");
      out.write("    <script async defer\n");
      out.write("    src=\"https://maps.googleapis.com/maps/api/js?key=AIzaSyBU30LXagndeRsm93NUvdWNxFW-OHcAP9c&callback=initMap\">\n");
      out.write("    </script>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
