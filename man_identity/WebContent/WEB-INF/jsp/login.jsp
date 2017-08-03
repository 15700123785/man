<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<title>人证比对系统后台登录</title>
<!-- CSS -->
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
<link rel="stylesheet" href="${ctx}/js/assets/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${ctx}/js/assets/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="${ctx}/js/assets/css/form-elements.css">
<link rel="stylesheet" href="${ctx}/js/assets/css/style.css">
<style type="text/css">
body{
	width:100%;
	height:100%;
	background:url(../images/1.jpg) no-repeat;
	background-attachment:fixed;
	background-size:100% 100%;
}
</style>

<%-- <script src="${ctx}/js/assets/js/jquery-1.11.1.min.js"></script> --%>
<script type="text/javascript" src="${ctx}/js/jquery-1.9.1.min.js"></script>
<script src="${ctx}/js/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${ctx}/js/assets/js/jquery.backstretch.min.js"></script>
<script src="${ctx}/js/assets/js/scripts.js"></script>
</head>

<body> 
<!-- Top content -->
        <div class="top-content">
        	
            <div class="inner-bg">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <h1><strong>杭州摩科商用设备有限公司</strong></h1>
                            <div class="description">
                            	<p>
	                            	HangZhou MoKo Commercial Device Co,.Ltd.
                            	</p>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 form-box">
                        	<div class="form-top">
                        		<div class="form-top-left">
                        			<h3>人证比对系统登录</h3>
                            		<p>请输入分配的账号和密码:</p>
                        		</div>
                        		<div class="form-top-right">
                        			<i class="fa fa-key"></i>
                        		</div>
                            </div>
                            <div class="form-bottom">
			                    <form id="login" role="form" action="${ctx }/data/show" method="post" class="login-form">
			                    	<div class="form-group">
			                    		<label class="sr-only" for="form-username">Username</label>
			                        	<input type="text" name="form-username" placeholder="用户名" class="form-username form-control" id="form-username">
			                        </div>
			                        <div class="form-group">
			                        	<label class="sr-only" for="form-password">Password</label>
			                        	<input type="password" name="form-password" placeholder="密码" class="form-password form-control" id="form-password">
			                        </div>
			                        <div class="form-group">
			                        		<label class="sr-only" for="form-password"></label>
			                        		<input type="checkbox" class="col-lg-1">记住密码</input>
			                        </div>
			                        <!-- <div class="col-lg-10 mycheckbox checkbox">
					                    <input type="checkbox" class="col-lg-1">记住密码</input>
					                </div> -->
			                         <!-- <div class="form-group">
									    <div class="col-sm-offset-2 col-sm-10">
									      <div class="checkbox">
									        <label>
									          <input type="checkbox">请记住我
									        </label>
									      </div>
									    </div>
									  </div> -->
			                        <button type="submit" id="login_btn" class="btn">登录</button>
			                    </form>
		                    </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-8 col-sm-offset-2 text">
                            <div class="description">
                            	<p>
	                            	联系电话：0571-88079229
                            	</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </div>

<script type="text/javascript">
	/* 回车登录 */
	$("body").keydown(function() {
	    if (event.keyCode == "13") {//keyCode=13是回车键
	       $("#login_btn").click();
	    }
	});
	function login(){
		$("#login").submit();
	}
	/* 登录 */
	/* function login() {
		if($("#username").val().trim() == '') {
			$("#username").focus();
		}
		if($("#password").val().trim() == '') {
			$("#password").focus();
		}
		$.ajax({
			url:'${ctx}/login/dologin',
			type:'post',
			dataType:'json',
			data:{username:$("#username").val(), password:$("#password").val()},
			success:function(data) {
				if(data) {
					window.location="${ctx}/data/show";
				} else {
					alert("密码错误！");
				}
			}
		});
	} */
	// 回车监听事件
    document.onkeydown=keyDownSearch;  
    function keyDownSearch(e) {
        // 兼容FF和IE和Opera    
        var theEvent = e || window.event;    
        var code = theEvent.keyCode || theEvent.which || theEvent.charCode;    
        if (code == 13) {    
        	login();  
            return false;    
        }    
        return true;    
    }

</script>
</body>


</html>