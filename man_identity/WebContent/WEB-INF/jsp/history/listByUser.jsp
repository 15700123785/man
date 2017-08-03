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
<script type="text/javascript" src="${ctx}/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript">
</script>
</head>

<body onload="xlh()">
<div class="content_right">
<div class="content_bt"><span>首页 &gt;&gt; 查询历史信息  &gt;&gt; 根据身份证号查询</span>
</div>
<div class="ssk">
<form id="form" action="${ctx }/admin/list" method="post"> 
<input type="hidden" id="pageNo" name="pageNo"/>
<span><i>请输入身份证号：</i><input id="accountId" name="accountId" type="text" class="t2" value="<%=request.getParameter("accountId")==null?"":request.getParameter("accountId")%>" /></span>
<input type="button" value="搜索" class="btn1" onclick="searchData(1)"/>
</form>

</div>

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
    
  //跳转到第几页
	function searchPage(pageNo) {
		$("#pageNo").val(pageNo);
		$("#form").submit();
	}
</script>
<center>
<%@ include file="../common/footer.jsp" %>
</center>
</body>
</html>
