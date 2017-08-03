package com.moke.util;

import org.dozer.DozerBeanMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * 
 * @ClassName: DozerBeanMapperFactoryBean
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 下午5:51:44
 *
 */
public class DozerBeanMapperFactoryBean extends DozerBeanMapper {

	
	 /**    */
	private final static Logger LOGGER = LoggerFactory
			.getLogger(DozerBeanMapperFactoryBean.class);

	
	/**
	 * 
	 *初始化
	 */
	public void init() {
		if (LOGGER.isInfoEnabled()) {
			LOGGER.info("init dozer config.");
		}
		super.getMappingProcessor();
	}
	
	
}
