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
	        <p>광주(등교)</p>
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
				<th>출발지점</th>
				<th>출발시간</th>
				<th>운행노선</th>
				<th>비고</th>
			</tr>	
			<tr>
				<td>송정방향</td>
				<td>염주체육관 건너편 육교</td>
				<td>7:10</td>
				<td>염주체육관건너편육교(07:10) ⇒ 서광주우체국건너편_CU편의점(07:13) ⇒ 구호남대_한마음신경정신과(07:15) ⇒ 세정아울렛버스승강장(07:17)
				    ⇒ 구송정파출소건너편_할리매장옆승강장(07:19) ⇒ 송정역시외버스승강장(07:24) ⇒ 도림캠퍼스 </td> 
				<td>나라</td>
			</tr>	
			<tr>
				<td>송정방향</td>
				<td>금호지구 중흥Ⓐ</td>
				<td>7:10</td>
				<td>금호지구중흥Ⓐ건너편승강장(07:10) ⇒ 구송정파출소건너편_할리매장옆승강장(07:17) ⇒ 선운휴먼시아버스승강장(07:22) ⇒ 도림캠퍼스 </td> 
				<td>나라</td>
			</tr>						
			<tr>
				<td>송정방향</td>
				<td>시립 장애인복지관</td>
				<td>7:00</td>
				<td>시립장애인복지관육교(07:00) ⇒ 문화신협운암지점(07:03) ⇒ 신세계백화점육교(07:10) ⇒ 추선회관앞(07:13) ⇒ 구호남대_한마음신경정신과(07:18) ⇒ 
				세정아울렛버스승강장(07:20) ⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 송정역시외버스승강장(07:30) ⇒ 도림캠퍼스 </td> 
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>NC백화점 광주역점</td>
				<td>7:10</td>
				<td>NC백화점 광주역점(07:10) ⇒ 서구청버스승강장(07:15) ⇒ 추선회관(07:17) ⇒ 구호남대_한마음 신경정신과(07:19) ⇒ 세정아울렛버스승강장(07:20) 
				⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 송정역시외버스승강장(07:30) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>일곡119안전센터</td>
				<td>7:00</td>
				<td>일곡119안전센터(07:00) ⇒ 31사단정문삼거리(07:02) ⇒ 오치사거리_책돌이도서관승강장(07:03) ⇒ 북구청보건소사거리_메가박스건너편경민회관(07:05) ⇒ 
				광주중앙교회건너편_국제열쇠(07:07) ⇒ 롯데백화점건너편_금호할인마트(07:10) ⇒ 독립로알뜰주유소(07:15) ⇒ 백운초정문(07:17) ⇒ 동성고앞육교(07:20) ⇒ 천주교성당승강장(07:40) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>연제동 롯데칠성 승강장</td>
				<td>7:00</td>
				<td>연제동 롯데칠성승강장(07:00) ⇒ 용두주공승강장(07:05) ⇒ 첨단응암공원승강장(07:10) ⇒ 수완2차우미린Ⓐ승강장(07:12) ⇒ 현진에버빌Ⓐ승강장(07:13) ⇒ 
				수완W여성병원(07:15) ⇒ 어등산약국(07:16) ⇒ 월곡동부영Ⓐ승강장(07:20) ⇒ 광산중학교건너편승강장(07:22) ⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 
				송정역시외버스승강장(07:30) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>첨단응암공원 승강장</td>
				<td>7:10</td>
				<td>첨단응암공원승강장(07:10) ⇒ 수완2차우미린Ⓐ승강장(07:12) ⇒ 현진에버빌Ⓐ승강장(07:13) ⇒ 수완W여성병원(07:15) ⇒ 어등산약국(07:16) ⇒ 
				월곡동부영Ⓐ승강장(07:20) ⇒ 광산중학교건너편승강장(07:22) ⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 송정역시외버스승강장(07:30) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>남부대 정문</td>
				<td>7:05</td>
				<td>남부대정문(07:05) ⇒ 신창동우체국(07:10) ⇒ 우미Ⓐ건너편_비아신협(07:12) ⇒ 운남주공1단지육교_KCC페인트(07:14) ⇒ 운남주공5단지육교_목련마을승강장(07:16) 
				⇒ 운남동삼성아파트건너편승강장(07:17) ⇒ 월곡동부영Ⓐ승강장(07:20) ⇒ 광산중학교건너편승강장(07:22) ⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 
				송정역시외버스승강장(07:30) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>월곡동 부영Ⓐ 승강장</td>
				<td>7:20</td>
				<td>월곡동부영Ⓐ승강장(07:20) ⇒ 광산중학교건너편승강장(07:22) ⇒ 구송정파출소건너편_할리매장옆승강장(07:25) ⇒ 송정역시외버스승강장(07:30) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>송정방향</td>
				<td>송정역 시외버스 승강장</td>
				<td>7:30</td>
				<td>송정역시외버스승강장(07:30) ⇒ 에너지밸리캠퍼스(08:00) ⇒ 다시_공영버스터미널(08:10) ⇒ 고막원_광목기사식당(08:12) ⇒ 무안우체국(08:25) ⇒ 도림캠퍼스</td>
				<td>에너지밸리캠퍼스경유</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>문흥동 샛터코아</td>
				<td>7:00</td>
				<td>문흥동샛터코아건너편_광주은행 문흥지점(07:00) ⇒ 문화동홈플러스건너편(07:02) ⇒ 북부소방서우산119안전센터(07:04) ⇒ 계림동E마트(07:05) ⇒ 백림약국건너편(07:07) ⇒ 
				산수교회건너편승강장(07:09) ⇒ 조선대건너편우측10m지점_공대방향(07:10) ⇒ 동성고앞육교(07:20) ⇒ 천주교성당승강장(07:40) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>지원2동 주민센터</td>
				<td>7:00</td>
				<td>지원2동주민센터승강장_농협하나로마트(07:00) ⇒ 삼익세라믹Ⓐ정문_남광주농협앞(07:02) ⇒ 학동시장버스승강장_부흥교회앞(07:04) ⇒ 
				양림휴먼시아Ⓐ(07:06) ⇒ 빅스포앞((07:10) ⇒ 동성고앞육교(07:15) ⇒ 효천역승강장(07:17) ⇒ 천주교성당승강장(07:40) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>LG전자베스트샵 용봉점</td>
				<td>7:00</td>
				<td>LG전자베스트샵용봉점(07:00) ⇒ 서광주농협동운지점(07:03) ⇒ 광천파출소건너편_광주은행(07:05) ⇒ 상공회의소(07:07) ⇒ 농협월산동지점(07:08) ⇒ 
				광주은행주월지점(07:10) ⇒ 빅스포앞(07:12) ⇒ 동성고앞육교(07:20) ⇒ 효천역승강장(07:21) ⇒ 천주교성당승강장(07:40) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>동성고 육교옆</td>
				<td>7:30</td>
				<td>동성고육교옆(07:30) ⇒ 효천역승강장(07:32) ⇒ 남평 탑모텔(07:45) ⇒ 천주교성당승강장(08:00) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>동성고 육교옆</td>
				<td>7:30</td>
				<td>동성고육교옆(07:30) ⇒ 효천역승강장(07:32) ⇒ 남평 탑모텔(07:45) ⇒ 천주교성당승강장(08:00) ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>진월방향</td>
				<td>동성고 육교옆</td>
				<td>7:30</td>
				<td>동성고육교옆(07:30) ⇒ 빛가람동주민센터(07:50) ⇒ 호남원예고앞(07:55) ⇒ 천주교성당승강장(08:00) ⇒ 에너지밸리캠퍼스(08:10) ⇒ 다시 공영버스터미널(08:20) ⇒ 
				고막원_광목기사식당(08:22) ⇒ 도림캠퍼스</td>
				<td>에너지밸리캠퍼스경유</td>
			</tr>
			</table>
			<br>
	       
	      </section>
	    </div>
	    </div>
	    
  </body>
</html>