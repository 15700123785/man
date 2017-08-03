<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息管理</title>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<link href="${ctx}/css/style.css" type="text/css" rel="stylesheet" />
<link href="${ctx}/js/bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/js/jquery-1.9.1.min.js"></script>
<script type="text/javascript" src="${ctx}/js/laydate/laydate.js"></script>
<script type="text/javascript" src="${ctx}/js/bootstrap/js/bootstrap.min.js"></script>

<link href="${ctx}/js/bootstrap/datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" />  
<script src="${ctx}/js/bootstrap/datetimepicker/js/moment-with-locales.min.js"></script>  
<script src="${ctx}/js/bootstrap/datetimepicker/js/bootstrap-datetimepicker.min.js"></script>  
</head>

<body>
<div class="content_right">
<div class="content_bt"><span>首页  >> 个人账号管理 >> 个人信息修改</span></div>
<div class="xg_form">
<form role = "form" class="form-horizontal">  
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">姓名</label>  
            <div class="col-sm-2">  
                <input type = "text" class = "form-control" id = "name"    
                    placeholder = "请输入姓名" value="${user.name }"></input>  
            </div>  
        </div>
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">年龄</label>  
            <div class="col-sm-2">  
                <input type = "text" class = "form-control" id = "age"    
                    placeholder = "请输入年龄" value="${user.sex }"></input>  
            </div>  
        </div>    
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "name">生日</label>  
            <div class="col-sm-2">  
                <input type = "text" class = "form-control" id = "birthday"    
                    placeholder = "请输入生日" onclick="laydate()" value="${user.phone }"></input>  
            </div>  
        </div>
        <div class = "form-group">  
            <label class="col-sm-2 control-label" for = "tel">职位</label>  
            <div class="col-sm-2">  
                <input type="text" class="form-control" id = "job"   
                        placeholder = "请输入您的职位" value="${user.address }"></input>  
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
laydate({
	elem: '#time1',
	format: 'YYYY/MM/DD hh:mm:ss', // 分隔符可以任意定义，该例子表示只显示年月
	festival: true,
	istoday: true,
	start: laydate.now(0, "YYYY/MM/DD hh:00:00"),
	istime: true

	});        



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
