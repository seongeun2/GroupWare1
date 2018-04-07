<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script>
//�ݷ� ��ư
function docReturn() {
//�ݷ� Ŭ���� update���� , st04 (�ݷ�) �� ���º��� �� ������Ȳ ����Ʈ(allList)�� �̵�.
}
</script>
  
  <!-- Contact Section -->
<div class="w3-row-padding w3-center w3-padding-24" style="margin-left: 110px; margin-right: 110px;">
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type1'">
		<p><i class="fa fa-envelope w3-xxlarge w3-text-light-grey"></i></p>
		<p>��ȼ�</p>
	</div>
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type2'">
		<p><i class="fa fa-map-marker w3-xxlarge w3-text-light-grey"></i></p>
		<p>�ް���û��</p>
	</div>
	<div class="w3-third w3-dark-grey w3-button w3-hover-teal" onclick="location.href='/GroupWare/approval/type3'">
		<p><i class="fa fa-phone w3-xxlarge w3-text-light-grey"></i></p>
		<p>������Ǽ�</p>
	</div>
</div>
   
   <!-- ���� �� �׾��ݴϴ�. -->
<hr class="w3-opacity">
<div class="w3-padding-32 w3-border" style="margin-left: 120px; margin-right: 120px;">
<form action="ap_update" target="_blank">
	<div class="w3-row w3-padding">
		<div class="w3-col" style="width: 55%; font-size: 100px; padding-left: 170px;">�ް���û��</div>
		<!-- 1�� ���� -->
		<div class="w3-col" style="width: 15%; height: 120px">
			<div class="w3-container w3-center w3-border">
				<p>${vo.user1}</p>
			</div>
			<div class="w3-container w3-center w3-border">
				<img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
           			style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
        	</div>
      	</div>
      	<!-- 2�� ���� -->
		<div class="w3-col" style="width: 15%; height: 120px">
			<div class="w3-container w3-center w3-border">
				<p>${vo.user2}</p>
         	</div>
         	<div class="w3-container w3-center w3-border">
           		<img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
           			style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
        	</div>
      	</div>
      	<!-- 3�� ���� -->
      	<div class="w3-col" style="width: 15%; height: 120px">
         	<div class="w3-container w3-center w3-border">
           		<p>${vo.user3}</p>
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
			<label>�ۼ���</label>
			<input class="w3-input w3-border" type="text" value="${vo.name}" readonly >
		</div>
		<div class="w3-quarter">
			<label>�μ�</label>
			<input class="w3-input w3-border" type="text" value="${vo.deptName}" readonly>
		</div>
		<div class="w3-quarter">
			<label>����</label>
			<input class="w3-input w3-border" type="text" value="${vo.teamName}" readonly>
		</div>
	</div>
	
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>����</label>
        <input class="w3-input w3-border" type="text" value="${vo.title}" readonly>
	</div>
	
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
      <label>�ް�����</label><br>
	  <input class="w3-input w3-border" type="text" name="kind" value="�� �־����" readonly>
	</div>
   
	<div class="w3-padding-16"></div>
	<div class="w3-row-padding">
		<div class="w3-half">
			<label>�ް�����</label>
			<input class="w3-input w3-border" id="startDt" type="text" value="${vo.startDt}" readonly>
		</div>  
      
		<div class="w3-half">
			<label>�ް�����</label>
			<input class="w3-input w3-border" id="ednDt" type="text" value="${vo.endDt}" readonly>
		</div>
	</div>

	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>����</label>
        <textarea class="w3-input w3-border" type="text" name="Message" 
        		required style="height:200px; resize: none;" readonly>${vo.content}</textarea>
	</div>
      
	<div class="w3-padding-16"></div>
	<div class="w3-padding">
		<label>�ۼ�����</label>
        <input class="w3-input w3-border" type="text" value="${vo.inDt}" readonly>
	</div>
      
	<div class="w3-padding">
		<button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
		<i class="fa fa-paper-plane w3-margin-right"></i>����</button>
     	<button onclick="docReturn();" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
		<i class="fa fa-paper-plane w3-margin-right"></i>�ݷ�</button>
	</div>
</form></div>
  
<div class="w3-padding-16"></div>
</html>