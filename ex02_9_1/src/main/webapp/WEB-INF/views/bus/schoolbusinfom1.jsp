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
	        <p>목포(등교)</p>
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
				<th>출발지점</th>
				<th>출발시간</th>
				<th>차량편수</th>
				<th>운행노선</th>
				<th>비고</th>
			</tr>	
			<tr>
				<td>대성초등건너편승강장</td>
				<td>08:10</td>
				<td>2</td>
				<td>대성초등건너편승강장 ⇒ 보건소사거리 ⇒ 신안비치Ⓐ1차건너편_T´Station(타이어) ⇒ 연산동현대산업개발Ⓐ ⇒ 서해안장래식장건너편승강장 ⇒ 용해동골드클래스705동앞 
				⇒ 포미타운105동건너편 ⇒ 도림캠퍼스</td> 
				<td>뉴승달</td>
			</tr>	
			<tr>
				<td>대성초등건너편승강장</td>
				<td>08:10</td>
				<td>1</td>
				<td>대성초등건너편승강장 ⇒ 보건소사거리 ⇒ 신안비치Ⓐ1차건너편_T´Station(타이어) ⇒ 연산동현대산업개발Ⓐ ⇒ 서해안장래식장건너편승강장 ⇒ 용해동골드클래스705동앞 
				⇒ 포미타운105동건너편⇒도림캠퍼스</td> 
				<td>학교차량</td>
			</tr>						
			<tr>
				<td>대성초등건너편승강장</td>
				<td>09:20</td>
				<td>2</td>
				<td>대성초등건너편승강장 ⇒ 보건소사거리 ⇒ 신안비치Ⓐ1차건너편_T´Station(타이어) ⇒ 연산동현대산업개발Ⓐ ⇒ 서해안장래식장건너편승강장 ⇒ 용해동골드클래스705동앞 
				⇒ 포미타운105동건너편 ⇒ 도림캠퍼스</td> 
				<td>학교차량</td>
			</tr>
			<tr>
				<td>신안병원건너편</td>
				<td>08:10</td>
				<td>1</td>
				<td>신안병원건너편 ⇒ 목포역한국은행건너편 ⇒ 구연동육교_구호남약국 ⇒ 2호광장_서울갈비 ⇒ MBC방송국 ⇒ 버스터미널건너편_시내버스승강장 ⇒ 석현동버스승강장 ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			<tr>
				<td>신안병원건너편</td>
				<td>08:10</td>
				<td>1</td>
				<td>신안병원건너편 ⇒ 목포역한국은행건너편 ⇒ 구연동육교_구호남약국 ⇒ 2호광장_서울갈비 ⇒ MBC방송국 ⇒ 버스터미널건너편_시내버스승강장 ⇒ 석현동버스승강장 ⇒ 도림캠퍼스</td>
				<td>학교차량</td>
			</tr>
			<tr>
				<td>용해동 신안인스빌</td>
				<td>08:10</td>
				<td>1</td>
				<td>용해동_신안인스빌승강장 ⇒ 하당_청담유성형외과 ⇒ 빕스앞(하당소방서건너편육교) ⇒ 석현동버스승강장 ⇒ 도림캠퍼스</td>
				<td>뉴승달 월-목 운행</td>
			</tr>
			<tr>
				<td>용해동 신안인스빌</td>
				<td>08:10</td>
				<td>2</td>
				<td>용해동_신안인스빌승강장 ⇒ 하당_청담유성형외과 ⇒ 빕스앞(하당소방서건너편육교) ⇒ 석현동버스승강장 ⇒ 도림캠퍼스</td>
				<td>학교차량</td>
			</tr>
			<tr>
				<td>용해동 신안인스빌</td>
				<td>09:20</td>
				<td>1</td>
				<td>용해동_신안인스빌승강장 ⇒ 하당_청담유성형외과 ⇒ 빕스앞(하당소방서건너편육교) ⇒ 석현동버스승강장 ⇒ 도림캠퍼스</td>
				<td>학교차량</td>
			</tr>
			<tr>
				<td>옥암주공승강장</td>
				<td>08:10</td>
				<td>1</td>
				<td>옥암주공_승강장(시민문화체육센터_건너편) ⇒ LG베스트샵_앞_승강장(전라남도보훈회관_건너편) ⇒ 오룡주공_승강장(전라남도체육회관_건너편) ⇒ 
				도청프라자_승강장(도청, 만남의광장건너편) ⇒ 근화베아체_승강장(전라남도교육청_건너편) ⇒ 남악애시앙_승강장 ⇒ 도림캠퍼스</td>
				<td>뉴승달 나라</td>
			</tr>
			<tr>
				<td>옥암주공승강장</td>
				<td>08:10</td>
				<td>1</td>
				<td>옥암주공_승강장(시민문화체육센터_건너편) ⇒ LG베스트샵_앞_승강장(전라남도보훈회관_건너편) ⇒ 오룡주공_승강장(전라남도체육회관_건너편) ⇒ 
				도청프라자_승강장(도청, 만남의광장건너편) ⇒ 근화베아체_승강장(전라남도교육청_건너편) ⇒ 남악애시앙_승강장 ⇒ 도림캠퍼스역</td>
				<td>학교차량</td>
			</tr>
			<tr>
				<td>옥암주공승강장</td>
				<td>09:20</td>
				<td>1</td>
				<td>옥암주공_승강장(시민문화체육센터_건너편) ⇒ LG베스트샵_앞_승강장(전라남도보훈회관_건너편) ⇒ 오룡주공_승강장(전라남도체육회관_건너편) ⇒ 
				도청프라자_승강장(도청, 만남의광장건너편) ⇒ 근화베아체_승강장(전라남도교육청_건너편) ⇒ 남악애시앙_승강장 ⇒ 도림캠퍼스</td>
				<td>학교차량</td>
			</tr>
			<tr>
				<td>남악오룡푸르지오</td>
				<td>08:00</td>
				<td>1</td>
				<td>남악오룡푸르지오1단지(103동_하천건너_큰도로변) ⇒ 남악중앙시장건너편_승강장 ⇒ 남악팰리시티3차건너편_승강장(맥도날드옆) ⇒ 도청프라자_승강장(도청, 만남의광장건너편)
				⇒ 근화베아체_승강장(전라남도교육청_건너편) ⇒ 남악애시앙_승강장 ⇒ 도림캠퍼스</td>
				<td>나라</td>
			</tr>
			</table>
			<br>
	       
	      </section>
	    </div>
	    </div>
	    
  </body>

</html>