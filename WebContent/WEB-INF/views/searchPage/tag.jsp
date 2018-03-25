<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<div class="title" align="center" style="height: 150px; font-size: 80px" >
		${title}
	<div align="center">
	<small>
		${count }
	</small>
	</div>
	</div>
	<div align="left" style="min-height: 80px;"></div>
<div align="left" style="min-height: 80px;">게시물</div>
<div align="center" >
		<c:forEach var="obj" items="${tagList}">
		<p style="float: left; width: 33%;">
				<small><c:forEach items="${obj.tags }" var="tag">
						<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br />
			
				<a href="${applictionScope.path}/detail/detail.do?boardid=${obj._id }" data-toggle="tooltip" id="top_${obj._id }" name="${obj._id }" class="tool" title="">
				<img src="${obj.path }${obj.image }"
					style="width: 230px; height: 230px;" class="image">
				</a>
				
			</p>
		</c:forEach>
	</div>
	
	
<script>
var setid = "${cookie.setId.value}";
likeList();

function likeList() {
	var boardid=[];
	$(".tool").each(function() {
		boardid.push($(this).attr("name"));
	});
	console.log(boardid);
	$.ajax("/likecountList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid,
		}
	}).done(function(val) {
		console.log(val + "댓글 좋아요");
		for (var i = 0; i < val.length; i++) {
			// console.log(val.length);
			//$("#top_" + val[i].boardId).attr("title","좋아요 " + val[i].count+"개");
			$("#top_" + val[i].boardId).val( val[i].count+"개");
		}
		List();
	})
	
};

function List() {
	var boardid=[];

	$(".tool").each(function() {
		boardid.push($(this).attr("name"));
	});
	console.log(boardid);
	$.ajax("/ReList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(
			function(val) {
				
				var boardid = [];
				var reply = [];
				$(".rebt").each(function() {
					boardid.push($(this).attr("name"));
					reply.push($(this).attr("name"));
				});
				// console.log(val);
					
				for (var i = 0; i < val.length; i++) {
					var reply=$("#top_" + val[i].boardId).val();
					console.log(reply);
					$("#top_" + val[i].boardId).attr("title","좋아요 " + $("#top_"+val[i].boardId).val()+"댓글 "+ val[i].count + "개");
					//reply.appent("댓글 "+ val[i].count + "개");
				}
			})
};
$(document).ready(function(){
    $('[data-toggle="tooltip"]').tooltip();   
});
</script>