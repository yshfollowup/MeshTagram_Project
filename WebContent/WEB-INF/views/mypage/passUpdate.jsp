<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html class="js logged-in client-root">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>프로필 편집 • Meshstagram</title>

<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">

<style type="text/css" data-isostyle-id="is7b255644">
._29u45 {
	min-height: 100%;
	overflow: hidden
}

._ap5bm {
	left: 0;
	position: fixed;
	right: 0;
	top: 0;
	z-index: 12
}

._b426x {
	-webkit-box-ordinal-group: 2;
	-webkit-order: 1;
	-ms-flex-order: 1;
	order: 1
}

._a20pl {
	-webkit-box-ordinal-group: 4;
	-webkit-order: 3;
	-ms-flex-order: 3;
	order: 3
}

._8fi2q {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-box-ordinal-group: 5;
	-webkit-order: 4;
	-ms-flex-order: 4;
	order: 4;
}

._2v79o {
	background-color: #fafafa
}

._4kfp8 {
	background-color: #fff
}

._s5vm9 {
	background-color: #fafafa;
	-webkit-box-ordinal-group: 6;
	-webkit-order: 5;
	-ms-flex-order: 5;
	order: 5;
	padding: 0 20px
}

._31pdf {
	margin-top: 85px
}

._68u16, ._axuw9 {
	-webkit-box-ordinal-group: 3;
	-webkit-order: 2;
	-ms-flex-order: 2;
	order: 2
}

._f4a0g, ._gft4l {
	-webkit-box-ordinal-group: 1;
	-webkit-order: 0;
	-ms-flex-order: 0;
	order: 0
}

._gft4l {
	background-color: #fafafa;
	padding: 0
}

._evlcw {
	padding: 0 20px;
	-webkit-box-ordinal-group: 6;
	-webkit-order: 5;
	-ms-flex-order: 5;
	order: 5
}

@
supports

<ul class="_mleeu">
	<li><a class="_fvhml _etlo6" href="/mypage/edit.do">프로필 편집</a></li>
	<li><a class="_fvhml _t0stc" href="/mypage/pass.do">비밀번호 변경</a></li>
	<li><a class="_fvhml _etlo6" href="/accounts/comment_filter/">댓글</a>
	</li>
	<li><a class="_fvhml _etlo6" href="/accounts/contact_history/">연락처
			관리</a></li>
</ul>

<<<<<<< HEAD








 











(
margin-bottom






















:env(safe-area-inset-bottom)











 











){
.
_evlcw






















:











 











not











 











(
._b696q












	











){
margin-bottom






















:











 











env






















(
safe-area-inset-bottom




















)
}
}
._b696q {
	-webkit-box-ordinal-group: 1;
	-webkit-order: 0;
	-ms-flex-order: 0;
	order: 0
}

._axuw9 {
	-webkit-flex-basis: 75px;
	-ms-flex-preferred-size: 75px;
	flex-basis: 75px
}

._ip5r5 {
	margin-bottom: 44px
}
</style>
<style type="text/css" data-isostyle-id="is3b60595e">
._28rsa, ._75z9k {
	-webkit-box-flex: 1
}

._28rsa {
	background-color: #fff;
	border: 1px solid #dbdbdb;
	border-radius: 3px;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-box-pack: stretch;
	-webkit-justify-content: stretch;
	-ms-flex-pack: stretch;
	justify-content: stretch;
	margin: 60px auto 0;
	max-width: 935px;
	overflow: hidden;
	width: 100%
}

._75z9k {
	-webkit-flex: 1 1 400px;
	-ms-flex: 1 1 400px;
	flex: 1 1 400px;
	min-width: 50px
}

@media ( min-width :451px) and (max-width:965px) {
	._28rsa {
		max-width: calc(100% - 20px)
	}
}

