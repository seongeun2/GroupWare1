<!-- deletePro -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<c:if test="${pwcheck == 0}">
<script type="text/javascript">
alert("아이디나 비밀번호가 틀립니다!");
history.go(-1);
</script>
</c:if> 

<c:if test="${pwcheck == 1}">
	<script type="text/javascript">
	location.href = "../main";
	</script>
</c:if>