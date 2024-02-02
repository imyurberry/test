package com.sw.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sw.service.MemberService;

public class AdvertiseClickedAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		MemberService memberService = new MemberService();
		
		String id = "";
		
		if(session.getAttribute("loginId") != null)
		id = (String)(session.getAttribute("loginId"));
		
		int n = 0;
		if(!"".equals(id)) {
			n = (int)(Math.random() * 1000) + 1;
			memberService.gainMemberPoint(id, n);
		}
		
		request.setAttribute("url", "http://koreaisacademy.com");
		request.setAttribute("member", memberService.getMemberById(id));
		
		request.setAttribute("score", n);
		request.getRequestDispatcher("Controller?command=mainpage").forward(request, response);		
	}

}