@media ( max-width :450px) {
	._28rsa {
		border: 0;
		margin-top: 0
	}
}
</style>
<style type="text/css" data-isostyle-id="is-7ffaa89a">
._mleeu {
	border-right: 1px solid #dbdbdb;
	-webkit-flex-basis: 236px;
	-ms-flex-preferred-size: 236px;
	flex-basis: 236px;
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	-ms-flex-positive: 0;
	flex-grow: 0;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
}

@media ( max-width :735px) {
	._mleeu {
		display: none;
	}
}
</style>
<style type="text/css" data-isostyle-id="is-1e3ca70b">
._fvhml {
	border-left: 2px solid transparent;
	display: block;
	font-size: 16px;
	height: 7%;
	line-height: 20px;
	padding: 16px 16px 16px 30px;
	width: calc(100% - 48px);
}

._t0stc {
	border-left-color: #262626;
	font-weight: 600
}

._etlo6:hover {
	background-color: #fafafa;
	border-left-color: #dbdbdb
}

._fvhml, ._fvhml:active, ._fvhml:hover, ._fvhml:visited {
	color: #262626
}
</style>
<style type="text/css" data-isostyle-id="is-5431a0ab">
._1eg8c {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	margin: 32px 0 16px;
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start
}

._5g4e2 {
	height: 38px;
	width: 38px
}

@media ( min-width :736px) {
	._5g4e2 {
		margin: 2px 32px 0 124px
	}
}

@media ( max-width :735px) {
	._5g4e2 {
		margin: 2px 20px 0
	}
}

._ax54t {
	overflow-x: hidden
}

._gvhl0 {
	font-size: 19px;
	font-weight: 400;
	line-height: 20px;
	margin-bottom: 10px;
	margin-top: 10px;
	text-overflow: ellipsis;
	white-space: nowrap;
}

._ax54t {
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 auto;
	-ms-flex: 0 1 auto;
	flex: 0 1 auto;
	margin-right: 20px
}

._5aav8, ._5aav8:active, ._5aav8:hover, ._5aav8:visited {
	color: #3897f0
}
</style>
<style type="text/css" data-isostyle-id="is1235b64">
._3xjwv, ._62ai2 {
	height: 100px;
	width: 100px;
}

._62ai2 {
	background-color: #fafafa;
	border-radius: 50%;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0 70px 0 100px;
	overflow: hidden;
	position: relative
}

._62ai2::after {
	border: 1px solid rgba(0, 0, 0, .0975);
	border-radius: 50%;
	bottom: 0;
	content: "";
	left: 0;
	pointer-events: none;
	position: absolute;
	right: 0;
	top: 0
}

._3xjwv {
	border: 0;
	cursor: pointer;
	padding: 0
}

._5i7ar {
	cursor: inherit;
	opacity: .5
}

._cuacn, ._oor7o {
	height: 100%;
	left: 0;
	position: absolute;
	top: 0;
	width: 100%
}
</style>
<style type="text/css" data-isostyle-id="is1e0e57a2">
._l8al6 {
	display: none !important
}
</style>
<style type="text/css" data-isostyle-id="is-fcaa5e0">
._gzffa {
	-webkit-box-align: stretch;
	-webkit-align-items: stretch;
	-ms-flex-align: stretch;
	align-items: stretch;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: contents;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
	margin-bottom: 16px;
	margin-top: 32px
}

._4abhr, ._jlcqs {
	background: 0 0;
	border: 1px solid #DBDBDB;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 355px;
	-ms-flex: 0 1 355px;
	flex: 0 1 355px;
	font-size: 16px;
	height: 32px;
	padding: 0 10px
}

._jlcqs {
	height: 60px;
	padding: 6px 10px;
	resize: vertical
}

._4abhr:focus, ._jlcqs:focus, ._nlo2g:focus {
	border: 1px solid #b2b2b2
}

._9z7nz {
	margin-top: 16px
}

._aqsz9 {
	margin: 6px 10px
}

