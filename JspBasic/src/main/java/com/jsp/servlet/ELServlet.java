package com.jsp.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import user.User;


@WebServlet("/el/obj")
public class ELServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ELServlet() {
        super();
     
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
//		String id = request.getParameter("id");
//		String pw = request.getParameter("pw");
//		String name = request.getParameter("name");
//		String email = request.getParameter("email");
		
		User user = new User(
				request.getParameter("id"),
				request.getParameter("pw"),
				request.getParameter("name"),
				request.getParameter("email")
				//request를 바로 객체 매개변수 안에 넣으면 변수를 따로 선언하지 않아도 된다. 
				//객체 생성해서 한번에 값 전달
				);
		
			request.getSession().setAttribute("member", user);
			//session을 한번만 쓸꺼면 변수 선언 필요없이 바로 전달하면 된다. 
			response.sendRedirect("/JspBasic/EL/el_obj2.jsp");
	}

}
