<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>录入信息</title>
<%@ include file="../common/import_files.jsp" %>
<!-- <style>
html {overflow-x: hidden;overflow-y: hidden;}
</style> -->
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
<%-- <li><a href="${ctx}/data/list" target="right">所有数据列表${test}</a></li> --%>
<!-- <li><a href="fail_list.html" target="right">人证比对失败</a></li>
<li><a href="sucs_list.html" target="right">人证比对成功</a></li>
<li><a href="stat_list.html" target="right">数据统计</a></li> -->
<!-- </ul> -->
<!-- </div> -->
<%-- <%@ include file="data_list.jsp" %> --%>
<iframe  id="right" onload="javascript:{dyniframesize('bottom');}" marginwidth=0 marginheight=0 frameborder=1  class="c_right1" name="right" src="${ctx}/data/showList" height="100%"></iframe>
<!-- </div>  -->
<!-- </div> -->
<%-- <%@ include file="../common/footer.jsp" %> --%>
</body>
</html>
