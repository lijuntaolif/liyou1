package cn.liyou.tools;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateFormat {
	public static java.sql.Date utilToSql(Date date){
		java.sql.Date sqlDate=new java.sql.Date(date.getTime());
		return sqlDate;	
		
	} //将sql的date装换成util的date 
	
	//转换date 至String  
    public static String date_string(Date date) {  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
        return sdf.format(date);  
    }  
    
    //转换String 到 date  
    public static Date string_date(String date) {  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
        Date date_=null;  
        try {  
            date_=sdf.parse(date);  
        } catch (ParseException e) {  
            // TODO Auto-generated catch block  
            e.printStackTrace();  
        }  
        return date_;  
    }  
}
