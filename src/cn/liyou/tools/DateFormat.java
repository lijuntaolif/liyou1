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
    //date1和当前时间比较如果date1早于当前时间返回true
    public static boolean eq(Date date1){
    	Date date2=new Date();
    	if(date1.before(date2)){
    		return true;
    	}else{
    		return false;
    	}
    }
    
  //转换date 至标准date  
    public static Date date_date(Date date) {  
    	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    	try {
			return sdf.parse(sdf.format(date));
		} catch (ParseException e) {
			e.printStackTrace();
		}
    	return null;
    }  
    
}