._6dodw {
	margin: 6px 0
}

._d7hdk {
	margin-left: 6px
}

._d7hdk, ._d7hdk:hover, ._d7hdk:visited {
	color: #3897f0
}

._d7hdk:active {
	opacity: .5
}

._eqmpg {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	margin-top: 16px
}

@media ( max-width :735px) {
	._eqmpg {
		-webkit-box-pack: justify;
		-webkit-justify-content: space-between;
		-ms-flex-pack: justify;
		justify-content: space-between;
		width: 100%
	}
}

._rxt80 {
	font-size: 14px;
	line-height: 16px
}

._lzd84 {
	color: #ed4956
}

._k22fc {
	color: #4e9f2e
}

._61tuv {
	-webkit-align-self: center;
	-ms-flex-item-align: center;
	align-self: center;
	display: block;
	font-size: 14px
}

@media ( min-width :736px) {
	._61tuv {
		margin-left: 105px
	}
}

._61tuv, ._61tuv:active, ._61tuv:hover, ._61tuv:visited {
	color: #3897f0
}

._61tuv:active {
	opacity: .5
}
</style>
<style type="text/css" data-isostyle-id="is-cffa597">
._e1xik {
	margin-bottom: 16px;
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start
}

@media ( min-width :736px) {
	._e1xik {
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row
	}
}

@media ( max-width :735px) {
	._e1xik {
		-webkit-box-orient: vertical;
		-webkit-box-direction: normal;
		-webkit-flex-direction: column;
		-ms-flex-direction: column;
		flex-direction: column
	}
}

._kx10g, ._l9ywh {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	-webkit-box-flex: 0;
	font-size: 16px;
	font-weight: 600;
	line-height: 18px
}

._kx10g {
	margin-top: 6px;
	-webkit-flex: 0 0 194px;
	-ms-flex: 0 0 194px;
	flex: 0 0 194px
}

._l9ywh {
	-webkit-flex: 0 0 226px;
	-ms-flex: 0 0 226px;
	flex: 0 0 226px
}

@media ( min-width :736px) {
	._kx10g {
		padding-left: 32px
	}
	._kx10g, ._l9ywh {
		padding-right: 32px;
		text-align: right
	}
}

@media ( max-width :735px) {
	._kx10g, ._l9ywh {
		-webkit-flex-basis: 25px;
		-ms-flex-preferred-size: 25px;
		flex-basis: 25px;
		padding: 0 20px
	}
	._ldhkl {
		display: none
	}
}

._cd2n1 {
	color: #262626;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	font-size: 16px;
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start
}

@media ( min-width :736px) {
	._cd2n1 {
		-webkit-flex-basis: 355px;
		-ms-flex-preferred-size: 355px;
		flex-basis: 355px;
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row;
		padding-right: 60px
	}
}

@media ( max-width :735px) {
	._cd2n1 {
		-webkit-flex-basis: auto;
		-ms-flex-preferred-size: auto;
		flex-basis: auto;
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row;
		padding: 0 20px
	}
}
</style>
<style type="text/css" data-isostyle-id="is-3bcda9a0">
._o716c {
	-webkit-appearance: none
}

._o716c::-webkit-input-placeholder {
	color: #999;
	font-weight: 300;
	opacity: 1
}

._o716c:-ms-input-placeholder, ._o716c::-ms-input-placeholder {
	color: #999;
	font-weight: 300;
	opacity: 1
}

._o716c::placeholder {
	color: #999;
	font-weight: 300;
	opacity: 1
}

._o716c::-ms-clear {
	display: none;
	height: 0;
	width: 0
}
</style>
<style type="text/css" data-isostyle-id="is-69a9a62f">
._49rz2 {
	color: #999;
	font-size: 14px;
	font-weight: 600
}
</style>
<style type="text/css" data-isostyle-id="is4a55b91">
._sx05v {
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 150px;
	-ms-flex: 0 1 150px;
	flex: 0 1 150px;
	height: 32px
}

