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
	        <p>버스 회사 정보</p>
	        <p>학생지원과 061-450-2032</p>
	        <p><a href="http://www.mokpo.ac.kr">목포대학교</a></p>
	        <br>
	        <a href="/bus/busNara">나라고속</a>
	        <a href="/bus/busNew">뉴승달</a>
	        <a href="/bus/busMU">학교차량</a>
	        <br><br><br>
	        
	        <table>
			<tr>

				<th>버스회사</th>
				<th>운영버스</th>
				<th>시간</th>
				<th>등하교</th>
				<th>전화번호</th>
			</tr>	
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 대성초등건너편 승강장</td>
				<td>08:10</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 대성초등건너편 승강장</td>
				<td>09:20</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 신안병원건너편</td>
				<td>8:10</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 용해동신안인스빌</td>
				<td>8:10</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 용해동신안인스빌</td>
				<td>9:20</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 옥암주공 승강장</td>
				<td>8:10</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 옥암주공 승강장</td>
				<td>9:20</td>
				<td>등교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 대성초등학교</td>
				<td>16:40</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 용해동신안인스빌</td>
				<td>16:40</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 남악애시앙 승강장</td>
				<td>16:40</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 대성초등학교</td>
				<td>18:20</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 용해동신안인스빌</td>
				<td>18:10</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 신안병원</td>
				<td>18:20</td>
				<td>하교(금요일 운행)</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			<tr>
				<td>학교차량</td>
				<td>출발지점 : 남악애시앙 승강장</td>
				<td>18:10</td>
				<td>하교</td>
				<td>학생지원과 061-450-2032</td> 
			</tr>
			</table>
			<br>
	       
	      </section>
	    </div>
	    </div>
	    
  </body>
</html>