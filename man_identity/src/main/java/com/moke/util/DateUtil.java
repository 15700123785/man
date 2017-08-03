package com.moke.util;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

public class DateUtil {
	public static String getTimestampWithoutMillisecond(Timestamp timeBefore) {
		SimpleDateFormat dateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if(timeBefore == null)
			return null;
		return dateformat.format(timeBefore);//格式化传过来的时间就可以去掉毫秒数
	}
}
