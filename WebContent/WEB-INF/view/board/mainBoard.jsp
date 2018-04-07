<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<div class="w3-padding-16"></div>

<!-- 게시판 div 영역 -->
<div class="w3-row-padding">
   <div class="w3-half w3-container w3-padding w3-metro-dark-blue">
      <div class="w3-row">
         <h5>공지사항</h5>
         <div class="w3-col" style="width: 80%;">
            <table class="w3-table w3-striped w3-white">
               
               <!-- <tr>
                  <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
                  <td>제목</td>
                  <td><i>작성자</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
                  <td>New record, over 90 views.</td>
                  <td><i>10 mins</i></td>
               </tr>
               <tr>
                   <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
                   <td>Database error.</td>
                   <td><i>15 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
                  <td>New record, over 40 users.</td>
                  <td><i>17 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
                  <td>New comments.</td>
                  <td><i>25 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
                  <td>Check transactions.</td>
                  <td><i>28 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
                  <td>CPU overload.</td>
                  <td><i>35 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
                  <td>New shares.</td>
                  <td><i>39 mins</i></td>
               </tr>
                -->
                
    <c:if test="${count==0 }">
		<table class="w3-table-all w3-hoverable"  width="700">
			<tr class="w3-teal">
				<td align="center">게시판에 저장된 글이 없습니다.</td>
			</tr>
		</table>
	</c:if>
         
    <c:if test="${count!=0 }">                      
        <c:forEach  var="article"  items="${articleList}">	
		<tr height="30">
			<td align="center" width="50">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width="250">
<!-- 수정: ${pageContext.request.contextPath} -->	
			<c:if test="${article.re_level>0}">
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"
					width="${5 * article.re_level}" height="16"> 
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/re.gif">
			</c:if> 
	
			<c:if test="${article.re_level==0}">
	 			<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"  height="16">
			</c:if>
			
<!-- 수정 : ${boardid } -->
<!-- <a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}"> -->
<!-- 수정 : content?num=${article.num}&pageNum=${currentPage} 에서 => 맨 앞에 board/ 추가 -->
<!-- board/content?num=${article.num}&pageNum=${currentPage} -->
		 		<a href="board/content?num=${article.num}&pageNum=${currentPage}&boardid=1">
					${article.subject}</a> 

 			<c:if test="article.readcount>=20">
 				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<td align="center" width="150">${article.reg_date}</td>
		</tr>	
		</c:forEach>
           
           
            </table>
            </c:if>
         </div>
         
         <div class="w3-col" style="width: 20%;">
            <div class="w3-display-container">
               <div class="w3-display-middle w3-metro-light-blue">
                  <i class="fa fa fa-plus-square-o" style="font-size: 48px;"></i>
               </div>
               <div class="w3-display-bottommiddle">
                  <p>more</p>
               </div>
            </div>
         </div>
      </div>  
   </div>
   
   
   
   <div class="w3-half w3-container w3-padding w3-metro-dark-blue">
      <div class="w3-row">
         <h5>자유게시판</h5>
         <div class="w3-col" style="width: 80%;">
            <table class="w3-table w3-striped w3-white">
               <!-- <tr>
                  <td><i class="fa fa-user w3-text-blue w3-large"></i></td>
                  <td>New record, over 90 views.</td>
                  <td><i>10 mins</i></td>
               </tr>
               <tr>
                   <td><i class="fa fa-bell w3-text-red w3-large"></i></td>
                   <td>Database error.</td>
                   <td><i>15 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-users w3-text-yellow w3-large"></i></td>
                  <td>New record, over 40 users.</td>
                  <td><i>17 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-comment w3-text-red w3-large"></i></td>
                  <td>New comments.</td>
                  <td><i>25 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-bookmark w3-text-blue w3-large"></i></td>
                  <td>Check transactions.</td>
                  <td><i>28 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-laptop w3-text-red w3-large"></i></td>
                  <td>CPU overload.</td>
                  <td><i>35 mins</i></td>
               </tr>
               <tr>
                  <td><i class="fa fa-share-alt w3-text-green w3-large"></i></td>
                  <td>New shares.</td>
                  <td><i>39 mins</i></td>
               </tr> -->
               
     <c:if test="${count==0}">
		<table class="w3-table-all w3-hoverable"  width="700">
			<tr class="w3-teal">
				<td align="center">게시판에 저장된 글이 없습니다.</td>
			</tr>
		</table>
	</c:if>
         
    <c:if test="${count!=0}">                      
        <c:forEach  var="article"  items="${articleList1}">	
		<tr height="30">
			<td align="center" width="50">${number}</td>
			<c:set var="number" value="${number-1}"/>
			<td width="250">
<!-- 수정: ${pageContext.request.contextPath} -->	
			<c:if test="${article.re_level>0}">
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"
					width="${5 * article.re_level}" height="16"> 
				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/re.gif">
			</c:if> 
	
			<c:if test="${article.re_level==0}">
	 			<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/level.gif"  height="16">
			</c:if>
			
<!-- 수정 : ${boardid } -->
<!-- <a href="content?num=${article.num}&pageNum=${currentPage}&boardid=${boardid}"> -->
<!-- 수정 : content?num=${article.num}&pageNum=${currentPage} 에서 => 맨 앞에 board/ 추가 -->
<!-- board/content?num=${article.num}&pageNum=${currentPage} -->
		 		<a href="board/content?num=${article.num}&pageNum=${currentPage}&boardid=2">
					${article.subject}</a> 

 			<c:if test="article.readcount>=20">
 				<img src="${pageContext.request.contextPath}/resources/images/hyo-board-img/hot.gif" border="0" height="16">
			</c:if>
 			</td>
			<td align="center" width="100">${article.writer}</td>
			<td align="center" width="150">${article.reg_date}</td>
		</tr>	
		</c:forEach>
               
               
               
            </table>
            </c:if>
         </div>
         
         <div class="w3-col" style="width: 20%;">
            <div class="w3-display-container">
               <div class="w3-display-middle w3-metro-light-blue">
                  <i class="fa fa fa-plus-square-o" style="font-size: 48px;"></i>
               </div>
               <div class="w3-display-bottommiddle">
                  <p>more</p>
               </div>
            </div>
         </div>
      </div>
      
   </div>
      
</div>

<div class="w3-padding-32"></div>

<div class="w3-row-padding">
  <div class="w3-quarter w3-container w3-red"><p>quarter</p></div>
  <div class="w3-quarter w3-container w3-purple"><p>quarter</p></div>
  <div class="w3-half">
    <div class="w3-row">
      <div class="w3-col w3-container w3-blue" style="width:35%"><p>35%</p></div>
      <div class="w3-rest w3-container w3-green"><p>w3-rest</p></div>
    </div>
  </div>
</div>
