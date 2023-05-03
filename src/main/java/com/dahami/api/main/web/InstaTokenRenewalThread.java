package com.dahami.api.main.web;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.dahami.api.main.JsonReader;
import com.dahami.api.main.service.MainService;
import com.dahami.api.main.service.vo.InstaTokenVO;

@Service
public class InstaTokenRenewalThread extends Thread {
	
	private List<Thread> ThreadList;
	private List<InstaTokenVO> instaTokenData;
	
	@Resource(name="suvService")
	private MainService mainService;
	
	public void run() {
		// 초기 인스타 토큰 데이터 가져오기
		ThreadList = new InstaTokenRenewal().getThreadList();
		instaTokenData = mainService.getInstaTokenData();		
				
		while(ThreadList.size() > 0) {
			try {														
				Date expire = new SimpleDateFormat("yyyy-MM-dd").parse(instaTokenData.get(0).getExpire());
				Date today = new SimpleDateFormat("yyyy-MM-dd").parse(getNowTime());
				
				// 만료 1주일 전이 되면 갱신한다.
		        Calendar cal = calDate(expire,-7);
		        
		        if(today.after(cal.getTime())) {		        	
		        	// 갱신은 아래의 과정으로 진행한다.
					JsonReader jsonReader = new JsonReader();
					String result = jsonReader.callURL("https://graph.instagram.com/refresh_access_token?grant_type=ig_refresh_token&access_token="+instaTokenData.get(0).getToken()+"");				
		        	
		        	// JSONParser로 JSONObject로 변환
					JSONParser parser = new JSONParser();
					JSONObject jsonObject = (JSONObject) parser.parse(result);

					InstaTokenVO itVO = new InstaTokenVO();
					itVO.setUserId(instaTokenData.get(0).getUserId());
					itVO.setToken(jsonObject.get("access_token").toString());
					itVO.setExpires_in(jsonObject.get("expires_in").toString());
					
					// 오늘 날짜부터 60일 뒤를 계산한다.
					Calendar calExpire = calDate(today,60);
					DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
					itVO.setExpire(df.format(calExpire.getTime()));
					
					mainService.insertNewToken(itVO);
					System.out.println("인스타 토큰 갱신완료");				
					
		        	// 갱신이 끝나면 DB 토큰 데이터를 다시 받아온다.
		        	instaTokenData = mainService.getInstaTokenData();
		        }
			} catch(Exception e) {
				e.printStackTrace();
			} finally {				
				// 인스타 토큰이 60일간 유효하므로, 1분마다 돌면서 하루 360번 체크정도면 충분할듯으로 판단
				try {
					Thread.sleep(60000);
				} catch (InterruptedException e) {
					e.printStackTrace();
				}				
			}
		}
	}
	
	public static String getNowTime() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String nowTime = sdf.format(now);
		
		return nowTime;
	}
	
	public static Calendar calDate(Date date, int calculation) {
		Calendar cal = Calendar.getInstance();
        cal.setTime(date);
        cal.add(Calendar.DATE, calculation);
        
        return cal;
	}
}
