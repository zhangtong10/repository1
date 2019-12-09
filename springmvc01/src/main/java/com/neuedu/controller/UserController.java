package com.neuedu.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

/*	@RequestMapping("reg.do")
	public void m1(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String uname = request.getParameter("username");
		request.setAttribute("user", uname);
		request.getRequestDispatcher("hello.jsp").forward(request, response);
	}*/
	
	
	@RequestMapping("reg.do")
	public void m1(String username,HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		
		request.setAttribute("user", username);
		request.getRequestDispatcher("hello.jsp").forward(request, response);
	}
	
	
	
}
