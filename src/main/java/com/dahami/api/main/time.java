package com.dahami.api.main;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;



class time {

	public static void main(String[] args){
		Date dt = new java.util.Date(new Long(1294190381)*1000);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(dateFormat.format(dt)); //2013/10/15 16:16:39
		
	}
}