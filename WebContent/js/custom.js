/**
 * 메인 페이지에 들어갈 함수
 */
function check(setid) {
	var src = $(".follow");
	var a = $(".follow").attr("name");
	
	console.log(setid+a+src.length);
	for(var i=0; i<src.length;i++){
		var k=0;
		a=src[i].name;
		//console.log("아이디"+a);
	$.ajax("/check.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"owner" : setid,
			"target" : a
		} 
	}).done(function(obj2) {
		console.log("들어왔다." + obj2.result+$(src[i]).val("팔로잉"));
		if (obj2.result == false) {
			var int=0;
			int=i;
			$(src[k]).val("팔로잉");
			$(src[i]).attr("name",a);
			k++;
		} else {
			var int=0;
			int=i;
			$(src[k]).val("팔로우");
			$(src[i]).attr("name", a);
			k++;
		}
	});
	
	}
};
function followClick(setId,target,src,aa) {
	console.log(setId+target,src+aa);
	if (aa == "팔로잉") {
		console.log("팔로잉이 들어왔다.")
		$.ajax("/follow/delete.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"owner" : setId,
				"target" : target
			}
		}).done(function(obj2) {
			console.log("삭제 들어왔다.");
			src.val("팔로우");
			src.attr("name", target);
		});
	} else {
		console.log(target+"추가추가");
		$.ajax("/follow/insert.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"owner" : setId,
				"target" : target
			}
		}).done(function(obj) {
			console.log("들어왔다." + src);
			src.val("팔로잉");
			src.attr("name", target);
		});
	}
}

function likeList() {
	var boardid;
	var count;
	$(".rebt").each(function() {
		boardid += "," + ($(this).attr("name"));
		count += "," + ($(this).attr("name"));
	});
	$.ajax("/likeList.do", {
		"method" : "get",
		"async" : true,
		"data" : {
			"boardId" : boardid,
		}
	}).done(function(val) {
		console.log(val + "댓글 좋아요");
		for (var i = 0; i < val.length; i++) {
			// console.log(val.length);
			$("#cnt_" + val[i].boardId).html("&ensp;" + val[i].count+"개");
		}
	})
};

function List(setId) {
	var boardid;
	var reply;

	$(".rebt").each(function() {
		boardid += "," + ($(this).attr("name"));
		reply = "," + ($(this).attr("name"));
	});
	$.ajax("/listReply.do", {
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
					for(var j=0; j<10; j++){
						
						$("#sp_" + val[i].boardId).append(
								val[j].reid + "&emsp;" + val[j].ment + "<br/>");
					}
				}
			})
};