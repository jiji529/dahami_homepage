package com.dahami.api.main;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;



class time {
	public static void main(String[] args){
		long dtlong = Long.parseLong("1477218726");
		Date dts = new java.util.Date(new Long(dtlong)*1000);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");
		
		System.out.println(df.format(dts)); //2013/10/15 16:16:39
	}
}