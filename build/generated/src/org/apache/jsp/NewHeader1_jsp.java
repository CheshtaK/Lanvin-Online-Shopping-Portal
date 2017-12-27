package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class NewHeader1_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://www.w3schools.com/w3css/4/w3.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Roboto\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://fonts.googleapis.com/css?family=Montserrat\">\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\n");
      out.write("<style>\n");
      out.write(".w3-sidebar a {font-family: \"Roboto\", sans-serif}\n");
      out.write("#heading{\n");
      out.write("    position: absolute;\n");
      out.write("    top: 25px;\n");
      out.write("    font-family: \"Helvetica\", sans-serif;\n");
      out.write("    text-height: 10px;\n");
      out.write("    color: mediumvioletred;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".w3-sidebar{\n");
      out.write("    position: absolute;\n");
      out.write("    left: 20px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<body class=\"w3-content\" style=\"max-width:1200px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("<nav class=\"w3-sidebar w3-bar-block w3-white w3-collapse w3-top\" style=\"z-index:3;width:250px\" id=\"mySidebar\">\n");
      out.write("  <div class=\"w3-container w3-display-container w3-padding-16\">\n");
      out.write("    <i onclick=\"w3_close()\" class=\"fa fa-remove w3-hide-large w3-button w3-display-topright\"></i>\n");
      out.write("    <h1 id=\"heading\"><b>LANVIN</b></h1>\n");
      out.write("  </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("  <div id=\"menu\" class=\"w3-padding-64 w3-large w3-text-grey\" style=\"font-weight:bold\">\n");
      out.write("    \n");
      out.write("      \n");
      out.write("      <a onclick=\"men()\" href=\"javascript:void(0)\" class=\"w3-button w3-block w3-white w3-left-align\">Men <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </a>\n");
      out.write("      <div id=\"men1\" class=\"w3-bar-block w3-hide w3-padding-large w3-medium\">\n");
      out.write("      <a href=\"Shop.jsp?cat=TS\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>T-Shirts</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=CasualS\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Casual Shirts</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=FormalS\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Formal Shirts</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Sweater\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Sweaters</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Jacket\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Jackets</a>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      \n");
      out.write("      <a onclick=\"women()\" href=\"javascript:void(0)\" class=\"w3-button w3-block w3-white w3-left-align\">Women <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </a>\n");
      out.write("      <div id=\"women1\" class=\"w3-bar-block w3-hide w3-padding-large w3-medium\">\n");
      out.write("      <a href=\"Shop.jsp?cat=KS\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Kurtas & Suits</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=DJ\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Dresses & Jumpsuits</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=JJ\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Jeans & Jeggings</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Shrug\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Shrugs</a>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      \n");
      out.write("      <a onclick=\"kids()\" href=\"javascript:void(0)\" class=\"w3-button w3-block w3-white w3-left-align\">\n");
      out.write("      Kids <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </a>\n");
      out.write("      <div id=\"kids1\" class=\"w3-bar-block w3-hide w3-padding-large w3-medium\">\n");
      out.write("      <a href=\"Shop.jsp?cat=TSK\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>T-Shirts</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Dress\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Dresses</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Indian\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Indian Wear</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Dungarees\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Dungarees</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Jeans\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Jeans & Trousers</a>\n");
      out.write("    </div>\n");
      out.write("    \n");
      out.write("      \n");
      out.write("      <a onclick=\"hnl()\" href=\"javascript:void(0)\" class=\"w3-button w3-block w3-white w3-left-align\">Home&Living <i class=\"fa fa-caret-down\"></i>\n");
      out.write("    </a>\n");
      out.write("    <div id=\"hnl1\" class=\"w3-bar-block w3-hide w3-padding-large w3-medium\">\n");
      out.write("      <a href=\"Shop.jsp?cat=Bed\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Bedsheets</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Towel\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Bath Towels</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Clock\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Clocks</a>\n");
      out.write("      <a href=\"Shop.jsp?cat=Lamp\" class=\"w3-bar-item w3-button\"><i class=\"fa fa-caret-right w3-margin-right\"></i>Lamps</a>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("    \n");
      out.write("    \n");
      out.write("  <a href=\"http://localhost:8080/LanvinF/About.jsp\" class=\"w3-bar-item w3-button w3-padding\">About</a> \n");
      out.write("  <a href=\"http://localhost:8080/LanvinF/Contact.jsp\" class=\"w3-bar-item w3-button w3-padding\">Contact</a> \n");
      out.write("  <a href=\"LoginPage.jsp\" class=\"w3-bar-item w3-button w3-padding\">Log In</a>\n");
      out.write("  <a href=\"RegistrationPage.jsp\" class=\"w3-bar-item w3-button w3-padding\">Sign Up</a>\n");
      out.write("</nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("<header class=\"w3-bar w3-top w3-hide-large w3-black w3-xlarge\">\n");
      out.write("  <div class=\"w3-bar-item w3-padding-24 w3-wide\">LANVIN</div>\n");
      out.write("  <a href=\"javascript:void(0)\" class=\"w3-bar-item w3-button w3-padding-24 w3-right\" onclick=\"w3_open()\"><i class=\"fa fa-bars\"></i></a>\n");
      out.write("</header>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"w3-overlay w3-hide-large\" onclick=\"w3_close()\" style=\"cursor:pointer\" title=\"close side menu\" id=\"myOverlay\"></div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<script>\n");
      out.write("function men() {\n");
      out.write("    var x = document.getElementById(\"men1\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else {\n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("function women() {\n");
      out.write("    var x = document.getElementById(\"women1\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else {\n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("function kids() {\n");
      out.write("    var x = document.getElementById(\"kids1\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else {\n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("function hnl() {\n");
      out.write("    var x = document.getElementById(\"hnl1\");\n");
      out.write("    if (x.className.indexOf(\"w3-show\") == -1) {\n");
      out.write("        x.className += \" w3-show\";\n");
      out.write("    } else {\n");
      out.write("        x.className = x.className.replace(\" w3-show\", \"\");\n");
      out.write("    }\n");
      out.write("}\n");
      out.write("\n");
      out.write("// Click on the \"Jeans\" link on page load to open the accordion for demo purposes\n");
      out.write("document.getElementById(\"myBtn\").click();\n");
      out.write("\n");
      out.write("\n");
      out.write("// Script to open and close sidebar\n");
      out.write("function w3_open() {\n");
      out.write("    document.getElementById(\"mySidebar\").style.display = \"block\";\n");
      out.write("    document.getElementById(\"myOverlay\").style.display = \"block\";\n");
      out.write("}\n");
      out.write(" \n");
      out.write("function w3_close() {\n");
      out.write("    document.getElementById(\"mySidebar\").style.display = \"none\";\n");
      out.write("    document.getElementById(\"myOverlay\").style.display = \"none\";\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
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
