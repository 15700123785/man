<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>终端列表</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/js/jquery-1.9.0.min.js"></script>
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
<div class="content_bt"><span>首页 >> 权限列表 >> 权限管理列表</span>
<%-- <c:if test="${ulv.roleName == '管理员' }">
<a href="javascript:document.location.href='${ctx }/client/addShow'">新增终端</a>
</c:if> --%>
</div>
<div class="ssk">
<p style="text-align:center;color:#123456;font-size:30px;">权限资料管理</p>
</div>
<div class="content_table">
<table cellpadding="0" cellspacing="0" id="table1">
<thead>
<tr>
<td colspan="2"><input type="checkbox" id="ckb" class="c1" onclick="seltAll()" /><span>权限ID</span></td> 
<td colspan="2">姓名</td>
<td colspan="2">权限</td>
<td colspan="4">操作</td>
</tr>
</thead>
<c:forEach items="${pageInfo.list }" var="item" varStatus="vs">
<tbody>
<tr>
<td colspan="2"><input type="checkbox" class="c1" name="chckBox" value="1" />
<span>${vs.count + (pageInfo.pageNum-1)*10 }</span></td>
<td colspan="2">张三</td>
<td colspan="2">仅限录入</td>
<td colspan="4">
<a href="javascript:document.location.href='${ctx }/power/modifyShow?id=${item.id }'" class="scan">修改</a>
</td>
</tr>
</tbody>
</c:forEach>
</table>
</div>
<div class="bottom">
<c:if test="${ulv.roleName == '管理员' }">
<ul>
<c:if test="${ulv.roleName == '管理员' }">
<li><a href="javascript:void(0)" class="del" onclick="deleSeltedRecords()">批量删除</a></li>
</c:if>
</ul>
</c:if>
<%@ include file="../common/page.jsp" %>

<div class="clear"></div>
</div>
</div>
<script type="text/javascript">
	function searchData(pageNo) {
		$("#pageNo").val(pageNo);
		$("#form").submit();
	}
	
	function seltAll(){
	    var chckBoxSign = document.getElementById("ckb");       //ckb 全选/反选的选择框id  
	    var chckBox = document.getElementsByName("chckBox");    //所有的选择框其那么都是chckBox  
	    var num = chckBox.length;  
	    if(chckBoxSign.checked){
	        for(var index =0 ; index<num ; index++){  
	            chckBox[index].checked = true;  
	        }
	    } else {  
	        for(var index =0 ; index<num ; index++){  
	            chckBox[index].checked = false;  
	        }
	    }
	}  
	
	function deleSeltedRecords(){
	    var chckBox = document.getElementsByName("chckBox");  
	    var num = chckBox.length;  
	    var ids = "";  
	    for(var index =0 ; index<num ; index++){  
	        if(chckBox[index].checked){  
	            ids += chckBox[index].value + ",";
	            
	        }
	    }  
	    if(ids!=""){  
	    	ids = ids.substring(0, ids.length -1);//去掉最后的逗号
	        if(window.confirm("确定删除所选记录？")){  
	            $.ajax( {  
	                type : "post",  
	                url : '${ctx}/client/batchDelete', //要自行删除的action  
	                data: {idItems:ids},
	                dataType : 'json',  
	                success : function(data) {  
	                	if(data) {
		                    alert("删除成功");
		                    searchData(1);
	                	}
	                },  
	                error : function(data) {  
	                    alert("系统错误，删除失败");  
	                }  
	            });  
	        }  
	    }else{  
	        alert("请选择要删除的记录");  
	    }  
	}  
	
	function deleteItem(id) {
		if(window.confirm("确定删除所选记录？")){  
	        $.ajax( {  
	            type : "post",  
	            url : '${ctx}/client/deleteItem', //要自行删除的action  
	            data: {id:id},
	            dataType : 'json',  
	            success : function(data) {
	            	if(data) {
	                    alert("删除成功"); 
	                    searchData(1);
	            	}
	            },  
	            error : function(data) {
	                alert("系统错误，删除失败");  
	            }  
	        });  
	    }  
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
