<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
	alert("성공적으로 등록 되었습니다.");
	location.href="${pageContext.request.contextPath}/service/list.do?orderType=lastest&cat=0"; 
</script>