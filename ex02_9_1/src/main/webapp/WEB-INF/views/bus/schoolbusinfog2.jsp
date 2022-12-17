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
	        <p>광주(하교)</p>
	        <br>
	        <a href="/board/schoolbusinfog1">광주(등교)</a>
	        <a href="/board/schoolbusinfog2">광주(하교)</a>
	        <a href="/board/schoolbusinfom1">목포(등교)</a>
	        <a href="/board/schoolbusinfom2">목포(하교)</a>
	        <a href="/board/schoolbusinfoe1">신해양캠퍼스</a>
	        <a href="/board/schoolbusinfoe2">에너지밸리캠퍼스</a>
	        <br><br><br>
	        
	        <table>
			<tr>
				<th>구분</th>
				<th>종착지점</th>
				<th>출발시간</th>
				<th>운행노선</th>
				<th>비고</th>
			</tr>	
			<tr>
				<td>송정방향</td>
				<td>용두주공</td>
				<td>16:30</td>
				<td>도림캠퍼스(16:30) ⇒ 에너지밸리캠퍼스(17:05) ⇒ 송정역 ⇒ 광산중학교 ⇒ 월곡동부영Ⓐ ⇒ 어등산약국 ⇒ 수완_W여성병원 ⇒ 첨단 응암공원 ⇒ 용두주공</td> 
				<td>에너지밸리캠퍼스경유</td>
			</tr>	
			<tr>
				<td>송정방향</td>
				<td>NC백화점 광주역점</td>
				<td>16:50</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 세정아울렛건너편 ⇒ 구호남대 ⇒ 추선회관 ⇒ 광진빌딩(양동초입구) ⇒ NC백화점광주역점 </td> 
				<td>나라</td>
			</tr>						
			<tr>
				<td>송정방향</td>
				<td>남부대</td>
				<td>16:50</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 광산중학교 ⇒ 월곡동부영Ⓐ ⇒ 삼성아파트 ⇒ 신가주공5단지 ⇒ 신가주공1단지 ⇒ 신가사거리 ⇒ 신창동우체국 ⇒ 남부대 </td> 
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>용두주공</td>
				<td>16:50</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 광산중학교 ⇒ 월곡동부영Ⓐ ⇒ 어등산약국 ⇒ 수완W여성병원 ⇒ 현진에버빌Ⓐ ⇒ 수완2차우미린Ⓐ ⇒ 첨단_응암공원 ⇒ 용두주공</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>금호지구 중흥Ⓐ</td>
				<td>18:25</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 서광주우체국 ⇒ 염주체육관 ⇒ 금호지구중흥Ⓐ</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>용두주공</td>
				<td>18:25</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 광산중학교 ⇒ 월곡동부영Ⓐ ⇒ 어등산약국 ⇒ 수완W여성병원 ⇒ 첨단응암공원 ⇒ 용두주공</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>남부대</td>
				<td>18:25</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 광산중학교 ⇒ 월곡동부영Ⓐ ⇒ 삼성아파트 ⇒ 신가주공5단지 ⇒ 신가주공1단지 ⇒ 신가사거리 ⇒ 신창동우체국 ⇒ 남부대</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>NC백화점 광주역점</td>
				<td>18:25</td>
				<td>도림캠퍼스 ⇒ 송정역 ⇒ 구송정파출소 ⇒ 세정아울렛건너편 ⇒ 구호남대 ⇒ 추선회관 ⇒ 광진빌딩(양동초입구) ⇒ NC백화점광주역점</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>송정역</td>
				<td>18:25</td>
				<td>도림캠퍼스 ⇒ 송정역</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>동림센타</td>
				<td>16:30</td>
				<td>송정역시외버스승강장(07:30) ⇒ 에너지밸리캠퍼스(08:00) ⇒ 다시_공영버스터미널(08:10) ⇒ 고막원_광목기사식당(08:12) ⇒ 무안우체국(08:25) ⇒ 도림캠퍼스</td>
				<td>에너지밸리캠퍼스경유</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>문흥동 샛터코아</td>
				<td>16:50</td>
				<td>도림캠퍼스 ⇒ 무안우체국 ⇒ 고막원_광목기사식당_건너편_횡단보도 ⇒ 천주교성당승강장 ⇒ 탑_모텔 ⇒ 효천역 ⇒ 남광주농협진월동지점 ⇒ 조선대 ⇒ 산수오거리 ⇒ 백림약국 ⇒ 동신고 ⇒ 북광주전화국 ⇒ 문흥동샛터코아</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>일곡병원</td>
				<td>16:50</td>
				<td>도림캠퍼스 ⇒ 빛가람동주민센터 ⇒ 효천역 ⇒ 남광주농협진월동지점 ⇒ 백운광장 ⇒ 대창주유소 ⇒ 한미쇼핑 ⇒ 구터미널 ⇒ 한국화장품 ⇒ 북구청 ⇒ 한국전력공사 ⇒ 31사단정문 ⇒ 일곡병원</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>문흥동 샛터코아</td>
				<td>18:15</td>
				<td>도림캠퍼스 ⇒ 지원동삼영예식장 ⇒ 삼익세라믹Ⓐ ⇒ 학동시장 ⇒ 조선대 ⇒ 산수오거리 ⇒ 백림약국 ⇒ 동신고 ⇒ 북광주전화국 ⇒ 문흥동샛터코아</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>일곡119안전센터</td>
				<td>18:15</td>
				<td>도림캠퍼스 ⇒ 백운광장 ⇒ 대창주유소 ⇒ 한미쇼핑 ⇒ 구터미널 ⇒ 한국화장품 ⇒ 북구청 ⇒ 한국전력공사 ⇒ 31사단정문 ⇒ 일곡119안전센터</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>남광주농협 진월동지점</td>
				<td>18:15</td>
				<td>도림캠퍼스 ⇒ 무안우체국 ⇒ 고막원_광목기사식당_건너편_횡단보도 ⇒ 다시_공영버스터미널 ⇒ 천주교성당승강장 ⇒ 빛가람동주민센터 ⇒ 탑_모텔 ⇒ 효천역 ⇒ 남광주농협진월동지점</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>동림센타</td>
				<td>18:15</td>
				<td>도림캠퍼스 ⇒ 남광주농협진월동지점 ⇒ 대광여고 ⇒ 신우Ⓐ ⇒ 구동강한의원 ⇒ 상공회의소 ⇒ 신세계백화점 ⇒ 광천파출소 ⇒ 운암주공3단지Ⓐ ⇒ 동림센타</td>
				<td>에너지밸리캠퍼스경유</td>
			</tr>
			</table>
			<br>
	       
	      </section>
	    </div>
	    </div>
	    
  </body>
</html>