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
				            <li><a href="#">통학버스 조회 </a></li>
				            <li><a href="/bus/bus200">시내버스 정보 </a></li>
				            <li><a href="/bus/busGJ">시외버스 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">운행정보 </a>
				   		<ul>
				            <li><a href="/bus/busNara">버스회사안내 </a></li>
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
				            <li><a href="/board/notice">공지사항 </a></li>
				            <li><a href="#">건의사항 </a></li>
				            <li><a href="#">고객센터 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">회원정보</a></li>
				</ul>
			</div>
			</header>
		<br><br>
	      <section>
	        <p>시내버스 배차시간표</p>
	        <p>배차간격 : 14분 ~ 16분</p>
	        <p>운행횟수 : 77회</p>
	        <br>
	        <a href="/bus/bus200">경유지</a>
	        <a href="/bus/busTime">배차시간표</a>
	        <br><br><br>
	        
	        <table>
			<tr>

				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
				<th></th>
			</tr>	
			<tr>
				<td>05:00</td>
				<td>05:14</td>
				<td>05:28</td>
				<td>05:42</td> 
				<td>05:56</td> 
				<td>06:10</td> 
				<td>06:24</td>  
			</tr>
			<tr>
				<td>06:38</td>
				<td>06:52</td>
				<td>07:06</td>
				<td>07:20</td> 
				<td>07:33</td> 
				<td>07:46</td> 
				<td>07:58</td>  
			</tr>
			<tr>
				<td>08:10</td>
				<td>08:22</td>
				<td>08:34</td>
				<td>08:46</td> 
				<td>08:59</td> 
				<td>09:12</td> 
				<td>09:25</td>  
			</tr>
			<tr>
				<td>09:38</td>
				<td>09:51</td>
				<td>10:04</td>
				<td>10:17</td> 
				<td>10:30</td> 
				<td>10:43</td> 
				<td>10:56</td>  
			</tr>
			<tr>
				<td>11:01</td>
				<td>11:24</td>
				<td>11:38</td>
				<td>11:52</td> 
				<td>12:06</td> 
				<td>12:20</td> 
				<td>12:34</td>  
			</tr>
			<tr>
				<td>12:48</td>
				<td>13:01</td>
				<td>13:14</td>
				<td>13:27</td> 
				<td>13:40</td> 
				<td>13:54</td> 
				<td>14:08</td>  
			</tr>
			<tr>
				<td>14:22</td>
				<td>14:36</td>
				<td>14:50</td>
				<td>15:05</td> 
				<td>15:20</td> 
				<td>15:35</td> 
				<td>15:48</td>  
			</tr>
			<tr>
				<td>16:01</td>
				<td>16:14</td>
				<td>16:27</td>
				<td>16:40</td> 
				<td>16:53</td> 
				<td>17:06</td> 
				<td>17:19</td>  
			</tr>
			<tr>
				<td>17:32</td>
				<td>17:45</td>
				<td>17:58</td>
				<td>18:12</td> 
				<td>18:26</td> 
				<td>18:39</td> 
				<td>18:52</td>  
			</tr>
			<tr>
				<td>19:04</td>
				<td>19:16</td>
				<td>19:29</td>
				<td>19:42</td> 
				<td>19:55</td> 
				<td>20:10</td> 
				<td>20:25</td>  
			</tr>
			<tr>
				<td>20:40</td>
				<td>20:55</td>
				<td>21:10</td>
				<td>21:25</td> 
				<td>21:40</td> 
				<td>21:55</td> 
				<td>22:10</td>  
			</tr>
			

			</table>
			<br>
	       
	      </section>
	    </div>
	    </div>
	    
  </body>
</html>