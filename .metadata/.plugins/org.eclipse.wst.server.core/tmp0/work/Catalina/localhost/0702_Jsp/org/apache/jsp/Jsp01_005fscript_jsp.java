/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.36
 * Generated at: 2020-07-02 08:55:28 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Calendar;

public final class Jsp01_005fscript_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

 int k = 0; 

		int res=0;
		public int add(int su1, int su2){
			return su1 + su2;
		}
	
		public void sub(int su1, int su2){
			res = su1 - su2;
		}

	
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.Calendar");
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
      response.setContentType("text/html; charset=EUC-KR");
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
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\t<head>\r\n");
      out.write("\t\t<meta charset=\"EUC-KR\">\r\n");
      out.write("\t\t<title>html 주석과 jsp 내용 및 주석</title>\r\n");
      out.write("\t</head>\r\n");
      out.write("\t<body>\r\n");
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<h2> 1부터 10까지 출력하기 </h2>\r\n");
      out.write("\t");

		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println("<h3>" + i + "</h3>");
		}
	
	
      out.write("\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t\r\n");
      out.write("\t<h2> 0부터 10까지 출력하고 합도 출력하기 </h2>\r\n");
      out.write("\t");

		int sum = 0;
		out.print("<h3>");
		for(int i = 1; i < 11; i++){
			//System.out.println(i);
			out.println(" " + i + " ");
			sum += i;
		}
		out.print("</h3>");
		out.println("<h3> 합계는 "+ sum + "</h3>");
		
	
      out.write("\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t");
      out.write('\r');
      out.write('\n');
      out.write('	');

		for(int i = 0; i < 11; i++){
			k += i;
		}
	
      out.write("\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<p> 결과는 ");
      out.print(k );
      out.write(" </p>\r\n");
      out.write("\t\r\n");
      out.write("\t");
      out.write('\r');
      out.write('\n');
      out.write('	');
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<p> 7 + 5 = ");
      out.print(add(7,5)  );
      out.write("</p>\r\n");
      out.write("\t");
sub(7, 5); 
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t<p> 7 - 5 = ");
      out.print(res  );
      out.write("</p>\r\n");
      out.write("\t\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t<h2> 오늘 날짜와 운수 출력하기 </h2>\r\n");
      out.write("\t");

		Calendar now = Calendar.getInstance();
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;
		int day = now.get(Calendar.DATE);
		int luck = (int)(Math.random()*101);
	
	
      out.write("\r\n");
      out.write("\t<h3> 오늘 날짜 </h3>\r\n");
      out.write("\t<p> ");
      out.print(year );
      out.write(' ');
      out.write('년');
      out.write(' ');
      out.print( month );
      out.write(' ');
      out.write('월');
      out.write(' ');
      out.print( day );
      out.write("일 </p>\r\n");
      out.write("\t<h3> 오늘의 운세 </h3>\t\r\n");
      out.write("\t<p> 너의 운수는 ");
      out.print(luck );
      out.write(" %입니다. </p>\r\n");
      out.write("\r\n");
      out.write("\t</body>\r\n");
      out.write("\t\r\n");
      out.write("</html>");
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
