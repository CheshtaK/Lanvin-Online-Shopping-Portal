package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class About_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("            #p1{\n");
      out.write("                position: relative;\n");
      out.write("                left: 30px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .about{\n");
      out.write("                height: auto;\n");
      out.write("                width: 950px;\n");
      out.write("                position: relative;\n");
      out.write("                left: 180px;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title></title>\n");
      out.write("    </head>\n");
      out.write("    <body bgcolor=\"#ffccff\">\n");
      out.write("        <div class=\"about\">\n");
      out.write("            <b>ONLINE SHOPPING MADE EASY AT <a style=\"text-decoration: none;color:#fff\" href=\"Home.jsp\">LANVIN</a></b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("We have all planned our trips to the clothing store in advance, vividly dreaming about what we would buy once there. Some \n");
      out.write("of us even have sales assistants for friends and have often asked them for a favour or two during peak shopping season.\n");
      out.write("But what we can all admit to is that we have always wished it was easier than to go down to the store in dense traffic, \n");
      out.write("navigating through throngs of fashionistas, all vying for the same trendy clothing items, waiting in line to try on our \n");
      out.write("top picks in the trial rooms, etc.\n");
      out.write("        </p>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("Well, you can do all this from the comfort of your home while enjoying many online shopping benefits, right from \n");
      out.write("irresistible deals and discounts to a robust user interface with many shopping filters (based on various categories of \n");
      out.write("clothing, brands, budget, etc.). to make your shopping experience truly hassle free. Lanvin, the place to be when it comes\n");
      out.write("to the latest in fashion, offers you fine, high-quality merchandise – go ahead and indulge in a bit of shopping online \n");
      out.write("for men, women and kids. You can even pick up gift sets for your near and dear ones while being absolutely certain that it\n");
      out.write("will put a smile on their faces. Go ahead and shop till you drop on India’s largest online fashion store.\n");
      out.write("        </p>\n");
      out.write("        <b>ALL THE LATEST TRENDS UNDER ONE ROOF</b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("Haven’t we all wondered where we could get our favourite celebrity or fashion icons’ latest looks? Sure, they have an \n");
      out.write("entourage of personal stylists, makeup artists and hair dressers to look the way they do but with Lanvin, you will \n");
      out.write("understand that you do not have to spend a fortune to look great. There is something for the whole family and you can \n");
      out.write("engage in online shopping for women, men and kids. Choose from the widest spread of western wear, traditional clothing, \n");
      out.write("casual wear, lounge or sleep wear, sports or active wear, formal wear, lingerie and more in the clothing section. \n");
      out.write("Footwear of numerous kinds, watches, sunglasses, bags, jewellery, scarves and stoles, beauty, skin and hair care products,\n");
      out.write("fragrances, and so much more are just some of the other items you can grab hold of here.\n");
      out.write("        </p>\n");
      out.write("<b>Online shopping for Kids</b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("We, at Lanvin, have all that you need to spruce up your fashion quotient of your Kids. They get to look extra cute with \n");
      out.write("clothing by top brands like UFO, Lilliput, Cutecumber, Chhota Bheem, WROGN for Tweens, Sweet Angel, Spiderman, etc.\n");
      out.write("        </p>\n");
      out.write("<b>Convenient shopping for Home Decor & Furnishing</b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("Shop online for Home décor and furnishing, including bedding, rugs and mats, kitchenware, curtains, lamps, paintings, \n");
      out.write("and more. This will help you set up your home the way you envisioned, conveniently from your home.\n");
      out.write("        </p>\n");
      out.write("        <b>Shop online for your Favourite International Brands & Celebrity brands</b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("Whether it is clothing, footwear, jewelry, accessories and cosmetics, we showcase the most elite brands in the world. \n");
      out.write("Tommy Hilfiger, Forever 21, Vero Moda, FabAlley, All About You by Deepika Padukone, Adidas, Puma, Reebok, Burberry, \n");
      out.write("French Connection, Calvin Klein, HRX by Hrithik Roshan, Arrow, United Colors of Benetton, Esprit, Bombay Dyeing, \n");
      out.write("Forest Essentials, L’Oréal Paris, M.A.C, Bobbi Brown, and thousands of other national and international, budget-friendly \n");
      out.write("as well as luxury brands await you with products that you just cannot turn down.\n");
      out.write("        </p>\n");
      out.write("        <b>Avail added online shopping benefits</b>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("Make sure to use our card or cash on delivery option, easy 30-day returns policy, try and buy option (for select products),\n");
      out.write("and other customer-friendly features. A comprehensive sizing guide and detailed product descriptions coupled with \n");
      out.write("high-resolution product shots will give you all the information to make the right buying decision.\n");
      out.write("        </p>\n");
      out.write("        <p id=\"p1\">\n");
      out.write("You just need to pay for the product, while we ensure free shipping on almost everything. You can also buy gifts for your\n");
      out.write("loved ones and avail our special gift-wrap facility at a nominal cost on Lanvin.\n");
      out.write("        </p>\n");
      out.write("\n");
      out.write("Give your wardrobe an upgrade with stylish clothing – head to Lanvin.com for a great online fashion shopping experience \n");
      out.write("now!\n");
      out.write("        </div>\n");
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
