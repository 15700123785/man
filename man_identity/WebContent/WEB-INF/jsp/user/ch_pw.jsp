<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改密码</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap.min.js"></script>

</head>

<body>
<div class="content_right">
<div class="content_bt"><span>首页 >> 修改密码</span></div>
<div class="xg_form">
<form role = "form" class="form-horizontal">  
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">原密码</label>  
            <div class="col-sm-2">  
                <input type = "password" class = "form-control" id = "oldPw"    
                    placeholder = "请输入原密码"></input>  
            </div>  
        </div>
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">新密码</label>  
            <div class="col-sm-2">  
                <input type = "password" class = "form-control" id = "newPw"    
                    placeholder = "请输入新密码"></input>  
            </div>  
        </div>    
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">确认密码</label>  
            <div class="col-sm-2">  
                <input type = "password" class = "form-control" id = "newPwAgain"    
                    placeholder = "请确认密码"></input>  
            </div>  
        </div>   
        
        <div class="form-group">  
            <div class="col-sm-2 col-sm-offset-2">  
                <button type = "button" class="btn-info btn-lg" onclick="modifyPw()">确认修改</button>  
            </div>              
        </div>  
    </form>

</div>
</div>
<script type="text/javascript">
	function modifyPw() {
 		var oldPw = $("#oldPw").val();
		var newPw = $("#newPw").val();
		var newPwAgain = $("#newPwAgain").val();
		if(oldPw==""){
			alert("请输入旧密码");
			return;
		}
		if(newPw==""){
			alert("请输入新密码");
			return;
		}
		if(newPw != newPwAgain) {
			alert("两次新密码输入不一致，请重新检查后输入！");
			return;
		}
		if(oldPw == newPwAgain) {
			alert("新密码与旧密码不能相同，请重新检查后输入！");
			return;
		}
	 	$.ajax({
			url:'${ctx}/login/modifyPw',
			type:'post',
			dataType: "json",
			data:{
				'oldPw':oldPw,
				'newPw':newPwAgain
			},
			success:function(data) {
				if(data) {
					alert("修改密码成功!");
					window.history.back(-1);
				} else {
					alert("原密码不正确，修改失败!");
				}
			},
 			error:function(data) {
				alert("修改密码失败!");
			}
		}); 
	}
</script>
</body>
</html>