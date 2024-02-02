package com.sw.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sw.service.MemberService;

public class LoginCheckAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		String retUrl = "";
		
		int result = MemberService.login(id, pw); // 1 : success, 0 : failed.
		
		if("admin".equals(id) && result==1) {
			retUrl = "admin_member_list.jsp";
			request.setAttribute("member_list", MemberService.getMemberList());
		} else if(result==1) {
			retUrl = "mainpage.jsp";
			request.setAttribute("member", MemberService.getMemberById(id));
		} else { // in case of result == 0
			request.setAttribute("msg", "아이디/비밀번호를 다시 확인하세요.");
			retUrl = "login.jsp";
		}
		
		if(result==1) session.setAttribute("loginId", id);
		
		System.out.println("retUrl : " + retUrl);
		request.getRequestDispatcher(retUrl).forward(request, response);	
	}

}
