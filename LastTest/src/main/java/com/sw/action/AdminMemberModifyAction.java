package com.sw.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sw.dto.MemberDto;
import com.sw.service.MemberService;

public class AdminMemberModifyAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		MemberService memberService = new MemberService();
		String id = request.getParameter("id");
		MemberDto dto = memberService.getMemberById(id);
		
		request.setAttribute("member", dto);
		request.getRequestDispatcher("admin_member_modify.jsp").forward(request, response);
	}
}
