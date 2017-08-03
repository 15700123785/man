
package com.moke.util;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.dozer.DozerBeanMapper;

/**
 * po、vo装换类
 * @ClassName: ZDozerBeanUtil
 * @Description: TODO
 * @author wzj
 * @date 2016年12月19日 上午10:51:51
 *
 */

public class ZDozerBeanUtil {
    
	@Resource
	private DozerBeanMapper dozerBeanMapper;
	/**
	 * 进行对象克隆
	 * @param <P>
	 * @param base
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public <P> P clone(P base) {
		if (base == null) {
			return null;
		} else {
			return (P) dozerBeanMapper.map(base, base.getClass());
		}
	}
	/**
	 * 克隆集合对象信息
	 * @param <P>
	 * @param baseList
	 * @return
	 */
	public <P> List<P> cloneList(List<P> baseList) {
		if (baseList == null) {
			return null;
		} else {
			List<P> targetList = new ArrayList<P>();
			for (P p : baseList) {
				targetList.add((P) clone(p));
			}
			return targetList;
		}
	}
	/**
	 * 进行对象转换
	 * @param <V>
	 * @param <P>
	 * @param base
	 * @param target
	 * @return
	 */
	public <V, P> P convert(V base, P target) {
		if (base != null) {
			dozerBeanMapper.map(base, target);
			return target;
		}
		return target;
	}
	/**
	 * 进行对象转换
	 * @param <V>
	 * @param <P>
	 * @param base
	 * @param target
	 * @return
	 */
	public <V, P> P convert(V base, Class<P> target) {
		if (base == null) {
			return null;
		} else {
			P p = (P) dozerBeanMapper.map(base, target);
			return p;
		}
	}
	/**
	 * 进行集合对象转换
	 * @param <V>
	 * @param <P>
	 * @param baseList
	 * @param target
	 * @return
	 */
	public <V, P> List<P> convertList(List<V> baseList, Class<P> target) {
		if (baseList == null) {
			return null;
		} else {
			List<P> targetList = new ArrayList<P>();
			for (V vo : baseList) {

				targetList.add((P) convert(vo, target));
			}
			return targetList;
		}
	}

	public void setDozerBeanMapper(DozerBeanMapper dozerBeanMapper) {
		this.dozerBeanMapper = dozerBeanMapper;
	}

}

