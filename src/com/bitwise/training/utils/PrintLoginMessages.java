package com.bitwise.training.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PrintLoginMessages extends SimpleTagSupport {
	
	@Override
	public void doTag() throws JspException, IOException {
		PageContext pageContext = (PageContext) getJspContext();
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		HttpServletResponse response = (HttpServletResponse) pageContext.getResponse();
		
		Map<String, String> messages = (Map<String, String>) request.getAttribute("messages");
		PrintWriter out = response.getWriter();
		if (messages.size() > 0) {
			out.println(messages.toString());
		}
		
		super.doTag();
	}
	
}
