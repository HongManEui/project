<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>맞춤 검색</title>
	<link href='css/style.css' rel='stylesheet' style='text/css'/>
	<script language="JavaScript" src="members.js"></script>
	
</head>
<body>
	<div class="top">
		<div class="logo">
		<img src="img/ITcenLogo.png" alt="My Image" usemap="#logo" style="width:90px; height:30px">
		<map name="logo"><area shape="rect" coords="0,0,90,30" href="main.jsp"></map>
		</div>
		<div class="topnav">
 			<a href="main.jsp" class="decoa" style="color :white">메인</a>
		</div>
	</div>
	<div class="content">
	<header class="page-header" role="banner">
    	<h1> 맞춤 검색 </h1> <br />
	</header>
		<div>
		<form action="searchingFitResult.jsp" method="post">
		<div class="basic">
			<h3>나는 &nbsp;
			<select name="sido" id="sido2" class="select" title="지역 시/도 선택">
					<option value=" ">시/도 선택</option>
					<option value="1100000000">서울특별시</option>
					<option value="2600000000">부산광역시</option>
					<option value="2700000000">대구광역시</option>
					<option value="2800000000">인천광역시</option>
					<option value="2900000000">광주광역시</option>
					<option value="3000000000">대전광역시</option>
					<option value="3100000000">울산광역시</option>
					<option value="3600000000">세종특별자치시</option>
					<option value="4100000000">경기도</option>
					<option value="4200000000">강원도</option>
					<option value="4300000000">충청북도</option>
					<option value="4400000000">충청남도</option>
					<option value="4500000000">전라북도</option>
					<option value="4600000000">전라남도</option>
					<option value="4700000000">경상북도</option>
					<option value="4800000000">경상남도</option>
					<option value="5000000000">제주특별자치도</option>
			</select>
			에 살고 있습니다.</h3>
		</div>
		<br />
		<div class= "grid-container">
			<div class="left" style=" border: 4px solid rgb(167, 212, 252); text-align: left;">
				<h2 style="text-align: center">연령대별</h2><br />
					<input type="checkbox" name="age" value="CR0001" id="cnd01"/>
					<label for="cnd01" class="label-custom"><span>아동</span></label>
					<br />
					<input type="checkbox" name="age" value="CR0002" id="cnd02"/>
					<label for="cnd02" class="label-custom"><span>초중고생</span></label>
					<br />
					<input type="checkbox" name="age" value="CR0003" id="cnd03"/>
					<label for="cnd03" class="label-custom"><span>청년</span></label>
					<br />
					<input type="checkbox" name="age" value="CR0004" id="cnd04"/>
					<label for="cnd04" class="label-custom"><span>중장년</span></label>
					<br />
					<input type="checkbox" name="age" value="CR0005" id="cnd05"/>
					<label for="cnd05" class="label-custom"><span>노인</span></label>
			</div>&nbsp;
			<div class="middle" style="border: 4px solid rgb(167, 212, 252); text-align: left;">
				<h2 style="text-align: center">소득별</h2><br />
					<input type="checkbox" name="income" value="CR1006" id="cnd06"/>
					<label for="cnd06" class="label-custom"><span>중위소득 100% 이하</span></label>
					<br />
					<input type="checkbox" name="income" value="CR1007" id="cnd07"/>
					<label for="cnd07" class="label-custom"><span>기초수급자/차상위</span></label>
					<br />
					<input type="checkbox" name="income" value="CR1008" id="cnd08"/>
					<label for="cnd08" class="label-custom"><span>한부모 가족</span></label>
					<br />
					<input type="checkbox" name="income" value="CR1009" id="cnd09"/>
					<label for="cnd09" class="label-custom"><span>실직자</span></label>
					<br />
					<input type="checkbox" name="income" value="CR1010" id="cnd10"/>
					<label for="cnd10" class="label-custom"><span>무급휴직자</span></label>
			</div>&nbsp;
			<div class="right" style="border: 4px solid rgb(167, 212, 252); text-align: left;">
				<h2 style="text-align: center">업종/기타</h2><br />
					<input type="checkbox" name="job" value="CR1011" id="cnd11"/>
					<label for="cnd11" class="label-custom"><span>입원 및 자가격리자</span></label>
					<br />
					<input type="checkbox" name="job" value="CR1012" id="cnd12"/>
					<label for="cnd12" class="label-custom"><span>특수형태근로자</span></label>
					<br />
					<input type="checkbox" name="job" value="CR1013" id="cnd13"/>
					<label for="cnd13" class="label-custom"><span>농업인</span></label>
					<br />
					<input type="checkbox" name="job" value="CR1014" id="cnd14"/>
					<label for="cnd14" class="label-custom"><span>임차인</span></label>
					<br />
					<input type="checkbox" name="job" value="CR1015" id="cnd15"/>
					<label for="cnd15" class="label-custom"><span>일반근로자</span></label>
			</div>
		</div>
		<div class="basic">
				<p><input type="submit" value="선택 결과 보기" class="snip1535custom"> <input type="reset" value="선택 취소" class="snip1535custom"></p>
		</div>
		</form>
		<br />
		</div>
	</div>
	<div class="footer" style="color:white;">
		<div class="logob">
		<br /><img src="img/JungbuLogo.png" alt="My Image" usemap="#logo" style="width:45px; height:45px;"><br />
		</div>
		<br />코로나19 정부지원 지원금 조회 프로젝트<br />Copyright 2021 by 홍만의<br />Phone : 010-4274-1949 / Mail : hme9105@naver.com
	</div>
</body>
</html>