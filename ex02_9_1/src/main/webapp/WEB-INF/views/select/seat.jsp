<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
    <%

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

<title>좌석선택</title>
<!-- jQuery CDN -->
<script src="https://code.jquery.com/jquery-3.4.0.js"
  integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo=" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

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

.showSeatArea{
	display : inline-block;
}

.SeatTop{
	margin-top: 40px;
    padding-bottom: 40px;
    text-align: center;
}
.btn{
	display : block;
}
.btn1{
	display : inline-block;
	}

</style>
<body>
	<div class="wrapper">
	    <div class="container">
	    	 <header>
			   <p onclick ="location.href = '/board/main'" style="font-family: 'Do Hyeon', sans-serif;">통합버스시스템</p>
			   <div class="navbar">
				<ul class="horizontal">               
				   <li><a href="#">버스조회 </a>
				   		<ul>
				            <li><a href="#">통학버스 조회 </a></li>
				            <li><a href="#">시내버스 정보 </a></li>
				            <li><a href="#">시외버스 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">운행정보 </a>
				   		<ul>
				            <li><a href="#">버스회사안내 </a></li>
				            <li><a href="/board/schoolbusinfog1">운행/노선 정보 </a></li>
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
	</div>
	</div>


</head>
<body> 

	<!-- 좌석 -->
	<div  class="SeatTop">
			<div class="btn-group" data-toggle="buttons" id="S1_div">
				<label class="btn btn btn-big btn-primary" for="S1" id="S1_lb">
				<input
					type="checkbox" autocomplete="off" id="S1" value="S1">S01</label> <label
					class="btn btn btn-big btn-primary" for="S2" id="S2_lb"><input
					type="checkbox" autocomplete="off" id="S2">S02</label> 
			</div>
			
			<div class="btn-group" data-toggle="buttons" id="S3_div">
				<label class="btn btn btn-big btn-primary" for="S3" id="S3_lb"><input
					type="checkbox" autocomplete="off" id="S3" value="S3">S03</label> <label
					class="btn btn btn-big btn-primary" for="S4" id="S4_lb"><input
					type="checkbox" autocomplete="off" id="S3">S04</label> 
			</div>
			
			<br>
			<br>
			<div class="btn-group" data-toggle="buttons" id="S5_div">
				<label class="btn btn btn-big btn-primary" for="S5" id="S5_lb"><input
					type="checkbox" autocomplete="off" id="S5">S05</label> <label
					class="btn btn btn-big btn-primary" for="S6" id="S6_lb"><input
					type="checkbox" autocomplete="off" id="S6">S06</label> 
			</div>
			<div class="btn-group" data-toggle="buttons" id="S7_div">
				<label class="btn btn btn-big btn-primary" for="S7" id="S7_lb"><input
					type="checkbox" autocomplete="off" id="S7" value="S1">S07</label> <label
					class="btn btn btn-big btn-primary" for="S8" id="S8_lb"><input
					type="checkbox" autocomplete="off" id="S8">S08</label> 
			</div>
			<br>
			<br>
			<div class="btn-group" data-toggle="buttons" id="S9_div">
				<label class="btn btn btn-big btn-primary" for="S9" id="S9_lb"><input
					type="checkbox" autocomplete="off" id="S9">S09</label> <label
					class="btn btn btn-big btn-primary" for="S10" id="S10_lb"><input
					type="checkbox" autocomplete="off" id="S10">S10</label>
			</div>
			<div class="btn-group" data-toggle="buttons" id="S11_div">
				<label class="btn btn btn-big btn-primary" for="S11" id="S11_lb"><input
					type="checkbox" autocomplete="off" id="S11">S11</label> <label
					class="btn btn btn-big btn-primary" for="S12" id="S12_lb"><input
					type="checkbox" autocomplete="off" id="S12">S12</label>
			</div>
			<br>
			<br>
			<div class="btn-group" data-toggle="buttons" id="S13_div">
				<label class="btn btn btn-big btn-primary" for="S13" id="S13_lb"><input
					type="checkbox" autocomplete="off" id="S13">S13</label> <label
					class="btn btn btn-big btn-primary" for="S14" id="S14_lb"><input
					type="checkbox" autocomplete="off" id="S14">S14</label>
			</div>
			<div class="btn-group" data-toggle="buttons" id="S15_div">
				<label class="btn btn btn-big btn-primary" for="S15" id="S15_lb"><input
					type="checkbox" autocomplete="off" id="S15">S15</label> <label
					class="btn btn btn-big btn-primary" for="S16" id="S16_lb"><input
					type="checkbox" autocomplete="off" id="S16">S16</label>
			</div>
			<br>
			<br>
			<div class="btn-group" data-toggle="buttons" id="S17_div">
				<label class="btn btn btn-big btn-primary" for="S17" id="S17_lb"><input
					type="checkbox" autocomplete="off" id="S17">S17</label> <label
					class="btn btn btn-big btn-primary" for="S18" id="S18_lb"><input
					type="checkbox" autocomplete="off" id="S18">S18</label>
			</div>
			<div class="btn-group" data-toggle="buttons" id="S19_div">
				<label class="btn btn btn-big btn-primary" for="S19" id="S19_lb"><input
					type="checkbox" autocomplete="off" id="S19">S19</label> <label
					class="btn btn btn-big btn-primary" for="S20" id="S20_lb"><input
					type="checkbox" autocomplete="off" id="S20">S20</label>
			</div>
			<br>
			<br>
			<div class="btn-group" data-toggle="buttons" id="S21_div">
				<label class="btn btn btn-big btn-primary" for="S21" id="S21_lb"><input
					type="checkbox" autocomplete="off" id="S21">S21</label> <label
					class="btn btn btn-big btn-primary" for="S22" id="S22_lb"><input
					type="checkbox" autocomplete="off" id="S22">S22</label>
			</div>
			<div class="btn-group" data-toggle="buttons" id="S23_div">
				<label class="btn btn btn-big btn-primary" for="S23" id="S23_lb"><input
					type="checkbox" autocomplete="off" id="S23">S23</label> <label
					class="btn btn btn-big btn-primary" for="S24" id="S24_lb"><input
					type="checkbox" autocomplete="off" id="S24">S24</label>
			</div>
			<br>
			<br>
		</div>
	<form action="showCheckinInfo" method="POST" name="frm">
		<input type="hidden" name="seatTableName" value="${seat}">
		<div class="hiddenArea"></div>
		<div  class="SeatTop">
			<div class="css_btnSubmit btn1" align="center" style="text-align: center;" >
				<input type="button" value="좌석선택하기" class="btn btn-big btn-success" onclick="location.href='/reservation/list'"/>
			</div>
		</div>
	</form>

	<br><br>	

	

</body>
</html>