package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SearchBox_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Heart.jsp");
  }

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
      out.write("            .search-box-wrapper {\n");
      out.write("                position: absolute;\n");
      out.write("                top:15px;\n");
      out.write("                right: 10px;\n");
      out.write("    display: inline-flex;\n");
      out.write("    font-size: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search-box-input {\n");
      out.write("    font-size: inherit;\n");
      out.write("    border: 0.2em solid thistle;\n");
      out.write("    border-radius: 0.5em 0 0 0.5em;\n");
      out.write("    padding: 0.2em 0.5em;\n");
      out.write("    outline: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search-box-input:hover,\n");
      out.write(".search-box-input:focus {\n");
      out.write("    border-color: thistle;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search-box-button {\n");
      out.write("    font-size: inherit;\n");
      out.write("    border: 0.2em solid thistle;\n");
      out.write("    border-radius: 0 0.5em 0.5em 0;\n");
      out.write("    background-color: thistle;\n");
      out.write("    border-left: 0;\n");
      out.write("    padding: 0 0.75em;\n");
      out.write("    color: white;\n");
      out.write("    font-weight: bold;\n");
      out.write("    outline: 0;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".search-box-button:hover,\n");
      out.write(".search-box-button:focus {\n");
      out.write("    border-color: thistle;\n");
      out.write("    background-color: thistle;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#save{\n");
      out.write("    position: absolute;\n");
      out.write("    top: 0px;\n");
      out.write("    right: -55px;\n");
      out.write("    color: red;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#bag{\n");
      out.write("    position: absolute;\n");
      out.write("    top:0px;\n");
      out.write("    right: -110px;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"search-box-wrapper\">\n");
      out.write("            <input type=\"text\" placeholder=\"Search...\" class=\"search-box-input\">\n");
      out.write("            <button class=\"search-box-button\">&#128269;</button>\n");
      out.write("            <div>\n");
      out.write("                <a href=\"Wishlist.jsp\">");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <style>\n");
      out.write("            .heart {\n");
      out.write("  width: 100px;\n");
      out.write("  height: 100px;\n");
      out.write("  position: absolute;\n");
      out.write("  left: 350px;\n");
      out.write("  top: 50%;\n");
      out.write("  transform: translate(-50%, -50%);\n");
      out.write("  background: url(https://cssanimation.rocks/images/posts/steps/heart.png) no-repeat;\n");
      out.write("  background-position: 0 0;\n");
      out.write("  cursor: pointer;\n");
      out.write("  animation: fave-heart 1s steps(28);\n");
      out.write("}\n");
      out.write(".heart:hover {\n");
      out.write("  background-position: -2800px 0;\n");
      out.write("  transition: background 1s steps(28);\n");
      out.write("}\n");
      out.write("@keyframes fave-heart {\n");
      out.write("  0% {\n");
      out.write("    background-position: 0 0;\n");
      out.write("  }\n");
      out.write("  100% {\n");
      out.write("    background-position: -2800px 0;\n");
      out.write("  }\n");
      out.write("}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"heart\"></div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("</a>\n");
      out.write("            </div>\n");
      out.write("            <a href=\"CartTry.jsp\"><i id=\"bag\" class=\"fa fa-shopping-bag\" style=\"font-size:36px;\"></i></a>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
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
