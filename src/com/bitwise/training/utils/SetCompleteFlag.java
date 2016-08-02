package com.bitwise.training.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SetCompleteFlag extends SimpleTagSupport{
	@Override
	public void doTag() throws JspException, IOException {
		
		super.doTag();
		
		PageContext pageContext = (PageContext) getJspContext();
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		HttpServletResponse response = (HttpServletResponse) pageContext.getResponse();
		HttpSession session = (HttpSession) pageContext.getSession();
		if (request.getSession().getId() != session.getAttribute("session")) {
			response.sendRedirect("login.jsp");
		}
		

		System.out.println("tagsupport chala");;
	}
}
