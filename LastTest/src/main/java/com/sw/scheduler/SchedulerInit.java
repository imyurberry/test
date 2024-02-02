package com.sw.scheduler;

import java.text.ParseException;
import javax.servlet.http.HttpServlet;

import org.quartz.JobDetail;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.SchedulerFactory;
import org.quartz.Trigger;
import org.quartz.impl.JobDetailImpl;
import org.quartz.impl.StdSchedulerFactory;
import org.quartz.impl.triggers.CronTriggerImpl;

public class SchedulerInit extends HttpServlet { 

	private static final long serialVersionUID = 1L;
	
	private SchedulerFactory schedulerFactory;  
	private Scheduler scheduler;  
	
	   
	public SchedulerInit() {  
		
		try {  
			schedulerFactory = new StdSchedulerFactory();  
			scheduler = schedulerFactory.getScheduler();  
			JobDetail job1 = new JobDetailImpl("myJob1", "group1", MyJob.class);  
			
			Trigger trigger1 = new CronTriggerImpl("myTrigger1", "group1", "0/20 * * * * ?");  
			
			scheduler.scheduleJob(job1, trigger1);  
			scheduler.start();  
		} catch (SchedulerException e) {  
			e.printStackTrace();  
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}  
}  
