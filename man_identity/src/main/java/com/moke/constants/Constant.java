package com.moke.constants;

/**
 * 常量
 * @ClassName: Constant
 * @Description: TODO
 * @author wsd
 *
 */
public class Constant {
	/** 路径分隔符*/
	public static final char SPT = '/';
	/*** 上传的路径名*/
	public static final String UPLOAD_PATH = "/upload";
	/*** 文件上传的路径名*/
	public static final String UPLOAD_FILE = "/file";
	
	/**上传操作成功提示 */
	public final static String UPLOAD_SUCCESS_MSG = "上传成功!";
	
	/**上传操作失败提示 */
	public final static String UPLOAD_ERROR_MSG = "上传失败!";
	
	/**上传操作失败提示 */
	public final static String UPLOAD_ERROR_RULE = "上传失败！未找到上传规则！";
	
	/**上传操作失败提示 */
	public final static String UPLOAD_ERROR_SUFFIX = "上传失败！文件没有后缀名，不允许上传！";
	
	/**上传操作失败提示 */
	public final static String UPLOAD_ERROR_NULL = "上传失败,文件大于3M或不存在！";
	
	/**上传操作失败提示 */
	public final static String UPLOAD_ERROR_NONAME = "上传失败！该文件名没有文件名，不允许上传！";
	
	/**保存操作成功提示 */
	public final static String SAVE_SUCCESS_MSG = "保存成功!";
	
	/**保存操作失败提示 */
	public final static String SAVE_ERROR_MSG = "保存失败!";
	
	/**更新操作成功提示 */
	public final static String UPDATE_SUCCESS_MSG = "更新成功!";
	
	/**更新操作失败提示 */
	public final static String UPDATE_ERROR_MSG = "更新失败!";
	
	/**删除操作成功提示 */
	public final static String DELETE_SUCCESS_MSG = "删除成功!";
	
	/**删除操作失败提示 */
	public final static String DELETE_ERROR_MSG = "删除失败!";
	
	/**用户存在提示 */
	public final static String USER_ERROR_EXIST = "当前用户名已存在!";
	
	 /**  配置文件中的登陆地址  */
	public static final String CONFIG_LOGIN_URL = "login.url";
	
	 /**  用户中心地址  */
	public static final String CONFIG_USER_CENTER_URL = "user.center.url";
	
	 /**  本地服务地址  */
	public static final String CONFIG_LOCALHOST_SERVER_URL = "localhost.server.url";
	
	 /**  缓存所有菜单信息  */
	public static final String COMPARE_CACHE_INFO = "compare.info";
	
	 /**  用户信息键  */
	public static final String USER_INFO_KEY = "user";
	
}
