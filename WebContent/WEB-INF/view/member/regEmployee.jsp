<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<header class="w3-container w3-teal">
  <h1>Login Example</h1>
</header>

<div class="w3-container w3-half w3-margin-top">

<form class="w3-container w3-card-4">

<p>
<label>이름</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>

<p>
<label>아이디</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>

<p>
<label>비밀번호</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>

<p>
<label>부서</label>
  <select class="w3-select" name="option">
    <option value="" disabled selected>부서를 선택하세요.</option>
    <option value="1">경영지원부서</option>
    <option value="2">개발부서</option>
    <option value="3">디자인부서</option>
  </select>
</p>

<p>
<label>팀</label>
  <select class="w3-select" name="option">
    <option value="" disabled selected>팀을 선택하세요.</option>
    <option value="1">경영지원부서</option>
    <option value="2">개발부서</option>
    <option value="3">디자인부서</option>
  </select>
</p>

<p>
<label>직위</label>
</p>
<p>
<input class="w3-radio" type="radio" name="gender" value="female">
<label>팀장</label></p>

<p>
<input class="w3-radio" type="radio" name="gender" value="female">
<label>대리</label></p>

<p>
<input class="w3-radio" type="radio" name="gender" value="female">
<label>사원</label>
</p>

<p>
<label>입사일</label>
<input class="w3-input w3-padding-16 w3-border" type="date" placeholder="Date" name="date" value="2017-11-16T20:00">
</p>


<p>
<label>이메일</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>


<p>
<label>핸드폰 번호</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>

<p>
<label>사내 번호</label>
<input class="w3-input" type="text" style="width:90%" required>
</p>

<p>
<button class="w3-button w3-section w3-teal w3-ripple"> 입력 </button></p>

</form>

</div>

</body>
</html> 