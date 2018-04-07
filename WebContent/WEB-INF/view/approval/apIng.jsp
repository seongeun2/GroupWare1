<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<div class="w3-container" style="margin: 40px 100px;">
<h2 style="text-align: center;">���� ������  ${count}��</h2>
<table class="w3-table-all w3-hoverable" style="text-align: center;">
	<col width="10%">	<!-- ������ȣ -->
	<col width="10%">	<!-- �ۼ��� -->
	<col width="12%">	<!-- �μ� -->
	<col width="12%">	<!-- ���� -->
	<col width="21%">	<!-- ���� -->
	<col width="15%">	<!-- ����Ͻ� -->
	<col width="10%">	<!-- ������� -->
	<col width="10%">	<!-- ������� -->
	<thead>
		<tr class="w3-teal">
			<th>������ȣ</th>
			<th>�ۼ���</th>
	        <th>�μ�</th>
	        <th>����</th>
	        <th>����</th>
	        <th>����Ͻ�</th>
	        <th>�������</th>
	        <th>�������</th>  
		</tr>
	</thead>
	
	<c:if test="${count == 0 }">
	<table class="w3-table-all w3-hoverable" width="100%">
		<tr class="w3-white">
			<td style="text-align:center">���� �������� ������ �����ϴ�.</td>
	</table>
	</c:if>
	
	
	<c:if test="${count !=0 }">
		<c:forEach var="ap" items="${ap}">
		    <tr>
		      <td>${ap.docNo}</td><!-- ������ȣ -->
		      <td>${ap.name}</td><!-- �̸�(�ۼ���) -->
		      <td>${ap.deptName}</td><!-- �μ� -->
		      <td>${ap.teamName}</td><!-- ���� -->
		      <td><a href="apView?docNum=${ap.docNo}&pageNum=${currentPage}">${ap.title}</a></td><!-- ���� -->
		      <td>${ap.inDt}</td><!-- ����Ͻ� -->
		      <td>${ap.type}</td><!-- ������� -->
		      <td>${ap.status}</td><!-- ������� -->
		    </tr>
		</c:forEach>
	</c:if>    
</table>
</div>

<!-- �ϴ� ������ -->
<div class="w3-center" style="margin-top: 20px; text-align: center;">
<c:if test="${count>0}">
	<c:if test="${startPage > bottomLine }">
		<a href="list?pageNum=${startPage - bottomLine}">[����]</a> 
	</c:if>
   
	<c:forEach var="i" begin="${startPage}" end="${endPage}">   
		<a href="list?pageNum=${i}">
	<c:if test="${i !=  currentPage}">[${i}]</c:if>
	<c:if test="${i ==  currentPage}">
		<font color='red'>[${i}]</font></c:if></a>
	</c:forEach>
   
	<c:if test="${endPage < pageCount}">
		<a href="list?pageNum=${startPage+bottomLine}">[����]</a>
	</c:if>   
</c:if>
</div><br>

<!-- ȸ�� �˻� -->
<form name ="search" method="post" style="text-align: center;">
	<select name="keyField" style="height: 30px;">
		<option>����</option>
		<option value="m_id">�̸�</option>
		<option value="m_name">�̸���</option>
	</select>
	<input type="text" size="20" name="keyWord">
	<input type="button" value="�˻�" onclick="mem_search(form)" />&nbsp;
</form>

</html>