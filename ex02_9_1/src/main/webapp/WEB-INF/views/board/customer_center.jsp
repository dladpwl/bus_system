<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<title>고객센터 </title>
</head>
<style> 
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap'); 
* {
  padding: 0;
  margin: 0;
}
body {
  background-color: white;
  color: black;
  
  
}
container {
  max-width: 700px;
  margin: 0 auto;
  box-sizing: border-box;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
}

header {
  display: flex;
  justify-content: space-around;
  width: 100%;
  align-items: center;
  padding: 1.2rem 0;
  background-color: #baddf9;
  font-family: 'Do Hyeon', sans-serif;
}
header > p {
  font-size: 1.5rem;
  font-weight: 700;
  color : white;
  font-family: 'Do Hyeon', sans-serif;
}
header > ul {
  display: flex;
  margin-right: 10%;
}
header > ul >li {
  list-style-type: none;
  margin-left: 1.5rem;
}

header > ul > li > a {
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: 800;
  padding-bottom: 5px;
  color: #89abc6;
}


header > ul > li >a:hover {
  border-bottom: 5px solid white ;
}
@media screen and (max-width:600px){
  header {
    flex-direction: column;
  }
}


li {
	list-style-type: none;
}

section {
  padding: 0 3rem;
  text-align: center;
}
section > p {
  margin-bottom: 2rem;
}
section > p:first-child {
  font-size: 2rem;
  font-weight: 900;
}
section > p:last-of-type {
  font-size: 1.3rem;
  font-weight: 500;
}
section > a {
  display: block;
  border: 1px solid black;
  width: 150px;
  font-size: 1.3rem;
  font-weight: 600;
  margin: auto;
  padding: 1rem;
  border-radius: 10px;
  text-decoration: none;
  background-color: white;
}
footer {
  margin-bottom: 2rem;
  font-size: 1.1rem;
  color: gray;
}
footer > a{
  text-decoration: none;
  color: white;
}

.horizontal {
    list-style-type:none; 
    margin:40 auto; 
    width:640px; 
    padding:0;  
    overflow:hidden;
}
.horizontal > li {
    float:left;
}
.horizontal li ul {
    display: none;
    margin: 0;
    padding: 0;
    list-style: none;
    position: relative;
    width: 100%;
}
.horizontal li:hover ul {
    display: block;
}
.horizontal li a {
    display: block; 
    text-decoration:none; 
    text-align:center; 
    padding:10px 25px;
    font-family:Arial; 
    font-size:12pt; 
    font-weight:bold; 
    color: white; 
    text-transform:uppercase; 
    letter-spacing:.08em;
}

.horizontal li a:hover {
    color: #89abc6;
}

.horizontal li:first-child a { border-left:0 }
.horizontal li:last-child a { border-right:0; }

.customer {
	flex: 0 0 375px;
	margin-top : 32px;
	border-radius: 8px;
	background-color: #F7F9FA;
	padding: 30px 33px;
	text-align: center;
	width: 300px;
	margin: 66px auto;
}
.customer_center {
	font-size: 20px;
	line-height: 28px;
	font-weight: 700;
	margin-bottom: 6px;
}
.time {
	color: #35C5F0;
	margin-left :16px;
}
.customer_css1 {
	font-size: 14px;
	line-height: 20px;
	color: black;
	position: relative;
	padding-left: 20px;
}
.customer_css2 {
	font-size: 14px;
	line-height: 20px;
	color: black;
	position: relative;
	padding-left: 20px;
}
.customer_css3 {
	margin-top : 28px;
}
.call-css {
	font-size: 20px;
	line-height:28px;
	color: blue;
	margin-bottom: 14px;
	
}
.call {
	display: inline-block;
	font-size: 24px;
	line-height: 1;
}
.call strong {
	font-weight : 700;
}


</style>
<body>
	<div class="wrapper">
	    <div class="container">
	    	 <header>
			   <p onclick ="location.href = '/board/main'">통합버스시스템</p>
			   <div class="navbar">
				<ul class="horizontal">               
				   <li><a href="#">버스조회 </a>
				   		<ul>
				            <li><a href="/select/resinfo">통학버스 조회 </a></li>
				            <li><a href="/bus/bus200">시내버스 정보 </a></li>
				            <li><a href="/bus/busGJ">시외버스 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">운행정보 </a>
				   		<ul>
				            <li><a href="/bus/busNara">버스회사안내 </a></li>
				            <li><a href="/bus/schoolbusinfog1">운행/노선 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">렌트카/택시 </a>
				        <ul>
				            <li><a href="/board/rent">렌트카 </a></li>
				            <li><a href="/board/taxi">택시 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">고객지원 </a>
				   		<ul>
				            <li><a href="/notice/list">공지사항 </a></li>
				            <li><a href="/suggestion/list">건의사항 </a></li>
				            <li><a href="/board/customer_center">고객센터 </a></li>
				        </ul>
				   </li>
				   <li><a href="/customer/modify">회원정보</a></li>
				</ul>
			</div>
			</header>
		<br><br>
		<div class="customer">
			<h2 class="customer_center">고객센터<span class="time">09:00 ~ 18:00</span></h2>
				<br>
				<div class="customer_css1"> 통학버스 운행 문의 : 담당부서 학생지원과 </div>
					<div class="customer_css3">
						<p class="cal1-css">
						<span class="call"></span>
						<strong>061 - 450 - 2032</strong></p>
					</div>
		
		</div>
		</div>
		
		
		</div>
		</body>
		</html>