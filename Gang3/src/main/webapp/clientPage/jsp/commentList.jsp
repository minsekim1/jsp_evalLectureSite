<%@ page contentType="text/html" pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<%@ page import="dao.*"%>
<%@ page import="util.*"%>
<%
ArrayList<CommentObj> comments = (new CommentDAO()).getList();

String str = "";
for (CommentObj comment : comments) {
	str += "<div class=\"comment\">";
	str += "<div class=\"comment-name\">" + comment.getAuthor() + "</div>";
	str += "<div class=\"comment-msg\">" + comment.getContent() + "</div>";
	str += "</div>";
}
%>

<html>
<head>
<meta charset="utf-8">
<meta name=viewport
	content="width=device-width, initial-scale=1, user-scalable=0">
<link rel="stylesheet" href="../../css/core.css">
<title>Gang</title>

<style>
.desc {
	float: left;
	width: 100%;
	color: #888;
	font-size: 0.9em;
}
</style>

</head>
<body style="background-color: white">
	<div class="page-header">
		<a class="page-header-back noDeco" href="../detail.html">π Back</a>
		<div class="header-title">κ°μ λκΈ μ μ²΄λ³΄κΈ°</div>
	</div>
	<div class="comment-content">

		<!-- λκΈλ€ 
		<div class="comment">
		<div class="comment-name">κΉλ―Όμ±</div>
		<div class="comment-msg">κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€.κ΅μλ μ¬λν©λλ€. μ¬λν©λλ€.</div>
		</div>
		-->
		<%=str%>

	</div>
	<div class="comment-write" onClick="location.href='../addEval.html'"
		style="cursor: pointer;">νκ° μμ±νκΈ°</div>
	<div class="page-footer">Copyright: Gang.com, 2021</div>
</body>
</html>