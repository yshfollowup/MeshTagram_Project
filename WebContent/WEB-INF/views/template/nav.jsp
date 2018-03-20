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
      <form>
      <input type="text" id="search" placeholder="검색" align="right"/>
      </form>
      <div id="pp">
      </div>
      </div>
    </div>
  </div>
</nav>

<script>
$("#search").on("keyup",function(){
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
	$.ajax("/autocom.do",{
		"method" : "post",
		"async" : true,
		"data" : {
			"tag" : tag, 
			"idsh" : idsh,
			"comm" : comm
		}
	}).done(function(val){
		console.log(val);
		var str="";
		var img= "<img src=\"/image/insta.jpg\" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
		for(var i=0; i<val.length; i++){
			var img2="<img src=\"${applicationScope.path }"+val.PROFILE+" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
			var com=null;
			var ii=null;
			if(val.PROFILE==null){
				ii=img;
			}else{
				ii=img2;
			}
			if(val[i].INTRO == null){
				com="";
			}else{
				com=val[i].INTRO
			}
			
  		str+="<a href=/search.do?id=\"+val[i].ID+\"> "+ii+val[i].ID+"<br/>"+com+"</a>"+"<br/>";
		}
		$("#pp").html(str);
	})
	});
</script>
