<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
a, a:hover {text-decoration:none; text-color=}
header {height: 100px;}
nav {height: 50px; }
.nav { width: 50%;}
.description {height: 70%; border:1px solid green;}
.container { height: 700px;}
.contents { height: 90%;}
footer { height: 10%;}
.upper { height: 60%;}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/111/535/81111535_1539157728291_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/724/877/80724877_1445520704274_1_600x600.JPG");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
    
   
%>


<div id="wrap" class="container">
	<header class="d-flex bg-danger">
		<div class="col-2 melong d-flex align-items-center">
			<h3 class="melongg m-0"><a href="#" class="text-success">Melong</a></h3>
		</div>
		<div class="d-flex col-10 search bg-secondary align-items-center">
			 <form method="get" action="/lesson03/quiz02/layout2.jsp">
			<div class="input-group">
			  <input type="text" class="form-control col-5" name="search" id="search">
			    <button class="btn btn-success" type="submit">검색</button>
			  </div>
	
			  </form>
		</div>
	</header>
	<nav class="bg-info d-flex align-items-center">
		<ul class="nav nav-fill w-100 col-6">
			<li class="nav-item"><a href="#" alt="b" class="nav-link text-dark font-weight-bold">멜롱챠트</a></li>
			<li class="nav-item"><a href="#" alt="b"class="nav-link text-dark font-weight-bold">최신음악</a></li>
			<li class="nav-item"><a href="#" alt="b"class="nav-link text-dark font-weight-bold">장르음악</a></li>
			<li class="nav-item"><a href="#" alt="b"class="nav-link text-dark font-weight-bold">멜롱DJ</a></li>
			<li class="nav-item"><a href="#" alt="b"class="nav-link text-dark font-weight-bold">뮤직어워드</a></li>
		</ul>
	</nav>
	<section class="contents bg-secondary">
		<div class="upper">
			<div class="name pl-2 pt-2 font-weight bold">곡 정보</div>
			<div class="d-flex description" border="1px solid green">
						  <%
	String search = request.getParameter("search");
	for(Map<String, Object> item : musicList) {
		if(search != null) {	
			if(search.equals(item.get("title"))) {
			int min = (int) item.get("time") / 60;
			int sec = (int) item.get("time") % 60;
			
	
%>
				<div>
				<img src="<%=item.get("thumbnail") %>" alt="표지" width="150px">
				</div>
				<div class="descriptiondes col-9">
					<h3 class="musicname"><%=item.get("title") %></h3>
					<div class="singer"><%=item.get("singer") %></div>
					<div class="moredescription">
					<span class="mr-2">앨범</span>	<div class="album"><%=item.get("album") %></div>
						<div class="time"><%=min %>:<%=sec %></div>
						<div class="composer"><%=item.get("composer") %></div>
						<div class="lyricist"><%=item.get("lyricist") %></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="bottom">
			<div class="gasa pl-2 pt-2">
				가사
			</div>
			<hr>
			<div class="gasainfo pl-2 pt-2">
				가사 정보 없음
			</div>
		</div>
		<%
				}
			else {}
			}
		}
		%>
	</section>
	
	<footer class="bg-info pl-2 d-flex align-items-center">
		<div class="footer">Copyright © marondal 2021</div>
	</footer>
	
</div>
</body>
</html>