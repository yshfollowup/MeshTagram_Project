<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="/account/login.do">메쉬타그램</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li class="active"><a href="#">팔로우</a></li>
        <li><a href="/account/upload.do">글쓰기</a></li>
        <li><a href="/mypage/index.do">마이페이지</a></li>
        <li><a href="#">하둡</a></li>
        <li><a href="/account/logout.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>
      <div align="center">
      <input type="text" id="search" placeholder="검색" align="right"/>
      <div id="pp">
      </div>
      </div>
    </div>
  </div>
</nav>

<script>$("#search").on("change",function(){
	var value = $("#search").val();
	var tag= null;
	var idsh=null;
	var comm=null
	if(value.startsWith("#")){
		tag=value;
	}else if(value.startsWith("@")){
		idsh=value;
	}else{
		comm=value;
	}
	$.ajax("/search.do",{
		"method" : "post",
		"async" : true,
		"data" : {
			"tag" : tag, 
			"idsh" : idsh,
			"comm" : comm
		}
		
		
	}).done(function(){
		var val=JSON.parse(this.responseText);
		console.log(val);
		for(var i=0; i<val.length; i++){
			$("#pp").html(val[i].id+"<br/>"+val[i].comment);
		}
		
	}
		
	});
</script>
