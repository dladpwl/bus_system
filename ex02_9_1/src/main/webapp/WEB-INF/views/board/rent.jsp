<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>렌트카 </title>
<style>
* {
  padding: 0;
  margin: 0;
}
body {
  background-color: rgb(240,248,255);
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
  background-color: white;
}
header > p {
  font-size: 1.5rem;
  font-weight: 700;
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
  color: #9cd3ff;
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
  border: 1px solid #0d74d3;
  width: 450px;
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
    color: #a9cff8; 
    text-transform:uppercase; 
    letter-spacing:.08em;
}

.horizontal li a:hover {
    color:#0d74d3;
}

.horizontal li:first-child a { border-left:0 }
.horizontal li:last-child a { border-right:0; }

.rent-img {
	width: 300px;
	height: 140px;
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
	      <section>
	        <p>목포대학교 주변 렌트카 찾기 </p>
	        <br>
	        <a href="https://m.greencar.co.kr/index.do">
	        <img src="data:image/png;base64,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"
	        alt="green car" class="rent-img">
	        </a>
	        <br><br>
	        <a href="https://www.socar.kr/">
	        <img src="data:image/png;base64,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"
	        alt="socar" class="rent-img">
	        </a>
	      </section>
	      </div>
	      </div>
	      </body>
	      </html>