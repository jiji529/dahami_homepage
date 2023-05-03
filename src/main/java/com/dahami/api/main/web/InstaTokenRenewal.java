package com.dahami.api.main.web;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class InstaTokenRenewal implements InitializingBean, DisposableBean {
	
	public static List<Thread> ThreadList = new ArrayList<Thread>();
	
	@Autowired
	InstaTokenRenewalThread itrt;
	
	@PostConstruct
    public void init() {
		try {
			System.err.println("PostConstruct annotation으로 빈이 완전히 생성된 후에 한 번 수행될 메서드에 붙입니다.");
			if(!itrt.isAlive()) {
				itrt.setName("InstaTokenRenewalThread");
				itrt.start();				
				ThreadList.add(itrt);					
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
    }	
    
	@Override
    public void destroy() {
    	try {
    		System.err.println("DisposableBean 인터페이스 구현 메서드입니다. TestService 'Bean'이 소멸될 때 마다 호출되는 메서드입니다");    		
            while(ThreadList.size() > 0) {          
            	Thread thread = ThreadList.remove(0);
            	thread.interrupt();            	
            }
            System.err.println("InstaTokenRenewalThread Completely Closed");
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    }
    	
	// 다른 클래스에서 ThreadList를 불러오기 위해 만든 메소드
	public List<Thread> getThreadList() {
		return ThreadList;
	}
	
	@Override
	public void afterPropertiesSet() throws Exception {}
}
