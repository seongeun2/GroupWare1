<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  //달력
  $(document).ready(function () {
	    var date = new Date();
	    var currentMonth = date.getMonth();
	    var currentDate = date.getDate();
	    var currentYear = date.getFullYear();

	    $('#startDt').datepicker({
	        minDate: new Date(currentYear, currentMonth, currentDate),
	        dateFormat: 'yy-mm-dd'
	    });
	    $('#ednDt').datepicker({
	        minDate: new Date(currentYear, currentMonth, currentDate),
	        dateFormat: 'yy-mm-dd'
	});
  });
  </script>
  
  <!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24" style="margin-left: 110px; margin-right: 110px;">
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
		<p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
		<p>기안서</p>
	</div>
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
		<p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
		<p>휴가신청서</p>
	</div>
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
		<p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
		<p>지출결의서</p>
	</div>
</div>
   
   <!-- 사이 줄 그어줍니다. -->
<hr class="w3-opacity">
<div class="w3-padding-32 w3-border" style="margin-left: 120px; margin-right: 120px;">
<form action="#" target="_blank">
	<div class="w3-row w3-padding">
		<div class="w3-col" style="width: 55%; font-size: 100px; padding-left: 170px;">휴가신청서</div>
		<!-- 1번 결재 -->
		<div class="w3-col" style="width: 15%; height: 120px">
			<div class="w3-container w3-center w3-border">
				<p>1번 결재자</p>
			</div>
			<div class="w3-container w3-center w3-border">
				<img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
           			style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
        	</div>
      	</div>
      	<!-- 2번 결재 -->
		<div class="w3-col" style="width: 15%; height: 120px">
			<div class="w3-container w3-center w3-border">
				<p>2번 결재자</p>
         	</div>
         	<div class="w3-container w3-center w3-border">
           		<img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
           			style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
        	</div>
      	</div>
      	<!-- 3번 결재 -->
      	<div class="w3-col" style="width: 15%; height: 120px">
         	<div class="w3-container w3-center w3-border">
           		<p>3번 결재자</p>
         	</div>
         	<div class="w3-container w3-center w3-border">
           		<img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
            		style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
         	</div>
      	</div>
	</div>
    
	<div class="w3-padding-32"></div>
	<div class="w3-row-padding">
		<div class="w3-half">
			<label>작성자</label>
			<input class="w3-input w3-border" type="text" value="${vo.name}" readonly >
		</div>
		<div class="w3-quarter">
			<label>부서</label>
			<input class="w3-input w3-border" type="text" value="${vo.deptName}" readonly>
		</div>
		<div class="w3-quarter">
			<label>팀명</label>
			<input class="w3-input w3-border" type="text" value="${vo.teamName}" readonly>
		</div>
	</div>
	
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>제목</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
	</div>
	
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
      <label>휴가종류</label><br>
	  <input class="w3-radio" type="radio" name="kind" value="연차" checked><label>연차</label>
	  <input class="w3-radio" type="radio" name="kind" value="월차" ><label>월차</label>
	  <input class="w3-radio" type="radio" name="kind" value="병가" ><label>병가</label>
	  <input class="w3-radio" type="radio" name="kind" value="경조휴가" ><label>경조휴가</label>
	</div>
   
	<div class="w3-padding-16"></div>
	<div class="w3-row-padding">
		<div class="w3-half">
			<label>휴가시작</label>
			<input class="w3-input w3-border" id="startDt" type="text" name="Name">
		</div>  
      
		<div class="w3-half">
			<label>휴가종료</label>
			<input class="w3-input w3-border" id="ednDt" type="text" name="Name">
		</div>
	</div>

	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>사유</label>
        <textarea class="w3-input w3-border" type="text" name="Message" 
        						required style="height:200px; resize: none;" ></textarea>
	</div>
      
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>작성일자</label>
        <input class="w3-input w3-border" type="text" name="Email" required>
	</div>
      
	<div class="w3-padding">
		<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
		<i class="fa fa-paper-plane w3-margin-right"></i>작성완료</button>
     	<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
		<i class="fa fa-paper-plane w3-margin-right"></i>다시작성</button>
	</div>
</form></div>
  
<div class="w3-padding-16"></div>
</html>