<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>历史消息查询</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/bootstrap-table.min.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<style>
.table th, .table td { 
text-align: center;
vertical-align: middle!important;
}
</style>
<script type="text/javascript" src="${ctx}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/bootstrap-table.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/bootstrap-table-zh-CN.min.js"></script>

</head>

<body>
<!-- <table id="teacher_table" data-toggle="table" data-url="./data.php" data-method="post"
 data-query-params="queryParams"
 data-toolbar="#toolbar"
 data-pagination="true"
 data-search="true"
 data-show-refresh="true"
 data-show-toggle="true"
 data-show-columns="true"
 data-page-size="5">
 <thead>
 <tr>
 <th data-field="name">用户账号</th>
 <th data-field="pwd">用户密码</th>
 <th data-field="t_name">教师姓名</th>
 </tr>
 </thead>
 </table> -->
<div class="content_right">
<div class="content_bt"><span>首页 &gt;&gt; 查询历史信息  &gt;&gt; 根据业务单号查询</span>
</div>
<div class="ssk">
<form id="form" action="${ctx }/history/list" method="post"> 
<input type="hidden" id="pageNo" name="pageNo"/>
<span><i>请输入业务单号：</i><input id="serviceId" name="serviceId" type="text" class="t2" value="<%=request.getParameter("serviceId")==null?"":request.getParameter("serviceId")%>" /></span>
<input type="button" value="搜索" class="btn1" onclick="searchData(1)"/>
</form>
</div>

<div class="ssk">
<p style="text-align:center;color:#123456;font-size:20px;">权利人列表资料</p>
<table data-toggle="table"  id="obligee"  data-height="200" >
 <thead>
	 <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>民族</th>
            <th>性别</th>
            <th>出生</th>
            <th>地址</th>
            <th>号码</th>
            <th>身份证照片</th>
        </tr>
       </thead>
   <tbody>
        <c:forEach items="${pageInfo.list }" var="item" varStatus="vs">
            <c:if test="${item.typeCode==1 }">
		        <tr>
			        <td><span>${vs.count + (pageInfo.pageNum-1)*10 }</span></td>
				    <td>${item.name }</td>
				    <td>${item.nation }</td>
				    <td>${item.sex }</td>
				    <td>${item.birthday }</td>
				    <td>${item.address }</td>
				    <td>${item.idNo }</td>
				    <td><img src="${ctx }/images/${item.cardPhoto }" width="25" height="25"/></td>
			    </tr>
			</c:if>
        </c:forEach>
    </tbody>
</table>
<%-- <center><button class="btn btn-info btn-lg " data-toggle="modal"  data-target="#addObligee">
    		添加
 </button></center> --%>
</div>


<div class="ssk">
<p style="text-align:center;color:#123456;font-size:20px;">义务人列表资料</p>
<table data-toggle="table"  id="obligor"  data-height="200" >
 	<thead>
	 <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>民族</th>
            <th>性别</th>
            <th>出生</th>
            <th>地址</th>
            <th>号码</th>
            <th>身份证照片</th>
        </tr>
  	</thead>
   <tbody>
        <c:forEach items="${pageInfo.list }" var="item" varStatus="vs">
            <c:if test="${item.typeCode==2 }">
		        <tr>
			        <td><span>${vs.count + (pageInfo.pageNum-1)*10 }</span></td>
				    <td>${item.name }</td>
				    <td>${item.nation }</td>
				    <td>${item.sex }</td>
				    <td>${item.birthday }</td>
				    <td>${item.address }</td>
				    <td>${item.idNo }</td>
				    <td><img src="${ctx }/images/${item.cardPhoto }" width="25" height="25"/></td>
			    </tr>
			</c:if>
        </c:forEach>
    </tbody>
</table>
<%-- <center><button class="btn btn-info btn-lg " data-toggle="modal"  data-target="#addUserModal">
    		添加
 </button></center> --%>
 </div>

<div class="ssk">
<p style="text-align:center;color:#123456;font-size:20px;">被委托人列表资料</p>
<table data-toggle="table"  id="WorkTable3"  data-height="200" >
 <thead>
	 <tr>
            <th>序号</th>
            <th>姓名</th>
            <th>民族</th>
            <th>性别</th>
            <th>出生</th>
            <th>地址</th>
            <th>号码</th>
            <th>身份证照片</th>
        </tr>
  	</thead>
  
   <tbody>
        <c:forEach items="${pageInfo.list }" var="item" varStatus="vs">
            <c:if test="${item.typeCode==3 }">
		        <tr>
			        <td><span>${vs.count + (pageInfo.pageNum-1)*10 }</span></td>
				    <td>${item.name }</td>
				    <td>${item.nation }</td>
				    <td>${item.sex }</td>
				    <td>${item.birthday }</td>
				    <td>${item.address }</td>
				    <td>${item.idNo }</td>
				    <td><img src="${ctx }/images/${item.cardPhoto }" width="25" height="25"/></td>
			    </tr>
			</c:if>
        </c:forEach>
    </tbody>
</table>
<%-- <center><button class="btn btn-info btn-lg " data-toggle="modal"  data-target="#addUserModal">
    		添加
 </button></center> --%>
</div>


<div class="clear"></div>
</div>





<script type="text/javascript">
	function searchData(pageNo) {
		$("#pageNo").val(pageNo);
		$("#form").submit();
	}
	
	
	// 回车监听事件
    document.onkeydown=keyDownSearch;  
    function keyDownSearch(e) {    
        // 兼容FF和IE和Opera    
        var theEvent = e || window.event;    
        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;    
        if (code == 13) {    
        	searchData("1");
            return false;    
        }    
        return true;    
    }
    
</script>
<center>
<%@ include file="../common/footer.jsp" %>
</center>
</body>
</html>
