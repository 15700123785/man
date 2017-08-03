<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<ul class="page">
<li><span>共${pageInfo.total }条记录</span></li>
<c:choose>
	<c:when test="${pageInfo.pages == 0}">
		<li><span>第0/0页</span></li>
	</c:when>
	<c:otherwise>
		<li><span>第${pageInfo.pageNum }/${pageInfo.pages }页</span></li>
	</c:otherwise>
</c:choose>


<c:choose>
	<c:when test="${pageInfo.pageNum == 1}">
		<li><a href="javascript:void(0);" class="page_disable">上一页</a></li>
	</c:when>
	<c:otherwise>
		<li><a href="javascript:void(0);" onclick="searchData(${pageInfo.pageNum } - 1)">上一页</a></li>
	</c:otherwise>
</c:choose>

<c:choose>
	<c:when test="${pageInfo.pageNum == pageInfo.lastPage}">
		<li><a href="javascript:void(0);" class="page_disable">下一页</a></li>
	</c:when>
	<c:otherwise>
		<li><a href="javascript:void(0);" onclick="searchData(${pageInfo.pageNum } + 1)">下一页</a></li>
	</c:otherwise>
</c:choose>
<li><span>跳转到</span><input type="text" id="jumpPage" class="tz_page" value="${pageInfo.pageNum }"/><span>页</span>
<a href="javascript:void(0);" class="tz_btn" onclick="searchPage($('#jumpPage').val())">跳转</a></li> 
</ul>



