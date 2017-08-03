<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<script language="javascript">
document.addEventListener('DOMContentLoaded', function (event) {
    // chrome 浏览器直接加上下面这个样式就行了，但是ff不识别
    document.body.style.zoom = 'reset';
    document.addEventListener('keydown', function (event) {
        if ((event.ctrlKey === true || event.metaKey === true)
        && (event.which === 61 || event.which === 107
            || event.which === 173 || event.which === 109
            || event.which === 187  || event.which === 189))
            {
               event.preventDefault();
            }
    }, false);
    document.addEventListener('mousewheel DOMMouseScroll', function (event) {
        if (event.ctrlKey === true || event.metaKey) {
            event.preventDefault();
        }
    }, false);
}, false);

</script>
<div class="head">
<h1>人证比对后台系统</h1>
<ul>
<li><a target="right" href="${ctx }/login/modifyPwShow">修改密码</a></li>
<li style="border:none;"><a href="javascript:document.location.href='${ctx }/login/exit'">退出</a></li>
</ul>
<div class="clear"></div>
</div>
<div class="nav">
<ul>
<li><a href="javascript:document.location.href='${ctx }/data/show'"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="../images/icon1.png" width="40" height="40" /><span>录入信息</span></a></li>
<li><a href="javascript:document.location.href='${ctx }/history/show'"><img onmouseover="bigImg(this)"onmouseout="normalImg(this)"  src="../images/icon3.png" width="40" height="40"  /><span>查询历史信息</span></a></li>
<li><a href="javascript:document.location.href='${ctx }/power/show'"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="../images/icon4.png" width="40" height="40" /><span>权限管理</span></a></li>
<li><a href="javascript:document.location.href='${ctx }/user/showUser'"><img onmouseover="bigImg(this)" onmouseout="normalImg(this)" src="../images/icon2.png" width="40" height="40" /><span>个人账号管理</span></a></li>
</ul>
</div>
<script>	
	function bigImg(x){
		x.style.height="45px";
		x.style.width="45px";
	}
	function normalImg(x){
		x.style.height="40px";
		x.style.width="40px";
	} 
</script>


