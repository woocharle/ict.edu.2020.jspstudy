/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.36
 * Generated at: 2020-07-08 02:22:51 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Jsp06_005f3_005f2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String log = (String)session.getAttribute("log");
	if(log.equals("0")){
      out.write("\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\talert(\"로그인 실패\");\r\n");
      out.write("\t\tlocation.href = \"Jsp06_3_0.jsp\";\r\n");
      out.write("\t</script>\r\n");
      out.write("\t\t\r\n");
      out.write("\t");
}else if(log.equals("1")){
      out.write("\r\n");
      out.write("\t\t<!DOCTYPE html>\r\n");
      out.write("\t\t<html>\r\n");
      out.write("\t\t\t<head>\r\n");
      out.write("\t\t\t\t<meta charset=\"UTF-8\">\r\n");
      out.write("\t\t\t\t<title>세션정보들 부르기.</title>\r\n");
      out.write("\t\t\t\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t\t\t\tfunction add_go(f){\r\n");
      out.write("\t\t\t\t\t\tf.action = \"Jsp06_3_3.jsp\";\r\n");
      out.write("\t\t\t\t\t\tf.submit();\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\tfunction view_go(){\r\n");
      out.write("\t\t\t\t\t\tlocation.href=\"Jsp06_3_4.jsp\";\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\tfunction logout_go(){\r\n");
      out.write("\t\t\t\t\t\tlocation.href=\"Jsp06_3_5.jsp\";\r\n");
      out.write("\t\t\t\t\t}\r\n");
      out.write("\t\t\t\t</script>\r\n");
      out.write("\t\t\t</head>\r\n");
      out.write("\t\t\t<body>\r\n");
      out.write("\t\t\t\t<h2> ");
      out.print(session.getAttribute("id") );
      out.write("님 로그인 성공 </h2>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t\t<h2> 상품 선택 </h2>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t\t<form method=\"post\">\r\n");
      out.write("\t\t\t\t\t<select name =\"fruits\">\r\n");
      out.write("\t\t\t\t\t\t<option>:: 선택하세요 ::</option>\r\n");
      out.write("\t\t\t\t\t\t<option>수박</option>\r\n");
      out.write("\t\t\t\t\t\t<option>메론</option>\r\n");
      out.write("\t\t\t\t\t\t<option>레몬</option>\r\n");
      out.write("\t\t\t\t\t\t<option>사과</option>\r\n");
      out.write("\t\t\t\t\t\t<option>딸기</option>\r\n");
      out.write("\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t\t<input type=\"button\" value=\"장바구니에 추가\" onclick=\"add_go(this.form)\">\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t<hr>\r\n");
      out.write("\t\t\t\t\t<button onclick=\"view_go()\"> 장바구니 보기 </button>\r\n");
      out.write("\t\t\t\t\t<button onclick=\"logout_go()\"> 로그 아웃  </button>\r\n");
      out.write("\t\t\t</body>\r\n");
      out.write("\t\t</html>\r\n");
      out.write("\t");
}
      out.write("\r\n");
      out.write("\t\t\r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}