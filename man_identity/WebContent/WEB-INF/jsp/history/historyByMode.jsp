<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>查询添加</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/js/jquery-1.9.0.min.js"></script>

</script>
<script type="text/javascript">
function xlh(){
var tbl = document.getElementById("table1");
var rows = tbl.rows.length;
for(var i=0;i<rows;i++){
 if(i%2 == 0){
   tbl.rows[i].style.backgroundColor = "#f4f8fb";
	}
  }
}
</script>
</head>

<body onload="xlh()">
<div class="content_right">
<div class="content_bt"><span>首页 &gt;&gt; 查询历史信息  &gt;&gt; 根据条件查询</span>
</div>
<div class="ssk">
<p style="text-align:center;color:#123456;font-size:30px;">请选择查询方式:</p>
</div>

<div id="main" style="width:100%;height:300px;">

<div align="center" id="left" style="float:left;width:50%;height:100%;">
	<a href="${ctx}/history/listByService"><img style="margin-top:53px" src="../images/xczp.png" /></a>
</div>
<div align="center" id="right" style="float:left;width:50%;height:100%;">
	<a href="${ctx}/history/listByUser"><img style="margin-top:53px" src="../images/xczp.png" /></a>
</div>

</div>

<div id="main2" style="width:100%;height:40px;">

<div align="center" id="left2" style="float:left;width:50%;height:100%;">
	<a style="text-align:center;color:#123456;font-size:20px;" href="${ctx}/history/listByService">按业务单号查询</a>
</div>
<div align="center" id="right2" style="float:left;width:50%;height:100%;">
	<a style="text-align:center;color:#123456;font-size:20px;" href="${ctx}/history/listByUser">按身份证号查询</a>
</div>
</div>

<div class="clear"></div>
</div>
</div>
<script type="text/javascript">
	
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