._4v6lq {
	pointer-events: none;
	position: absolute;
	right: 12px;
	top: 12px
}

._nxkvc {
	background: 0 0;
	border: 1px solid #efefef;
	border-radius: 3px;
	color: #262626;
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	font-size: 16px;
	height: 32px;
	padding: 0 30px 0 10px;
	-moz-appearance: none;
	-webkit-appearance: none
}

._fx9to {
	color: #999
}
</style>
<style type="text/css" data-isostyle-id="is190952a8">
._8scx2 {
	display: block;
	overflow: hidden;
	text-indent: 110%;
	white-space: nowrap
}

._gvoze:active {
	opacity: 1
}

._fkers, ._fkers:visited {
	color: #3897f0
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
<style type="text/css" data-isostyle-id="is-3fdcac85">
body {
	overflow-y: scroll
}

body:-webkit-full-screen {
	height: 100%;
	width: 100%
}

body:-moz-full-screen {
	height: 100%;
	width: 100%
}

body:-ms-fullscreen {
	height: 100%;
	width: 100%
}

body:fullscreen {
	height: 100%;
	width: 100%
}

html {
	-webkit-text-size-adjust: 100%
}

#react-root, body, html {
	height: 100%
}

#react-root {
	z-index: 0
}
</style>
<style type="text/css" data-isostyle-id="is15a25561">
body, button, input, textarea {
	font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
		Helvetica, Arial, sans-serif;
	font-size: 14px;
	line-height: 18px
}

a, a:visited {
	color: #003569;
	text-decoration: none
}

a:active {
	opacity: .5
}
</style>
<style>
._qv64e {
	-webkit-appearance: none;
	border-radius: 3px;
	border-style: solid;
	border-width: 1px;
	font-size: 14px;
	font-weight: 600;
	line-height: 26px;
	outline: 0;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	width: 120px;
}

._gexxb, ._i63ih._gexxb {
	background: #3897f0;
	border-color: #3897f0;
	color: #fff
}

._ov9ai {
	display: block;
	position: relative
}
</style>

