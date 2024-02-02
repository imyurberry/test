package com.sw.scheduler;

import java.sql.Date;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.sw.service.MemberService;

public class MyJob implements Job {

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		MemberService memberService = new MemberService();
		
		int result = -1;
		try {
			result = memberService.gainAllMembersPoint();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		System.out.println("Job이 실행됨  : " + new Date(System.currentTimeMillis()) + " / " + result + "명에게 포인트 부여(1점).");		
	}
}
