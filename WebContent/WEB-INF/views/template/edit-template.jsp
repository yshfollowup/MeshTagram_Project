<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<html lang="en">
<head>
  <title><tiles:getAsString name="title"/></title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Set height of the grid so .sidenav can be 100% (adjust if needed) */
    .row.content {height: 1500px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>
<tiles:insertAttribute name="nav"/>
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
    
    <tiles:insertAttribute name="body"/>
    </div>
  </div>
</div>

    

<tiles:insertAttribute name="footer"/>
</body>
</html>
