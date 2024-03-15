<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "java.io.PrintWriter" %>
<%@ page import="dao.BoardDao" %>
<%@ page import="dto.Board" %>
<%@ page import = "java.util.ArrayList" %>

<!doctype html>
<html lang="en" data-bs-theme="auto">
  <head><!-- <script src="assets/js/color-modes.js">--></script>
<!--../ 상대주소   /절대주소-->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.115.4">
    <title>멤버,보드연동프로젝트</title>

    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<style type="text/css">
		a, a:hover{
		color:#00000;
		text-decoration: none;
		}
	</style>
</head>
<body>
<%
	String userID = null;
	if(session.getAttribute("memberID") != null){
		userID = (String) session.getAttribute("memberID");	
	}
	int pageNumber = 1;  //기본페이지
	if(request.getParameter("pageNumber")!= null ){
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
	}
	
	
%>

	<nav class="navbar navbar-default">
		<div class ="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle ="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				
			
			</button>
			<a class="navbar-brand" href="main.jsp">멤버,보드연동프로젝트</a>
		</div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li><a href="main.jsp">메인</a></li>
				<li class="active"><a href="board.jsp">게시판</a></li>
			
			</ul>
			<%
				if(userID ==null){
			%>	
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				<a href="#" class ="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
					접속하기
						<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="login.jsp">로그인</a>
					<li><a href="join.jsp">회원가입</a>
			</ul>
			<% 	
				}else{
			%>
			 <ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
				<a href="#" class ="dropdown-toggle" data-toggle="dropdown" 
					role="button" aria-haspopup="true" aria-expanded="false">
					회원관리
						<span class="caret"></span>
				</a>
				<ul class="dropdown-menu">
					<li><a href="logout.jsp">로그아웃</a>
					
			 </ul>
			<%
				}
			%>
			
		</div>
	</nav>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						
					</tr>
				</thead>
				<tbody>
				<%
					BoardDao boardDao = new BoardDao();
					ArrayList<Board> list = boardDao.getList(pageNumber);
					for(int i =0; i <list.size(); i++){
						
					
				%>
					<tr>
						<td><%=list.get(i).getBoardID()%></td>
						<td><a href="view.jsp?boardID=<%=list.get(i).getBoardID()%>"><%=list.get(i).getBoardTitle().replaceAll("","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&lt;").replaceAll("\n","<br>")%></a></td>
						<td><%= list.get(i).getMemberID()%> </td>
						<td><%=list.get(i).getBoardDate().substring(0,11) +list.get(i).getBoardDate().substring(11,13)+"시"+list.get(i).getBoardDate().substring(14,16)+"분" %></td>
					</tr>
					<%
					
						}
					%>
					
				</tbody>
			</table>
			<%
				if(pageNumber != 1){
			%>
				<a href = "board.jsp?pageNumber=<%=pageNumber -1 %>" class="btn btn-success btn-arrow-left">이전</a>
			<%
				}if(boardDao.nextPage(pageNumber + 1)){
			%>
				<a href = "board.jsp?pageNumber=<%=pageNumber +1 %>" class="btn btn-success btn-arrow-left">다음</a>
			<%
				}
			%>
			<a href="write.jsp" class="btn btn-primary pull-right">글쓰기</a>	
		</div>
	</div>
	
	

<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
</body>
  

</html>
