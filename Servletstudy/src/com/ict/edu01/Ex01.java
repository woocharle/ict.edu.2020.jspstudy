package com.ict.edu01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/kkkkk")
public class Ex01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Ex01() {
        super();
        System.out.println("서블릿 페이지 생성자");
        // init() 메소드 자동으로 호출
    }

	public void init(ServletConfig config) throws ServletException {
		// 생성자 역할을 하는 메소드 
		// 서블릿 객체 초기화 역할, 최초로 한번만 호출된다.
		System.out.println("init()");
		// service() 메소드 자동으로 호출	
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request  : 클라이언트에서 들어온 요청정보를 가지고 있는 변수 
		// response : 클라이언트에서 결과를 보여 줄수 있는 응답정보를 가지고 있는 변수
		
		// 사용자 요청방식에 따라 알맞는 메소드을 자동으로 호출하는 역할을 한다.
		// 요청방식 : post 방식 = body에 정보를 담아서 보내는 방식, 대용량, 내용 안보임, doPost()를 호출
		//            get 방식 = head에 정보를 담아서 보내는 방식, 소용량, 내용 보임, doGet()를 호출
		//            방식 표시하지 않으면 get 방식을 따른다.속도가 빠르다.
		
		System.out.println("service()");
		if(request.getMethod().equalsIgnoreCase("get")) {
			doGet(request, response);
		}else if(request.getMethod().equalsIgnoreCase("post")) {
			doPost(request, response);
		}
	}
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}
	
	//해당 프로젝트를 tomcat에서 내려올 때 사용되는 메소드.
	
	public void destroy() {
		System.out.println("destory()");
	}

}
