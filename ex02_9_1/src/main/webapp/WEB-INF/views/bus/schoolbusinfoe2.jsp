<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>통학버스 조회</title>
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


table {
		width : 80%;
		margin-left:auto;
		margin-right:auto;
		border-collapse: separate;	
		border-radius:8px;
	}

	th, td{
		padding:10px;
		font-size:14px;
		text-align:center;
	}
	th:first-child, td:first-child {
    	border-left: none;
  	}
  	th{
  		background-color: #a6cdff;
  		color:white;
  	}
  	td{
  		background-color:white;
  	}
	.header{
		border-bottom: 5px solid #ff9090;
		background-color:white;
		padding:20px 10px;
	}
	h2{
		margin:0;
		font-family: 'Do Hyeon', sans-serif;
		font-size:35px;
	}
	
	button{
		width: 150px;
      	padding:12px 10px;
      	margin:auto;
      	display:inline;
      	border : 1px solid #ccc;
      	border-radius : 4px;
      	box-sizing:border-box;
      	background-color:#ff9090;
      	color:white;
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
	        <p>통학버스 노선표</p>
	        <p>에너지밸리캠퍼스</p>
	        <br>
	        <a href="/board/schoolbusinfog1">광주(등교)</a>
	        <a href="/board/schoolbusinfog2">광주(하교)</a>
	        <a href="/board/schoolbusinfom1">목포(등교)</a>
	        <a href="/board/schoolbusinfom2">목포(하교)</a>
	        <a href="/board/schoolbusinfoe1">신해양캠퍼스</a>
	        <a href="/board/schoolbusinfoe2">에너지밸리캠퍼스</a>
	        <br><br><br>
	        
	        <p>에너지밸리캠퍼스 등교</p>
	        <table>
			<tr>
				<th>구분</th>
				<th>출발지점</th>
				<th>출발시간</th>
				<th>운행노선</th>
				<th>비고</th>
			</tr>	
			<tr>
				<td>광주방향</td>
				<td>송정역 시외버스승강장</td>
				<td>07:30</td>
				<td>송정역시외버스승강장(07:30) ⇒ 에너지밸리캠퍼스(08:00) ⇒ 다시 공영버스터미널(08:10) ⇒ 고막원 광목기사식당(08:12) ⇒ 무안우체국(08:25) ⇒ 도림캠퍼스</td> 
				<td>나라</td>
			</tr>	
			<tr>
				<td>광주방향</td>
				<td>동성고 육교옆</td>
				<td>07:30</td>
				<td>동성고육교옆(07:30) ⇒ 빛가람동주민센터(07:50) ⇒ 호남원예고앞(07:55) ⇒ 천주교성당승강장(08:00) ⇒ 에너지밸리캠퍼스(08:10) ⇒ 다시 공영버스터미널(08:20) ⇒ 고막원 광목기사식당(08:22) ⇒ 도림캠퍼스</td> 
				<td>나라</td>
			</tr>
			<tr>
				<td>도림방향</td>
				<td>도림캠퍼스</td>
				<td>09:10</td>
				<td>도림캠퍼스(09:10) ⇒ 에너지밸리캠퍼스(09:45)</td> 
				<td>학교차량</td>
			</tr>
			<tr>
				<td>도림방향</td>
				<td>도림캠퍼스</td>
				<td>13:00</td>
				<td>도림캠퍼스(13:00) ⇒ 에너지밸리캠퍼스(13:35)</td> 
				<td>학교차량</td>
			</tr>
			</table>
			<br>
			
	        <p>에너지밸리캠퍼스 하교</p>
	        <table>
			<tr>
				<th>구분</th>
				<th>종착지점</th>
				<th>출발시간</th>
				<th>운행노선</th>
				<th>비고</th>
			</tr>	
			<tr>
				<td>광주방향</td>
				<td>용두주공</td>
				<td>17:05</td>
				<td>도림캠퍼스(16:30) ⇒ 에너지밸리캠퍼스(17:05) ⇒ 송정역 ⇒ 월곡동부영Ⓐ ⇒ 어등산약국 ⇒ 수완 W여성병원 ⇒ 첨단 응암공원 ⇒ 용두주공</td> 
				<td>나라</td>
			</tr>	
			<tr>
				<td>광주방향</td>
				<td>동림센타</td>
				<td>17:05</td>
				<td>도림캠퍼스(16:30) ⇒ 에너지밸리캠퍼스(17:05) ⇒ 천주교성당 ⇒ 호남원예고 ⇒ 빛가람동주민센터 ⇒ 효천역 ⇒ 동성고육교 ⇒ 대광여고 ⇒ 
				신우아파트 ⇒ 상공회의소 ⇒ 신세계백화점 ⇒ 광천파출소 ⇒ 운암주공3단지Ⓐ ⇒ 동림센타</td> 
				<td>나라</td>
			</tr>
			<tr>
				<td>도림방향</td>
				<td>도림캠퍼스(목포방향)</td>
				<td>12:30</td>
				<td>에너지밸리캠퍼스(12:30) ⇒ 도림캠퍼스 버스승강장(13:05)</td> 
				<td>학교차량</td>
			</tr>
			<tr>
				<td>도림방향</td>
				<td>도림캠퍼스(목포방향)</td>
				<td>17:05</td>
				<td>에너지밸리캠퍼스(17:05) ⇒ 도림캠퍼스 버스승강장(17:40)</td> 
				<td>학교차량</td>
			</tr>
			</table>
			<br><br>
			<p>※ 신해양캠퍼스 및 에너지밸리캠퍼스는 수업이 없는 경우에는 운행이 불가하오니 양지하시기 바랍니다.</p>
	      </section>
	    </div>
	    </div>
	    
  </body>
</html>