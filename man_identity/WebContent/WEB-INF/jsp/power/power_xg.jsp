<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>权限信息修改</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap.min.js"></script>
</head>

<body>
<div class="content_right">
<div class="content_bt"><span>首页  >> 权限列表 >> 权限修改</span></div>
<div class="xg_form">
<form role = "form" class="form-horizontal">  
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">权限ID</label>  
            <div class="col-sm-2">  
                <input type = "text" class = "form-control" id = "id"    
                    placeholder = "请输入权限ID"></input>  
            </div>  
        </div>
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">姓名</label>  
            <div class="col-sm-2">  
                <input type = "text" class = "form-control" id = "name"    
                    placeholder = "请输入姓名"></input>  
            </div>  
        </div>    
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "profession">选择权限</label>  
            <div class="col-sm-2">  
                <select id = "profession" class = "form-control">  
                    <option>仅限录入</option>  
                    <option>录入,查看数据</option>  
                    <option>管理员</option>  
                </select>  
            </div>  
        </div>  
        <div class="form-group">  
            <div class="col-sm-2 col-sm-offset-2">  
                <button type = "submit" class="btn-info btn-lg">确认修改</button>  
            </div>              
        </div>  
    </form>   

</div>
</div>
<script type="text/javascript">
	function modify() {
		$.ajax({
			url:'${ctx}/client/modify',
			type:'post',
			data:{
				'id':$("#id").val(),
				'deviceNo':$("#deviceNo").val(),
				'deviceName':$("#deviceName").val(),
				'deviceArea':$("#deviceArea").val(),
				'deviceDesk':$("#deviceDesk").val(),
				'deviceType':$("#deviceType").val()
			},
			success:function(data) {
				if(data) {
					alert("修改成功!");
					window.location="${ctx}/client/list";
				} else{
					alert("修改失败!");
				}
			},
			error:function(data) {
				alert("修改失败!");
			}
		});
	}
</script>
</body>
</html>
