package com.moke.util;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

import com.moke.vo.IdCardCompareInfoVo;


/**
 * 查找csv文件并其内容
 * @author zyy
 *
 */
public class ReadCsv {
 
	public static String csvPath = null;
	public static List<String> csvList = new ArrayList<String>();
 /*
  * 通过递归得到某一路径下所有的目录及其文件
  */
	  public static List<String> getFileCsv(String strPath) {
		        File dir = new File(strPath);
		        File[] files = dir.listFiles(); // 该文件目录下文件全部放入数组
		        if (files != null) {
		            for (int i = 0; i < files.length; i++) {
		                String fileName = files[i].getName();
		                if (files[i].isDirectory()) { // 判断是文件还是文件夹
		                	getFileCsv(files[i].getAbsolutePath()); // 获取文件绝对路径
		                } else if (fileName.endsWith(".csv")) { // 判断文件名是否以.csv结尾
		                    csvPath = files[i].getAbsolutePath();
		                    csvList.add(csvPath);
		                } else {
		                    continue;
		                }
		            }

		        }
		        return csvList;
		    }

/**
 * 读取文件内容存入对象并返回
 * @param path文件路径
 * @return
 */
	/**
	 * @param path
	 * @return
	 */
	@SuppressWarnings("resource")
	public static List<IdCardCompareInfoVo> readCsvTest(String path){
		List<IdCardCompareInfoVo> list = new ArrayList<IdCardCompareInfoVo>();
		IdCardCompareInfoVo idCardCompareInfoVo =  null;
		 try {  
				BufferedReader reader =  new BufferedReader((new InputStreamReader(new FileInputStream(path),"UTF-8")));//换成你的文件名
	            reader.readLine();//第一行信息，为标题信息，不用,如果需要，注释掉
	            String lines = null; 
	            String[] item = null;
	            for(;(lines=reader.readLine())!=null;){
	            	for(int l = 0; l< lines.length(); l++){
	                	  item = lines.split(",");//CSV格式文件为逗号分隔符文件，这里根据逗号切分
	                	  if(l < item.length){
	                		  idCardCompareInfoVo = saveMsgToIdCardCompareInfoVo(item);
	                	  }
	                  }
	           list.add(idCardCompareInfoVo);
	           }
	        } catch (Exception e) {  
	            e.printStackTrace(); 
	            System.out.println("读取失败");
	        } 
         return list;
	    }
	
	public static IdCardCompareInfoVo saveMsgToIdCardCompareInfoVo(String[] item) throws Exception{
		IdCardCompareInfoVo idCardCompareInfoVo =  null;
		for(int i=0;i<item.length-1;i++){
			  idCardCompareInfoVo = new IdCardCompareInfoVo();
			  idCardCompareInfoVo.setIdNo(item[0].replace("'", ""));
			  String birthday = item[0].substring(7, 15);
			  idCardCompareInfoVo.setBirthday(birthday);
			  idCardCompareInfoVo.setAddTime(DateUtils.parseToDate(DateUtils.getCurrTimeStr()));
			  idCardCompareInfoVo.setName(item[1]);
			  idCardCompareInfoVo.setNation(item[2]);
			  idCardCompareInfoVo.setSex(item[3]);
			  idCardCompareInfoVo.setAddress(item[4]);
			  idCardCompareInfoVo.setBeginDate(item[5]);
			  idCardCompareInfoVo.setEndDate(item[6]);
			  idCardCompareInfoVo.setIssueOrg(item[7]);
			  idCardCompareInfoVo.setImgCameraPath(item[8]);
			  idCardCompareInfoVo.setImgCameraName(item[8].substring(item[8].lastIndexOf("/")+1));
			  idCardCompareInfoVo.setImgIdcardPath(item[9]);
			  idCardCompareInfoVo.setImgIdcardName(item[9].substring(item[9].lastIndexOf("/")+1));
			  DecimalFormat df=new DecimalFormat("#.00");
			  idCardCompareInfoVo.setSimilarity(Double.valueOf(df.format((Double.valueOf(item[10])/100))));
			  idCardCompareInfoVo.setUserId(1);
			  idCardCompareInfoVo.setIsvalid(true);
			  if(item[11].equals("通过")){
				  idCardCompareInfoVo.setIspass(true);
			  } else if (item[11].equals("不通过")) {
				  idCardCompareInfoVo.setIspass(false);
			}else{
				throw new Exception("识别异常");
			}
		  }
		return idCardCompareInfoVo;
	}
}