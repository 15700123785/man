<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>录入信息列表</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/bootstrap-table.min.css" type="text/css" rel="stylesheet" />
<style>
/* html { overflow-x: hidden;} */
.table th, .table td { 
text-align: center;
vertical-align: middle!important;
}
</style>
<script type="text/javascript" src="${ctx}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/laydate/laydate.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/bootstrap-table-zh-CN.min.js"></script>
</head>
<body>
<div class="content_right" style="height: 500px; border: 1px solid #000;overflow:auto">
<div class="content_bt"><span>首页 &gt;&gt; 录入信息&gt;&gt; 录入信息列表&gt;&gt;</span></div>
<div class="ssk">
<span><i>扫码录入业务单号</i><input type="text" /></span>
</div>
<div class="ssk">
<ul id="myTab" class="nav nav-tabs">
	<li class="active">
		<a href="#obligee" data-toggle="tab">
			 权利人信息录入
		</a>
	</li>
	<li><a href="#obligor" data-toggle="tab">义务人信息录入</a></li>
	<li><a href="#mandatary" data-toggle="tab">被委托人信息录入</a></li>
</ul>
<div id="myTabContent" class="tab-content" >
	<div class="tab-pane fade in active" id="obligee">
		<table class="table" data-height="700">
		<tr>
			<td width="10%" colspan="2" rowspan="4">权利人一</td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-20-43-sfz.bmp"/></td>
			<td width="10%" rowspan="4"><img width="100" height="100" src="${ctx}/images/ok.png"/></td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-22-40-cam.jpg"/></td>
			<td width="10%" style="text-align: left">姓名：夏张丽</td>
			<td width="10%" style="text-align: left">民族：汉族</td>
			<td width="10%" style="text-align: left">性别：女</td>
			<td width="10%" rowspan="4">
				<button class="btn btn-danger btn-lg ">删除
			</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">出生：19890218</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">地址：浙江省建德市大同镇永平村富楼高家１６号</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">号码：330182198902184025</td>
		</tr>
		</table>
		
	</div>
	<div class="tab-pane fade" id="obligor">
		<table class="table" data-height="700">
		<tr>
			<td width="10%" colspan="2" rowspan="4">义务人一</td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-20-43-sfz.bmp"/></td>
			<td width="10%" rowspan="4"><img width="100" height="100" src="${ctx}/images/ok.png"/></td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-22-40-cam.jpg"/></td>
			<td width="10%" style="text-align: left">姓名：夏张丽</td>
			<td width="10%" style="text-align: left">民族：汉族</td>
			<td width="10%" style="text-align: left">性别：女</td>
			<td width="10%" rowspan="4">
				<button class="btn btn-danger btn-lg ">删除
			</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">出生：19890218</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">地址：浙江省建德市大同镇永平村富楼高家１６号</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">号码：330182198902184025</td>
		</tr>
		</table>
	</div>
	<div class="tab-pane fade" id="mandatary">
		<table class="table" data-height="700">
		<tr>
			<td width="10%" colspan="2" rowspan="4">被委托人一</td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-20-43-sfz.bmp"/></td>
			<td width="10%" rowspan="4"><img width="100" height="100" src="${ctx}/images/ok.png"/></td>
			<td width="20%" colspan="2" rowspan="4"><img width="100" height="100" src="${ctx}/images/img/330182198902184025-2017-05-23-15-22-40-cam.jpg"/></td>
			<td width="10%" style="text-align: left">姓名：夏张丽</td>
			<td width="10%" style="text-align: left">民族：汉族</td>
			<td width="10%" style="text-align: left">性别：女</td>
			<td width="10%" rowspan="4">
				<button class="btn btn-danger btn-lg ">删除
			</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">出生：19890218</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">地址：浙江省建德市大同镇永平村富楼高家１６号</td>
		</tr>
		<tr>
			<td colspan="3" style="text-align: left">号码：330182198902184025</td>
		</tr>
		</table>
	</div>
	
</div>
</div>
<div class="ssk">
	<center><button class="btn btn-info btn-lg ">
    		确认录入
 </button></center>
</div>
</div>
</body>
</html>