</head>
<body class="" style="">

	<span id="react-root" aria-hidden="false">
		<section class="_sq4bv _29u45">
			<main class="_8fi2q _2v79o" role="main">
			<div class="_28rsa">
				<ul class="_mleeu">
					<li><a class="_fvhml _etlo6" href="/mypage/edit.do">프로필 편집</a></li>
					<li><a class="_fvhml _t0stc" href="/mypage/pass.do">비밀번호
							변경</a></li>
							<!-- 
					<li><a class="_fvhml _etlo6" href="/accounts/comment_filter/">댓글</a></li>
					<li><a class="_fvhml _etlo6" href="/accounts/contact_history/">연락처
							관리</a></li>
							 -->
				</ul>
				<article class="_75z9k">
					<div class="_1eg8c">
						<div class="_62ai2 _5g4e2">
							<form id="form1" action="/mypage/uploadProfile.do" method="post" 
								enctype="multipart/form-data">
								<input type="file" accept="image/jpeg" id="photo" name="profile"
									class="_l8al6" style="display: none">
							<button type="button" class="_3xjwv" onclick="$('#photo').click();" 
								title="프로필 사진 바꾸기">
								<c:choose>
									<c:when test="${empty  aDTO.profile}">
										<img alt="프로필 사진 바꾸기" class="_cuacn" src="/images/insta.jpg"
											id="preview">${aDTO.id }
									</c:when>
									<c:otherwise>
										<span class="_3xjwv"> <img id="preview"
											src="${applicationScope.path }${aDTO.profile}" class="_cuacn" />
										</span>
									</c:otherwise>
								</c:choose>
							</button>
							</form>
						</div>
						<div class="_ax54t">
							<h1 class="_gvhl0" title="${aDTO.id }">${aDTO.id }</h1>
							<a type="button" class="_5aav8" id="uploadBt" style="cursor: hand; font-size: 16px;">적용</a>
						</div>
						<div>
						</div>
					</div>
					<form class="_fx423" action="/mypage/pass.do" method="post">
						<div class="_e1xik">
							<aside class="_kx10g">
								<label for="cppOldPassword">이전 비밀번호</label>
							</aside>
							<div class="_cd2n1">
								<input type="password" class="_4abhr _o716c" onfocus="removeAlert();"
									aria-required="true" id="op" name="oldPass" value="">
							</div>
						</div>
						<div class="_e1xik">
							<aside class="_kx10g">
								<label for="cppNewPassword">새 비밀번호</label>
							</aside>
							<div class="_cd2n1">
								<input type="password" class="_4abhr _o716c" onfocus="removeAlert();"
									aria-required="true" id="np" name="newPass" value="">
								<span id="alert1" class="alert"></span>
							</div>
						</div>
						<div class="_e1xik">
							<aside class="_kx10g">
								<label for="cppConfirmPassword">새 비밀번호 확인</label>
							</aside>
							<div class="_cd2n1">
								<input type="password" class="_4abhr _o716c" onfocus="removeAlert();"
									aria-required="true" id="confirm" name="confirmPass" value="">
								<span id="alert2" class="alert"></span>
							</div>
						</div>
						<div class="_e1xik">
							<aside class="_kx10g _ldhkl">
								<label></label>
							</aside>
							<div class="_cd2n1">
								<div class="_qr7ez">
									<span class="_ov9ai">
										<button id="passBt" class="_qv64e _gexxb _r9b8f _jfvwv"
											disabled="">비밀번호 변경</button>
									</span>
								</div>
							</div>
						</div>
					</form>
				</article>

			</div>
			</main>
		</section>
	</span> 
<script> 
	//비밀번호 변경
	$(document).ready(function() {
		$("#np").on("change", function() {
			var oldPass = $("#op").val();
			var newPass = $("#np").val();
			var passFlag = validate_pass(newPass);
			
			console.log(oldPass);
			console.log(newPass);
			
			if (!passFlag) {
				$("#alert1").html("비밀번호는 영문+숫자를 조합하여 8자리 이상으로 변경해주십시오.");
				$("#op").html("");
			}else {
				if (oldPass == newPass) {
					$("#alert1").html("같은 비밀번호로 변경할 수 없습니다!");
					$("#op").html("");
					$("#np").html("");
				} 
			}
		});
		
		$("#confirm").on("change", function() {
			var confirm = $("#confirm").val();
			console.log(confirm);
			if (confirm != $("#np").val()) {
				$("#alert2").html("입력하신 새 비밀번호와 같지 않습니다!");
				$("#confirm").html("");
			}
		});
	});
	
	$("#confirm").keypress(function() {
		$("#passBt").prop("disabled", false);
	});
	
	$("#passBt").on("click", function(event) {
		$("#form2").submit();
		window.alert("비밀번호가 변경되었습니다!");
	});
	
	
	
	function validate_pass(pass) {
		var pattern = new RegExp(/^[a-zA-Z0-9]{8,}$/);
		return pattern.test(pass);
	}
	
	function removeAlert() {
		$(".alert").empty();
	}
		
	
	//프로필 사진 변경
	$("#uploadBt").click(function(){
		$("#form1").submit();
		window.alert("프로필 사진이 변경되었습니다!");
	});

	$("#photo").change(function(e){
		var file = e.target.files[0];
		if (!file.type.match("image.*")) {
			window.alert("이미지파일만 선택할 수 있습니다!");
			return;
		}
		var reader = new FileReader();
		console.log(reader);
		reader.onload = function(e) {
			$("#preview").attr("src", e.target.result);
		}
		reader.readAsDataURL(file);
	});
		
	
	</script>


</body>
</html>
