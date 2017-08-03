<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限管理</title>
<%@ include file="../common/import_files.jsp" %>
<script type="text/javascript">
window.onload = function(){
        var bodyh = document.documentElement.clientHeight;
        document.getElementById("right").style.minHeight = (parseInt(bodyh) - 182) + "px";
}
</script>
</head>

<body> 
<div class="main">
<%@ include file="../common/header.jsp" %>
<!-- <div class="center"> -->
<!-- <div class="nav_left">  -->
<!-- <ul> -->
<!-- <li><span>菜单管理</span></li> -->
<%-- <li><a href="${ctx}/client/list" target="right">所有终端</a></li> --%>
<%-- <li><a href="${ctx}/client/pc?deviceType=pc" target="right">窗口终端</a></li> --%>
<%-- <li><a href="${ctx}/client/pc?deviceType=pad" target="right">PAD终端</a></li>  --%>
<!-- </ul> -->
<!-- </div> -->
<iframe id="right" onload="javascript:{dyniframesize('right');}" marginwidth=0 marginheight=0 frameborder=0  src="${ctx }/power/list?pageNo=1" class="c_right1" name="right" ></iframe>
<!-- </div>  -->
<!-- </div> -->
<%-- <%@ include file="../common/footer.jsp" %> --%>
</body>
</html>
