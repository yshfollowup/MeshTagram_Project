<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>

<div align="center" style="min-height: 300px; height: 300px">
	<div align="left">
		<p>
			<h4 align="left"><b>사람 찾기</b></h4>
			<a href="/follow/all.do"><small align="right">모든 회원</small></a>
			<hr/>
		</p>
	</div>
	
	<div align="left">
		<p>
			<h4 align="left"><b>팔로우 가장 많은 top5 + 알수도 있는 친구</b></h4> 
		</p>
		
		<c:set var="listNum" value="${fn:length(recommend) / 8 + 1}" />
		<c:set var="listCnt" value="1"/>
		<c:set var="listCntLast" value="${fn:length(recommend) % 8 }" />
		<c:choose>
			<c:when test="listCnt eq listNum">
				<c:set var="listCntElement" value="${listCnt * 8}" />
			</c:when>
			<c:otherwise>
				<c:set var="listCntElement" value="${(listCnt-1) * 8 + listCntLast}" />
			</c:otherwise>
		</c:choose>

		<c:forEach begin="0" end="${listCntElement }" var="objRecom" items="${recommend }">
			<p style="float: left; width: 25%;">
				<c:choose>
					<c:when test="${empty objRecom.profile }">
						<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="preview">
					</c:when>
					<c:otherwise>
						<img src="${applicationScope.path }${objRecom.profile}" style="width: 30px; border-radius: 100%" id="profile" />
					</c:otherwise>
				</c:choose>

				<a href="/account/myPage.do?id=${objRecom.id}" name="id">${objRecom.id }</a>
				<c:set var="isFollowing" value="false" />
				<c:set var="doneLoop" value="false" />
				<c:forEach var="objFollowing" items="${following }">
					<c:if test="${not doneLoop }">
						<c:if test="${objFollowing.id } eq ${objRecom.id }">
							<input class="follower" type="button" name="${objRecom.id }" value="팔로잉" />
							<c:set var="isFollowing" value="true" />
							<c:set var="doneLoop" value="true" />
						</c:if>
					</c:if>
				</c:forEach>
				<c:if test="${not isFollowing }">
					<input class="follower" type="button" name="${objTop5.id }" value="팔로우" />
				</c:if>
			</p>
		</c:forEach>

	</div>
	
</div>

<hr/>

<div align="center" style="min-height: 700px; height: 700px">
	<div align="left">
		<p>
			<h4 align="left"><b>최근 소식들</b></h4>
			<hr/>
		</p>
	</div>
	<div align="left">

		<div class="col-sm-8 text-left">
			<c:forEach var="objLatest" items="${latest}">
				<div align="center" style="min-height: 590px;">
					<section style="float: center; width: 70%;">
						<div>
							<c:choose>
								<c:when test="${empty objLatest.profile}">
									<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
								</c:when>
								<c:otherwise>
									<img src="${applicationScope.path }${objLatest.profile}" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
								</c:otherwise>
							</c:choose>
							<a href="/mypage/index.do?id=${objLatest.id }">${objLatest.id }</a>
						</div>
						<div>
							<img src="${objLatest.path }${objLatest.image}"
								style="width: 641px; height: 641px;" />
						</div>
						<div>
							<div>
								<button class="like" type="button" name="${objLatest._id }">좋아요</button>
								<button type="button" class="rebt" name="${objLatest._id }">댓글달기</button>
								<div>
									<a href="#" id="List_like${objLatest._id }" name="${objLatest._id }"
										class="List_like btn-info" data-toggle="modal"
										data-target="#myModal1">좋아요 <span id="cnt_${objLatest._id }"
										class="count"></span></a>
								</div>
							</div>

							<a href="/mypage/index.do?id=${objLatest.id }">${objLatest.id }</a>
							<c:forEach items="${objLatest.comment }" var="comm">
								<span>${comm }</span>
							</c:forEach>
							<c:forEach items="${objLatest.tags }" var="tag">
								<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
							</c:forEach>
							<div>
								<span id="sp_${objLatest._id }" class="re_${objLatest._id }"
									name="${objLatest._id }"></span>
							</div>
							<hr />
							<div class="parent">
								<input type="text" value="" id="reply_${objLatest._id }"
									name="${objLatest.id }" class="reply" aria-label="${objLatest._id }"
									style="resize: none; width: 100%; padding: 2px; font-family: 맑은고딕"
									placeholder="댓글쓰기">
							</div>
						</div>
					</section>
				</div>
			</c:forEach>
		</div>



	</div>

</div>


<!-- =========================================================================================================== -->

<script>
	$(".follower").click(function() {
		var owner = "${cookie.setId.value}";
		var src = $(this);
		var target = $(this).attr("name");

		if ($(this).val() == "팔로잉") {
			$.ajax("/follow/delete.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollow) {
				console.log("삭제 들어왔다.");
				src.val("팔로우");
				src.attr("name", target);
			});
			
		} else {
			$.ajax("/follow/insert.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"owner" : owner,
					"target" : target
				}
			}).done(function(btnFollowing) {
				console.log("들어왔다." + src);
				src.val("팔로잉");
				src.attr("name", target);
			});
		}
	});
</script>