<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height: 70px;"></div>


<div style="clear: both;"></div>
<div class="container-fluid text-center">
	<div class="row content">
		<div class="col-sm-2 sidenav"></div>
		<div class="col-sm-8 text-left">
			<c:forEach var="obj" items="${allPost}">
				<div align="center" style="min-height: 590px;">
					<section style="float: center; width: 70%;">
						<div>
							<c:choose>
								<c:when test="${empty obj.profile}">
									<img src="/images/insta.jpg"
										style="width: 30px; height: 30px; border-radius: 30px"
										id="writer">
								</c:when>
								<c:otherwise>
									<img src="${applicationScope.path }${obj.profile}"
										style="width: 30px; height: 30px; border-radius: 30px"
										id="writer">
								</c:otherwise>
							</c:choose>
							<a href="/search.do?id=${obj.id }">${obj.id }</a>
						</div>
						<!-- 작업중 -->
						<c:choose>
							<c:when test="${fn:length(obj.image) >1}">
								<div id="${obj._id }" class="carousel slide"
									data-ride="carousel">
									<!-- Wrapper for slides -->
									<div class="carousel-inner">
										<c:forEach items="${obj.image }" var="image" varStatus="st">
											<div class="item ${st.first ? 'active' : '' }">
												<img src="${obj.path }${image }"
													style="width: 641px; height: 641px; width: 100%;" />
											</div>
										</c:forEach>
									</div>
									<!-- Left and right controls -->
									<a class="left carousel-control" href="#${obj._id }"
										data-slide="prev"> <span
										class="glyphicon glyphicon-chevron-left"></span> <span
										class="sr-only">Previous</span>
									</a> <a class="right carousel-control" href="#${obj._id }"
										data-slide="next"> <span
										class="glyphicon glyphicon-chevron-right"></span> <span
										class="sr-only">Next</span>
									</a>
								</div>
							</c:when>
							<c:otherwise>
								<c:forEach items="${obj.image }" var="image">
									<div>
										<img src="${obj.path }${image }"
											style="width: 641px; height: 641px;" />
									</div>
								</c:forEach>
							</c:otherwise>
						</c:choose>
								<!-- 작업중 마지막 -->
							<div>
								<button class="like" type="button" name="${obj._id }" id="like_${obj._id }">좋아요</button>
								<button type="button" class="rebt" name="${obj._id }">댓글달기</button>
								<div>
									<a href="#" id="List_like${obj._id }" name="${obj._id }"
										class="List_like btn-info" data-toggle="modal"
										data-target="#myModal1">좋아요 <span id="cnt_${obj._id }"
										class="count"></span></a>
								</div>
							</div>

						<div>
							<a href="/mypage/index.do?id=${obj.id }">${obj.id }</a>
							<c:forEach items="${obj.comment }" var="comm">
								<span>${comm }</span>
							</c:forEach>
							<c:forEach items="${obj.tags }" var="tag">
								<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
							</c:forEach>
							<div>

								<button type="button" class="btn btn-info"
									data-toggle="collapse" data-target="#demo">댓글보기</button>
								<div id="demo" class="collapse">
									<span id="sp_${obj._id }" class="re_${obj._id }"
										name="${obj._id }"></span>

								</div>

							</div>
							<hr />
							<div class="parent">
								<input type="text" value="" id="reply_${obj._id }"
									name="${obj.id }" class="reply" aria-label="${obj._id }"
									style="resize: none; width: 100%; padding: 2px; font-family: 맑은고딕"
									placeholder="댓글쓰기">
							</div>
						</div>
					</section>
				</div>
			</c:forEach>
		</div>
		<div style="min-height: 150px;" ></div>

		<!-- Modal -->
		<div id="myModal1" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<div align="center">좋아요</div>
					</div>
					<div class="modal-body" id="myList"></div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					</div>
				</div>

			</div>
		</div>
		<script type="text/javascript" src="/js/custom.js"></script>
		<script>
			var setid = "${cookie.setId.value}";
			$(".List_like")
					.on(
							"click",
							function() {
								var reid = "${cookie.setId.value}";
								var boardid;
								var listId = [];
								var value = $(this).attr("name");
								var address = $("#myList");
								$(".rebt").each(function() {
									boardid += "," + ($(this).attr("name"));
									//console.log("하나하나씩"+boardid);
								});
								$.ajax("/likeList.do", {
											"method" : "get",
											"async" : true,
											"data" : {
												"boardId" : boardid,
												"id" : reid
											}
										}).done(
												function(val) {
													for (var i = 0; i < val.length; i++) {
														if (val[i].boardId == value) {
															listId
																	.push(val[i].id);
														}
													}$.ajax("/SearchLikeList.do",{
														"method" : "post",
														"async" : true,
														"data" : {
														"listId" : listId
														}
												}).done(function(val) {
													address.html("");
																		var img = "<img src=\"/images/insta.jpg\" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
																		var img2 = "<img src=\"${applicationScope.path }"+val.PROFILE+" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
																		var ii = null;
																		var sl = null;
																		for (var i = 0; i < val.length; i++) {
																			var follower = "<input class=\"follow\" type=\"button\" name="+val[i].id+" value=\"팔로우\" />"
																			if (val[i].profile == null) {
																				ii = img;
																			} else {
																				ii = img2
																			}
																			address
																					.append(ii
																							+ val[i].id
																							+ "<br/>"
																							+ val[i].name
																							+ follower);
																		}
																		check(setid);
																		$(
																				".follow")
																				.on(
																						"click",
																						function() {
																							var target = $(
																									this)
																									.attr(
																											"name");
																							var src = $(this);
																							var aa = $(
																									this)
																									.val();
																							console
																									.log("클릭하였다.");
																							followClick(
																									setid,
																									target,
																									src,
																									aa);
																						});
																	})
												})
							});

			$(".rebt").on("click", function() {
				var boardid = [];
				var input = $(this).attr("name");
				$(".rebt").each(function() {
					boardid.push($(this).attr("name"));
				});
				console.log(boardid[1] + input);
				for (var i = 0; i < boardid.length; i++) {
					if (boardid[i] == input) {
						console.log("포커스 들어왔다." + input);
						$("#reply_" + input).focus();

					}
				}
			});

			// 댓글 쓰기
			$(".reply").on("change", function() {
				var boardid = [];
				var input = $(this).attr("aria-label");
				$(".rebt").each(function() {
					boardid.push($(this).attr("name"));
				});
				var ment = $(this).val();
				var src = $(this);
				if (ment.length == 0) {
					window.alert("댓글을 작성해주세요.");
					return;
				}
				console.log("댓글을 쓴다." + ment + boardid);
				var id = $(this).attr("aria-label");
				var reid = "${cookie.setId.value}";
				//console.log(id+ment);
				$.ajax("/addreply.do", {
					"method" : "post",
					"async" : true,
					"data" : {
						"boardId" : id,
						"reid" : reid,
						"ment" : ment
					}
				}).done(function(obj) {
					//console.log($(this).val());
					$("#reply_" + input).val("");
					$("#re_" + input).val("");
					for (var i = 0; i < boardid.length; i++) {
						if (boardid[i] == input) {
							console.log("댓글 들어왔다." + input + obj.ment);
							$("#sp_" + input).append(obj.ment);

						}
					}
				})
			});
			likeList(setid);
			List(setid);
			//댓글 리스트 자동 생성

			//좋아요 ....
			$(".like").on("click", function() {
				var bt = $(this).val();
				console.log("좋아요 들어왔다");
				var reid = "${cookie.setId.value}";
				var boardid = $(this).attr("name");
				var like = "좋아요";
				console.log(bt);
				if (bt== "") {
					$.ajax("/likeBoard.do", {
						"method" : "get",
						"async" : true,
						"data" : {
							"boardId" : boardid,
							"id" : reid,
							"like" : like,
						}
					}).done(function(val) {
						var a;
						likeList();
						for(var i=0; i<val.length; i++){
						//console.log(bt + "아이디아디이디" + val[i].objectId+val[i].id+a);
						$("#like_"+boardid).val(val[i].objectId);
							
						}
					})
				} else {
					$.ajax("/deleteLike.do", {
						"method" : "get",
						"async" : true,
						"data" : {
							"boardid" : boardid,
							"id" : reid
						}
					}).done(function(val2){
						for(var i=0; i<val2.length; i++){
							if(val2[i].boardId==boardid){
						console.log(bt + "아이디아디이디");
						console.log("실시간 좋아요 처리"+bt);
								$("#like_"+boardid).val("");
								
							}							
						}
				})
						likeList();
			}
	});
			
		</script>
		<div class="col-sm-2 sidenav">
			<div class="well">
				<a href="/mypage/index.do?id=${aDTO.id }"> <c:choose>
						<c:when test="${empty aDTO.profile }">
							<img src="/images/insta.jpg"
								style="width: 30px; height: 30px; border-radius: 30px"
								id="profile">
						</c:when>
						<c:otherwise>
							<img src="${obj.path }${obj.image}"
								style="width: 30px; height: 30px;" id="profile" />
						</c:otherwise>
					</c:choose> ${aDTO.id }
				</a>
			</div>
			<div class="well">
				<p>스토리</p>
				<p>회원님이 팔로우하는 사람들의 스토리가 여기에 표시됩니다.</p>
			</div>
			<div class="well">
				<div>@copyright</div>
			</div>
		</div>
	</div>
</div>

