<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>

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
<form action="#" target="_blank">
   <div style="margin-left:300px; margin-right:300px;">
      <div class="w3-row w3-padding w3-blue-grey">
         <div class="w3-padding-16"></div>
         
         <div class="w3-col" style="width: 55%;"><p class="w3-xxxlarge">������Ǽ�</p></div>
         <!-- 1�� ���� -->
         <div class="w3-col" style="width: 15%; height: 120px">
            <div class="w3-container w3-center w3-border">
               <p>1�� ������</p>
            </div>
            <div class="w3-container w3-center w3-border">
               <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                       style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
              </div>
            </div>
            <!-- 2�� ���� -->
         <div class="w3-col" style="width: 15%; height: 120px">
            <div class="w3-container w3-center w3-border">
               <p>2�� ������</p>
               </div>
               <div class="w3-container w3-center w3-border">
                    <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                       style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
              </div>
            </div>
            <!-- 3�� ���� -->
            <div class="w3-col" style="width: 15%; height: 120px">
               <div class="w3-container w3-center w3-border">
                    <p>3�� ������</p>
               </div>
               <div class="w3-container w3-center w3-border">
                    <img src="${pageContext.servletContext.contextPath}/resources/images/mypic.gif" 
                     style="width: 100px; height: 100px" class="w3-circle" alt="Avatar">
               </div>
            </div>
            
            <div class="w3-padding-16"></div>
      </div>
    
   <div class="w3-padding-16"></div>
   
   <div class="w3-blue-grey">
      <div class="w3-padding-16"></div>
      
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
              <input class="w3-input w3-border" type="text" name="Email" required>
         </div>
   
      <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>����</label>
           <textarea class="w3-input w3-border" type="text" name="Message" 
                             required style="height:200px; resize: none;" >
   �������� : 2018-01-01
   ����ݾ� : 200,000
   ������� : �߱� �Ĵ�
    </textarea>
      </div>
         
      <div class="w3-padding-16"></div>
      <div class="w3-padding">
         <label>�ۼ�����</label>
           <input class="w3-input w3-border" type="text" name="Email" required>
      </div>
      
      <div class="w3-padding-16"></div>
   </div>   
   
   <div class="w3-padding-16"></div>
   
   <div class="w3-center">
      <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ۼ��Ϸ�</button>
        <button type="submit" class="w3-button w3-black w3-margin-bottom w3-hover-teal">
      <i class="fa fa-paper-plane w3-margin-right"></i>�ٽ��ۼ�</button>
   </div>
   
   </div>
</form></div>
  
<div class="w3-padding-16"></div>
</html>