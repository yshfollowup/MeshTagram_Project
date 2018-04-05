<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">
<head>
<link rel="shortcut icon" href="/images/favicon.ico">
<title><tiles:getAsString name="title" /></title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
/* Set height of the grid so .sidenav can be 100% (adjust if needed) */
.row.content {
	height: 1500px
}

/* Set gray background color and 100% height */
.sidenav {
	background-color: #f1f1f1;
	height: 100%;
}

/* Set black background color, white text and some padding */

/* On small screens, set height to 'auto' for sidenav and grid */
@media screen and (max-width: 767px) {
	.sidenav {
		height: auto;
		padding: 15px;
	}
	.row.content {
		height: auto;
	}
}
</style>
<style type="text/css" data-isostyle-id="is15055652">
#react-root, article, div, footer, header, main, nav, section {
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	border: 0 solid #000;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	margin: 0;
	padding: 0;
	position: relative
}
</style>
<style type="text/css" data-isostyle-id="is6829557c">
a, abbr, acronym, address, applet, article, aside, audio, b, big,
	blockquote, body, canvas, caption, center, cite, code, dd, del, details,
	dfn, div, dl, dt, em, embed, fieldset, figcaption, figure, footer, form,
	h1, h2, h3, h4, h5, h6, header, hgroup, html, i, iframe, img, ins, kbd,
	label, legend, li, mark, menu, nav, object, ol, output, p, pre, q, ruby,
	s, samp, section, small, span, strike, strong, sub, summary, sup, table,
	tbody, td, tfoot, th, thead, time, tr, tt, u, ul, var, video {
	margin: 0;
	padding: 0;
	border: 0;
	font: inherit;
	vertical-align: baseline
}

body {
	line-height: 1
}

ol, ul {
	list-style: none
}

blockquote, q {
	quotes: none
}

blockquote:after, blockquote:before, q:after, q:before {
	content: none
}

table {
	border-collapse: collapse;
	border-spacing: 0
}
</style>
</head>
<body>
	<article>
		<tiles:insertAttribute name="nav" />
		<!-- 
<div style="height:70px;"></div>
<div style="min-height: 500px">
<div class="container-fluid">
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>프로필 설정</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="/mypage/edit.do">정보변경</a></li>
        <li><a href="/mypage/pass.do">비밀번호 변경</a></li>
        <li><a href="/mypage/reply.do">댓글</a></li>
        <li><a href="/mypage/phone.do">전화번호 부</a></li>
      </ul><br>
      <div class="input-group">
      </div>
    </div>
    -->
		<div style="clear: both;">
			<tiles:insertAttribute name="body" />
		</div>

		<div>
			<tiles:insertAttribute name="footer" />
		</div>
	</article>
</body>
</html>
