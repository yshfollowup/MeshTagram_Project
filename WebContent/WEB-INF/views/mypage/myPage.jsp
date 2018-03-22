<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<title>Meshtagram</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">


<style type="text/css">
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
	background-color: #fafafa;
}

._mesn5 {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	margin: 0 auto 30px;
	max-width: 935px;
	width: 100%;
}

._mainc {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
}

._b0acm {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
}

._qdmzb {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

._3xjwv ._62ai2 {
	height: 100%;
	width: 100%;
}

._62ai2 {
	background-color: #fafafa;
	border-radius: 50%;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin: 0 auto;
	overflow: hidden;
	position: relative;
	height: 152px;
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
	top: 0;
}

._3xjwv {
	border: 0;
	cursor: pointer;
	padding: 0;
}

._cuacn {
	left: 0;
	position: absolute;
	top: 0;
	height: 100%;
	width: 100%;
}

._l8al6 {
	display: none !important;
}

._o6mpc {
	color: #262626;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	min-width: 0
}

._ienqf, ._rf3jb {
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	min-width: 0
}

._rf3jb {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	margin-top: 0;
	margin-bottom: 0;
}

._ienqf {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
}

._l9ml9, ._tb97a {
	display: block
}

._l9ml9, ._ncrqg {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	margin-left: 20px
}

._ov9ai {
	display: block;
	position: relative
}

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
	width: 100%
}

._qv64e:active {
	opacity: .7
}

._t78yp {
	background: 0 0;
	border-color: #dbdbdb;
	color: #262626
}

._i63ih._t78yp {
	opacity: .7
}

._4tgw8, ._r9b8f {
	padding: 0 12px
}

._1ekh3 {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	height: 0;
	margin-left: 5px;
	margin-right: -10px
}

._68sh8, ._q8y0e {
	background-color: transparent;
	border: 0;
	cursor: pointer;
	padding: 0
}

._q8y0e {
	margin-left: 2px;
	margin-top: -12px
}

._8scx2 {
	display: block;
	overflow: hidden;
	text-indent: 110%;
	white-space: nowrap
}

._h9luf, ._pws6z {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
}

._h9luf {
	margin-top: 20px;
	margin-bottom: 20px;
	padding-left: 0px;
}

._bnq48 {
	font-size: 16px;
	margin-right: 40px
}

._bnq48:first-child {
	margin-left: 0
}

._bnq48:last-child {
	margin-right: 0
}

._t98z6, ._t98z6:active, ._t98z6:hover, ._t98z6:visited {
	color: inherit
}

._fd86t {
	color: #262626;
	font-weight: 600
}

._tb97a:empty {
	display: none
}

._kc4z2 {
	display: inline;
	font-weight: 600
}

._mck9w {
	display: block;
	position: relative;
	width: 100%
}

._4rbun {
	display: block;
	overflow: hidden;
	padding-bottom: 100%;
}

._2di5p, ._si7dy {
	left: 0;
	position: absolute;
	top: 0
}

._si7dy {
	bottom: 0;
	right: 0
}

._2di5p {
	height: 100%;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	width: 100%
}

@media ( min-width :736px) {
	._r9b8f {
		padding: 0 24px
	}
	._mesn5 {
		-webkit-box-sizing: content-box;
		box-sizing: content-box;
		padding: 60px 20px 0;
		width: calc(100% - 40px);
	}
	._o6mpc {
		-webkit-flex-basis: 30px;
		-ms-flex-preferred-size: 30px;
		flex-basis: 30px;
		-webkit-box-flex: 2;
		-webkit-flex-grow: 2;
		-ms-flex-positive: 2;
		flex-grow: 2
	}
	._mainc {
		margin-bottom: 44px;
	}
	._b0acm {
		-webkit-flex-basis: 0;
		-ms-flex-preferred-size: 0;
		flex-basis: 0;
		-webkit-box-flex: 1;
		-webkit-flex-grow: 1;
		-ms-flex-positive: 1;
		flex-grow: 1;
		margin-right: 30px;
	}
	._qdmzb {
		height: 152px;
		width: 152px;
	}
	._rf3jb {
		font-size: 32px;
		line-height: 40px;
		font-weight: 200
	}
	._tb97a {
		font-size: 16px;
		line-height: 24px;
		word-wrap: break-word
	}
}

._njrw0 {
	cursor: pointer
}

@media ( max-width :735px) {
	._o6mpc {
		-webkit-flex-basis: 0;
		-ms-flex-preferred-size: 0;
		flex-basis: 0;
		-webkit-box-flex: 1;
		-webkit-flex-grow: 1;
		-ms-flex-positive: 1;
		flex-grow: 1
	}
	._mainc {
		margin-right: auto;
		margin-left: 30px;
	}
	._b0acm {
		margin-right: 28px;
	}
	._qdmzb {
		display: none;
	}
	._ienqf {
		margin-bottom: 12px
	}
	._rf3jb {
		font-size: 22px;
		line-height: 26px
	}
	._tb97a {
		border-bottom: 1px solid #efefef;
		font-size: 14px;
		line-height: 20px;
		margin-bottom: 12px;
		overflow: hidden;
		padding: 0 16px 21px;
		text-overflow: ellipsis;
	}
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
<style type="text/css" data-isostyle-id="is-434588c2">
.coreSpriteActivityHeart, .coreSpriteAddPhoto, .coreSpriteAddText,
	.coreSpriteAppIcon, .coreSpriteApproveLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -414px -129px;
	height: 62px;
	width: 62px
}

.coreSpriteAddPhoto, .coreSpriteAddText, .coreSpriteAppIcon,
	.coreSpriteApproveLarge {
	background-position: -82px -317px;
	height: 80px;
	width: 80px
}

.coreSpriteAddText, .coreSpriteAppIcon, .coreSpriteApproveLarge {
	background-position: -413px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteAppIcon, .coreSpriteApproveLarge {
	background-position: -135px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteApproveLarge {
	background-position: 0 0;
	height: 148px;
	width: 148px
}

.coreSpriteAppStoreButton, .coreSpriteBoomerang,
	.coreSpriteCameraInactive, .coreSpriteCheck, .coreSpriteChevronDark {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -414px -43px;
	height: 41px;
	width: 128px
}

.coreSpriteBoomerang, .coreSpriteCameraInactive, .coreSpriteCheck,
	.coreSpriteChevronDark {
	background-position: -546px -281px;
	height: 17px;
	width: 17px
}

.coreSpriteCameraInactive, .coreSpriteCheck, .coreSpriteChevronDark {
	background-position: -26px -505px;
	height: 21px;
	width: 24px
}

.coreSpriteCheck, .coreSpriteChevronDark {
	background-position: -478px -193px;
	height: 62px;
	width: 62px
}

.coreSpriteChevronDark {
	background-position: -561px -395px;
	height: 10px;
	width: 6px
}

.coreSpriteChevronDownGrey, .coreSpriteChevronRight, .coreSpriteClose,
	.coreSpriteCloseLight, .coreSpriteComment {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -490px;
	height: 12px;
	width: 12px
}

.coreSpriteChevronRight, .coreSpriteClose, .coreSpriteCloseLight,
	.coreSpriteComment {
	background-position: -559px -372px;
	height: 11px;
	width: 6px
}

.coreSpriteClose, .coreSpriteCloseLight, .coreSpriteComment {
	background-position: -546px -72px;
	height: 20px;
	width: 20px
}

.coreSpriteCloseLight, .coreSpriteComment {
	background-position: -486px -430px;
	height: 24px;
	width: 24px
}

.coreSpriteComment {
	background-position: -156px -479px
}

.coreSpriteDesktopNavActivity, .coreSpriteDesktopNavExplore,
	.coreSpriteDesktopNavLogoAndWordmark, .coreSpriteDesktopNavProfile,
	.coreSpriteDismissLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -257px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteDesktopNavExplore, .coreSpriteDesktopNavLogoAndWordmark,
	.coreSpriteDesktopNavProfile, .coreSpriteDismissLarge {
	background-position: -335px -399px
}

.coreSpriteDesktopNavLogoAndWordmark, .coreSpriteDesktopNavProfile,
	.coreSpriteDismissLarge {
	background-position: -177px -264px;
	height: 35px;
	width: 176px
}

.coreSpriteDesktopNavProfile, .coreSpriteDismissLarge {
	background-position: -182px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteDismissLarge {
	background-position: -441px -385px;
	height: 10px;
	width: 10px
}

.coreSpriteDismissSmall, .coreSpriteDownload,
	.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6 {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -559px -385px;
	height: 8px;
	width: 8px
}

.coreSpriteDownload, .coreSpriteDropdownArrowBlue5,
	.coreSpriteDropdownArrowBlue6 {
	background-position: -414px -321px;
	height: 62px;
	width: 62px
}

.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6 {
	background-position: -475px -385px;
	height: 6px;
	width: 9px
}

.coreSpriteDropdownArrowBlue6 {
	background-position: -464px -385px
}

.coreSpriteDropdownArrowGrey9, .coreSpriteDropdownArrowWhite,
	.coreSpriteFacebookIcon, .coreSpriteFacebookIconInverted,
	.coreSpriteFbGlyph {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -560px -445px;
	height: 6px;
	width: 8px
}

.coreSpriteDropdownArrowWhite, .coreSpriteFacebookIcon,
	.coreSpriteFacebookIconInverted, .coreSpriteFbGlyph {
	background-position: -453px -385px;
	width: 9px
}

.coreSpriteFacebookIcon, .coreSpriteFacebookIconInverted,
	.coreSpriteFbGlyph {
	background-position: -546px -318px;
	height: 16px;
	width: 16px
}

.coreSpriteFacebookIconInverted, .coreSpriteFbGlyph {
	background-position: -546px -300px
}

.coreSpriteFbGlyph {
	background-position: -546px 0;
	height: 22px;
	width: 22px
}

.coreSpriteFeedCreation, .coreSpriteGlyphBlack, .coreSpriteGlyphGradient,
	.coreSpriteGlyphWhite, .coreSpriteGooglePlayButton {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -338px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteGlyphBlack, .coreSpriteGlyphGradient, .coreSpriteGlyphWhite,
	.coreSpriteGooglePlayButton {
	background-position: -331px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteGlyphGradient, .coreSpriteGlyphWhite,
	.coreSpriteGooglePlayButton {
	background-position: -177px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteGlyphWhite, .coreSpriteGooglePlayButton {
	background-position: -105px -399px;
	height: 29px;
	width: 29px
}

.coreSpriteGooglePlayButton {
	background-position: -414px 0;
	height: 41px;
	width: 130px
}

.coreSpriteHashtag, .coreSpriteHeartFull, .coreSpriteHeartOpen,
	.coreSpriteHeartSmall, .coreSpriteHyperlapse {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -395px;
	height: 17px;
	width: 13px
}

.coreSpriteHeartFull, .coreSpriteHeartOpen, .coreSpriteHeartSmall,
	.coreSpriteHyperlapse {
	background-position: -520px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteHeartOpen, .coreSpriteHeartSmall, .coreSpriteHyperlapse {
	background-position: -364px -479px
}

.coreSpriteHeartSmall, .coreSpriteHyperlapse {
	background-position: -546px -158px;
	height: 19px;
	width: 19px
}

.coreSpriteHyperlapse {
	background-position: -546px -262px;
	height: 17px;
	width: 17px
}

.coreSpriteInputAccepted, .coreSpriteInputError, .coreSpriteInputRefresh,
	.coreSpriteKeyhole, .coreSpriteLeftChevron,
	.coreSpriteLeftPaginationArrow {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -389px -264px;
	height: 22px;
	width: 22px
}

.coreSpriteInputError, .coreSpriteInputRefresh, .coreSpriteKeyhole,
	.coreSpriteLeftChevron, .coreSpriteLeftPaginationArrow {
	background-position: -546px -24px
}

.coreSpriteInputRefresh, .coreSpriteKeyhole, .coreSpriteLeftChevron,
	.coreSpriteLeftPaginationArrow {
	background-position: -546px -48px;
	width: 21px
}

.coreSpriteKeyhole, .coreSpriteLeftChevron,
	.coreSpriteLeftPaginationArrow {
	background-position: -414px -257px;
	height: 62px;
	width: 62px
}

.coreSpriteLeftChevron, .coreSpriteLeftPaginationArrow {
	background-position: -378px -317px;
	height: 30px;
	width: 30px
}

.coreSpriteLeftPaginationArrow {
	background-position: -219px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteLikeAnimationHeart, .coreSpriteLocation,
	.coreSpriteLocationActive, .coreSpriteLock, .coreSpriteLockLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -300px -114px;
	height: 81px;
	width: 92px
}

.coreSpriteLocation, .coreSpriteLocationActive, .coreSpriteLock,
	.coreSpriteLockLarge {
	background-position: -546px -241px;
	height: 19px;
	width: 16px
}

.coreSpriteLocationActive, .coreSpriteLock, .coreSpriteLockLarge {
	background-position: -546px -219px;
	height: 20px
}

.coreSpriteLock, .coreSpriteLockLarge {
	background-position: -164px -317px;
	height: 76px;
	width: 76px
}

.coreSpriteLockLarge {
	background-position: -150px 0;
	height: 148px;
	width: 148px
}

.coreSpriteLoggedOutGenericUpsell, .coreSpriteLoggedOutWordmark,
	.coreSpriteMobileNavActivityActive,
	.coreSpriteMobileNavActivityInactive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -478px -321px;
	height: 58px;
	width: 58px
}

.coreSpriteLoggedOutWordmark, .coreSpriteMobileNavActivityActive,
	.coreSpriteMobileNavActivityInactive {
	background-position: 0 -264px;
	height: 51px;
	width: 175px
}

.coreSpriteMobileNavActivityActive, .coreSpriteMobileNavActivityInactive
	{
	background-position: -283px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavActivityInactive {
	background-position: -309px -399px
}

.coreSpriteMobileNavAddPeopleActive,
	.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect,
	.coreSpriteMobileNavDiscoverPeople {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -199px -399px;
	height: 24px;
	width: 30px
}

.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect,
	.coreSpriteMobileNavDiscoverPeople {
	background-position: -167px -399px
}

.coreSpriteMobileNavDirect, .coreSpriteMobileNavDiscoverPeople {
	background-position: -387px -399px;
	width: 24px
}

.coreSpriteMobileNavDiscoverPeople {
	background-position: -378px -349px;
	width: 32px
}

.coreSpriteMobileNavExploreActive, .coreSpriteMobileNavExploreInactive,
	.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive,
	.coreSpriteMobileNavLogo {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -439px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive,
	.coreSpriteMobileNavHomeInactive, .coreSpriteMobileNavLogo {
	background-position: -465px -399px
}

.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive,
	.coreSpriteMobileNavLogo {
	background-position: -491px -399px
}

.coreSpriteMobileNavHomeInactive, .coreSpriteMobileNavLogo {
	background-position: -517px -399px
}

.coreSpriteMobileNavLogo {
	background-position: -459px -430px;
	height: 25px;
	width: 25px
}

.coreSpriteMobileNavMenuActive, .coreSpriteMobileNavMenuInactive,
	.coreSpriteMobileNavProfileActive, .coreSpriteMobileNavProfileInactive
	{
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -512px -430px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavMenuInactive, .coreSpriteMobileNavProfileActive,
	.coreSpriteMobileNavProfileInactive {
	background-position: 0 -479px
}

.coreSpriteMobileNavProfileActive, .coreSpriteMobileNavProfileInactive {
	background-position: -26px -479px
}

.coreSpriteMobileNavProfileInactive {
	background-position: -52px -479px
}

.coreSpriteMobileNavSearchActive, .coreSpriteMobileNavSearchInactive,
	.coreSpriteMobileNavSettings, .coreSpriteMobileNavTypeLogo {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -78px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavSearchInactive, .coreSpriteMobileNavSettings,
	.coreSpriteMobileNavTypeLogo {
	background-position: -104px -479px
}

.coreSpriteMobileNavSettings, .coreSpriteMobileNavTypeLogo {
	background-position: -130px -479px
}

.coreSpriteMobileNavTypeLogo {
	background-position: 0 -399px;
	height: 29px;
	width: 103px
}

.coreSpriteNotificationLeftChevron, .coreSpriteNotificationRightChevron,
	.coreSpriteNullProfile, .coreSpriteOptionsEllipsis {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -372px;
	height: 21px;
	width: 11px
}

.coreSpriteNotificationRightChevron, .coreSpriteNullProfile,
	.coreSpriteOptionsEllipsis {
	background-position: -546px -445px;
	height: 15px;
	width: 12px
}

.coreSpriteNullProfile, .coreSpriteOptionsEllipsis {
	background-position: -414px -193px;
	height: 62px;
	width: 62px
}

.coreSpriteOptionsEllipsis {
	background-position: -546px -336px;
	height: 16px;
	width: 16px
}

.coreSpriteOptionsEllipsisLight, .coreSpritePagingChevron,
	.coreSpritePlayIconSmall, .coreSpritePrivateLock {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -286px -479px;
	height: 24px;
	width: 24px
}

.coreSpritePagingChevron, .coreSpritePlayIconSmall,
	.coreSpritePrivateLock {
	background-position: -312px -479px
}

.coreSpritePlayIconSmall, .coreSpritePrivateLock {
	background-position: -546px -116px;
	height: 19px;
	width: 19px
}

.coreSpritePrivateLock {
	background-position: -261px -430px;
	height: 36px;
	width: 36px
}

.coreSpriteProfileCamera, .coreSpriteProfileGrid,
	.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -478px -129px;
	height: 62px;
	width: 62px
}

.coreSpriteProfileGrid, .coreSpriteProfileGridActive,
	.coreSpriteProfilePicUpsell {
	background-position: -390px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell {
	background-position: -416px -479px
}

.coreSpriteProfilePicUpsell {
	background-position: 0 -317px;
	height: 80px;
	width: 80px
}

.coreSpriteProfileSave, .coreSpriteProfileSaveActive, .coreSpriteReload,
	.coreSpriteRightChevron, .coreSpriteRightPaginationArrow {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -468px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteProfileSaveActive, .coreSpriteReload, .coreSpriteRightChevron,
	.coreSpriteRightPaginationArrow {
	background-position: -494px -479px
}

.coreSpriteReload, .coreSpriteRightChevron,
	.coreSpriteRightPaginationArrow {
	background-position: -136px -399px;
	height: 29px;
	width: 29px
}

.coreSpriteRightChevron, .coreSpriteRightPaginationArrow {
	background-position: -395px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteRightPaginationArrow {
	background-position: -93px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteSaveFull, .coreSpriteSaveLightFull, .coreSpriteSaveLightOpen,
	.coreSpriteSaveNull, .coreSpriteSaveOpen, .coreSpriteSaveStory {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -260px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteSaveLightFull, .coreSpriteSaveLightOpen, .coreSpriteSaveNull,
	.coreSpriteSaveOpen, .coreSpriteSaveStory {
	background-position: -234px -479px
}

.coreSpriteSaveLightOpen, .coreSpriteSaveNull, .coreSpriteSaveOpen,
	.coreSpriteSaveStory {
	background-position: -208px -479px
}

.coreSpriteSaveNull, .coreSpriteSaveOpen, .coreSpriteSaveStory {
	background-position: -478px -257px;
	height: 62px;
	width: 62px
}

.coreSpriteSaveOpen, .coreSpriteSaveStory {
	background-position: 0 -505px;
	height: 24px;
	width: 24px
}

.coreSpriteSaveStory {
	background-position: -442px -479px
}

.coreSpriteSearchClear, .coreSpriteSearchIcon,
	.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -94px;
	height: 20px;
	width: 20px
}

.coreSpriteSearchIcon, .coreSpriteSensitivityIcon,
	.coreSpriteSensitivityIconSmall {
	background-position: -429px -385px;
	height: 10px;
	width: 10px
}

.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall {
	background-position: -358px -197px;
	height: 48px;
	width: 48px
}

.coreSpriteSensitivityIconSmall {
	background-position: -355px -264px;
	height: 32px;
	width: 32px
}

.coreSpriteSidecarIconLarge, .coreSpriteSidecarIconSmall,
	.coreSpriteSpeechBubbleSmall, .coreSpriteSpinsta, .coreSpriteSpinstaNux
	{
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: 0 -430px;
	height: 47px;
	width: 47px
}

.coreSpriteSidecarIconSmall, .coreSpriteSpeechBubbleSmall,
	.coreSpriteSpinsta, .coreSpriteSpinstaNux {
	background-position: -363px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteSpeechBubbleSmall, .coreSpriteSpinsta, .coreSpriteSpinstaNux
	{
	background-position: -546px -137px;
	height: 19px;
	width: 19px
}

.coreSpriteSpinsta, .coreSpriteSpinstaNux {
	background-position: -546px -517px;
	height: 11px;
	width: 12px
}

.coreSpriteSpinstaNux {
	background-position: -427px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteSpinstaStory, .coreSpriteStoriesPost,
	.coreSpriteStoryCreation, .coreSpriteStoryCreationAlt,
	.coreSpriteStoryViewCount {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -504px;
	height: 11px;
	width: 12px
}

.coreSpriteStoriesPost, .coreSpriteStoryCreation,
	.coreSpriteStoryCreationAlt, .coreSpriteStoryViewCount {
	background-position: -361px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteStoryCreation, .coreSpriteStoryCreationAlt,
	.coreSpriteStoryViewCount {
	background-position: -231px -399px
}

.coreSpriteStoryCreationAlt, .coreSpriteStoryViewCount {
	background-position: -546px -199px;
	height: 18px;
	width: 18px
}

.coreSpriteStoryViewCount {
	background-position: -414px -385px;
	height: 10px;
	width: 13px
}

.coreSpriteUnreadComments, .coreSpriteUnreadLikes,
	.coreSpriteUnreadRelationships, .coreSpriteUpsellCommentLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -546px -414px;
	height: 14px;
	width: 14px
}

.coreSpriteUnreadLikes, .coreSpriteUnreadRelationships,
	.coreSpriteUpsellCommentLarge {
	background-position: -546px -462px;
	height: 12px
}

.coreSpriteUnreadRelationships, .coreSpriteUpsellCommentLarge {
	background-position: -546px -430px;
	height: 13px
}

.coreSpriteUpsellCommentLarge {
	background-position: -114px -150px;
	height: 112px;
	width: 112px
}

.coreSpriteUpsellCommentSmall, .coreSpriteUpsellLikeLarge,
	.coreSpriteUpsellLikeSmall, .coreSpriteUpsellSaveLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -228px -150px;
	height: 56px;
	width: 56px
}

.coreSpriteUpsellLikeLarge, .coreSpriteUpsellLikeSmall,
	.coreSpriteUpsellSaveLarge {
	background-position: 0 -150px;
	height: 112px;
	width: 112px
}

.coreSpriteUpsellLikeSmall, .coreSpriteUpsellSaveLarge {
	background-position: -300px -197px;
	height: 56px;
	width: 56px
}

.coreSpriteUpsellSaveLarge {
	background-position: -300px 0;
	height: 112px;
	width: 112px
}

.coreSpriteUpsellSaveSmall, .coreSpriteUserTagIndicator,
	.coreSpriteVerifiedBadge, .coreSpriteVerifiedBadgeSmall {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -320px -317px;
	height: 56px;
	width: 56px
}

.coreSpriteUserTagIndicator, .coreSpriteVerifiedBadge,
	.coreSpriteVerifiedBadgeSmall {
	background-position: -49px -430px;
	height: 41px;
	width: 42px
}

.coreSpriteVerifiedBadge, .coreSpriteVerifiedBadgeSmall {
	background-position: -546px -179px;
	height: 18px;
	width: 18px
}

.coreSpriteVerifiedBadgeSmall {
	background-position: -546px -476px;
	height: 12px;
	width: 12px
}

.coreSpriteVideoIconLarge, .coreSpriteVideoIconSmall,
	.coreSpriteVideoNux, .coreSpriteViewCount,
	.coreSpriteWindowsStoreButton {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -228px -208px;
	height: 48px;
	width: 48px
}

.coreSpriteVideoIconSmall, .coreSpriteVideoNux, .coreSpriteViewCount,
	.coreSpriteWindowsStoreButton {
	background-position: -299px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteVideoNux, .coreSpriteViewCount, .coreSpriteWindowsStoreButton
	{
	background-position: -242px -317px;
	height: 76px;
	width: 76px
}

.coreSpriteViewCount, .coreSpriteWindowsStoreButton {
	background-position: -546px -354px;
	height: 16px;
	width: 16px
}

.coreSpriteWindowsStoreButton {
	background-position: -414px -86px;
	height: 41px;
	width: 120px
}

@media ( min-device-pixel-ratio :1.5) , ( -webkit-min-device-pixel-ratio :1.5) ,
		( min-resolution :144dpi) {
	.coreSpriteActivityHeart, .coreSpriteAddPhoto, .coreSpriteAddText,
		.coreSpriteAppIcon {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -189px -247px
	}
	.coreSpriteAddPhoto, .coreSpriteAddText, .coreSpriteAppIcon {
		background-position: -176px 0
	}
	.coreSpriteAddText, .coreSpriteAppIcon {
		background-position: -388px -250px
	}
	.coreSpriteAppIcon {
		background-position: -84px -310px
	}
	.coreSpriteAppStoreButton, .coreSpriteBoomerang,
		.coreSpriteCameraInactive, .coreSpriteCheck, .coreSpriteChevronDark {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -257px -42px
	}
	.coreSpriteBoomerang, .coreSpriteCameraInactive, .coreSpriteCheck,
		.coreSpriteChevronDark {
		background-position: -281px -377px
	}
	.coreSpriteCameraInactive, .coreSpriteCheck, .coreSpriteChevronDark {
		background-position: -360px -272px
	}
	.coreSpriteCheck, .coreSpriteChevronDark {
		background-position: -154px -170px
	}
	.coreSpriteChevronDark {
		background-position: -413px -289px
	}
	.coreSpriteChevronDownGrey, .coreSpriteChevronRight, .coreSpriteClose,
		.coreSpriteCloseLight, .coreSpriteComment {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -220px
	}
	.coreSpriteChevronRight, .coreSpriteClose, .coreSpriteCloseLight,
		.coreSpriteComment {
		background-position: -413px -300px
	}
	.coreSpriteClose, .coreSpriteCloseLight, .coreSpriteComment {
		background-position: -162px -377px
	}
	.coreSpriteCloseLight, .coreSpriteComment {
		background-position: -25px -352px
	}
	.coreSpriteComment {
		background-position: -360px -247px
	}
	.coreSpriteDesktopNavActivity, .coreSpriteDesktopNavExplore,
		.coreSpriteDesktopNavLogoAndWordmark, .coreSpriteDesktopNavProfile {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -125px -352px
	}
	.coreSpriteDesktopNavExplore, .coreSpriteDesktopNavLogoAndWordmark,
		.coreSpriteDesktopNavProfile {
		background-position: 0 -352px
	}
	.coreSpriteDesktopNavLogoAndWordmark, .coreSpriteDesktopNavProfile {
		background-position: 0 -134px
	}
	.coreSpriteDesktopNavProfile {
		background-position: -150px -352px
	}
	.coreSpriteDismissLarge, .coreSpriteDismissSmall, .coreSpriteDownload,
		.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6 {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -278px
	}
	.coreSpriteDismissSmall, .coreSpriteDownload,
		.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6 {
		background-position: -421px -289px
	}
	.coreSpriteDownload, .coreSpriteDropdownArrowBlue5,
		.coreSpriteDropdownArrowBlue6 {
		background-position: -126px -247px
	}
	.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6 {
		background-position: -413px -312px
	}
	.coreSpriteDropdownArrowBlue6 {
		background-position: -420px -300px
	}
	.coreSpriteDropdownArrowGrey9, .coreSpriteDropdownArrowWhite,
		.coreSpriteFacebookIcon, .coreSpriteFacebookIconInverted {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -326px
	}
	.coreSpriteDropdownArrowWhite, .coreSpriteFacebookIcon,
		.coreSpriteFacebookIconInverted {
		background-position: -413px -319px
	}
	.coreSpriteFacebookIcon, .coreSpriteFacebookIconInverted {
		background-position: -413px -75px
	}
	.coreSpriteFacebookIconInverted {
		background-position: -413px -92px
	}
	.coreSpriteFbGlyph, .coreSpriteFeedCreation, .coreSpriteGlyphBlack,
		.coreSpriteGlyphGradient, .coreSpriteGlyphWhite {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -50px -377px
	}
	.coreSpriteFeedCreation, .coreSpriteGlyphBlack, .coreSpriteGlyphGradient,
		.coreSpriteGlyphWhite {
		background-position: -360px -310px
	}
	.coreSpriteGlyphBlack, .coreSpriteGlyphGradient, .coreSpriteGlyphWhite {
		background-position: -207px -310px
	}
	.coreSpriteGlyphGradient, .coreSpriteGlyphWhite {
		background-position: -43px -310px
	}
	.coreSpriteGlyphWhite {
		background-position: -330px -310px
	}
	.coreSpriteGooglePlayButton, .coreSpriteHashtag, .coreSpriteHeartFull,
		.coreSpriteHeartOpen, .coreSpriteHeartSmall, .coreSpriteHyperlapse {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -257px 0
	}
	.coreSpriteHashtag, .coreSpriteHeartFull, .coreSpriteHeartOpen,
		.coreSpriteHeartSmall, .coreSpriteHyperlapse {
		background-position: -413px -131px
	}
	.coreSpriteHeartFull, .coreSpriteHeartOpen, .coreSpriteHeartSmall,
		.coreSpriteHyperlapse {
		background-position: -225px -352px
	}
	.coreSpriteHeartOpen, .coreSpriteHeartSmall, .coreSpriteHyperlapse {
		background-position: -250px -352px
	}
	.coreSpriteHeartSmall, .coreSpriteHyperlapse {
		background-position: -223px -377px
	}
	.coreSpriteHyperlapse {
		background-position: -225px -112px
	}
	.coreSpriteInputAccepted, .coreSpriteInputError, .coreSpriteInputRefresh,
		.coreSpriteKeyhole, .coreSpriteLeftChevron {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -73px -377px
	}
	.coreSpriteInputError, .coreSpriteInputRefresh, .coreSpriteKeyhole,
		.coreSpriteLeftChevron {
		background-position: -96px -377px
	}
	.coreSpriteInputRefresh, .coreSpriteKeyhole, .coreSpriteLeftChevron {
		background-position: -119px -377px
	}
	.coreSpriteKeyhole, .coreSpriteLeftChevron {
		background-position: 0 -247px
	}
	.coreSpriteLeftChevron {
		background-position: -210px -134px
	}
	.coreSpriteLeftPaginationArrow, .coreSpriteLikeAnimationHeart,
		.coreSpriteLocation, .coreSpriteLocationActive, .coreSpriteLock {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -125px -310px
	}
	.coreSpriteLikeAnimationHeart, .coreSpriteLocation,
		.coreSpriteLocationActive, .coreSpriteLock {
		background-position: 0 -52px
	}
	.coreSpriteLocation, .coreSpriteLocationActive, .coreSpriteLock {
		background-position: -413px -21px
	}
	.coreSpriteLocationActive, .coreSpriteLock {
		background-position: -413px 0
	}
	.coreSpriteLock {
		background-position: -77px -170px
	}
	.coreSpriteLoggedOutGenericUpsell, .coreSpriteLoggedOutWordmark,
		.coreSpriteMobileNavActivityActive,
		.coreSpriteMobileNavActivityInactive {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -252px -247px
	}
	.coreSpriteLoggedOutWordmark, .coreSpriteMobileNavActivityActive,
		.coreSpriteMobileNavActivityInactive {
		background-position: 0 0
	}
	.coreSpriteMobileNavActivityActive, .coreSpriteMobileNavActivityInactive
		{
		background-position: -175px -352px
	}
	.coreSpriteMobileNavActivityInactive {
		background-position: -200px -352px
	}
	.coreSpriteMobileNavAddPeopleActive,
		.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect,
		.coreSpriteMobileNavDiscoverPeople {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -290px -219px
	}
	.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect,
		.coreSpriteMobileNavDiscoverPeople {
		background-position: -321px -219px
	}
	.coreSpriteMobileNavDirect, .coreSpriteMobileNavDiscoverPeople {
		background-position: -275px -352px
	}
	.coreSpriteMobileNavDiscoverPeople {
		background-position: -257px -219px
	}
	.coreSpriteMobileNavExploreActive, .coreSpriteMobileNavExploreInactive,
		.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -325px -352px
	}
	.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive,
		.coreSpriteMobileNavHomeInactive {
		background-position: -25px -377px
	}
	.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive {
		background-position: -388px 0
	}
	.coreSpriteMobileNavHomeInactive {
		background-position: -388px -25px
	}
	.coreSpriteMobileNavLogo, .coreSpriteMobileNavMenuActive,
		.coreSpriteMobileNavMenuInactive, .coreSpriteMobileNavProfileActive {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -361px -189px
	}
	.coreSpriteMobileNavMenuActive, .coreSpriteMobileNavMenuInactive,
		.coreSpriteMobileNavProfileActive {
		background-position: -388px -75px
	}
	.coreSpriteMobileNavMenuInactive, .coreSpriteMobileNavProfileActive {
		background-position: -388px -100px
	}
	.coreSpriteMobileNavProfileActive {
		background-position: -388px -125px
	}
	.coreSpriteMobileNavProfileInactive, .coreSpriteMobileNavSearchActive,
		.coreSpriteMobileNavSearchInactive, .coreSpriteMobileNavSettings {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -150px
	}
	.coreSpriteMobileNavSearchActive, .coreSpriteMobileNavSearchInactive,
		.coreSpriteMobileNavSettings {
		background-position: -388px -175px
	}
	.coreSpriteMobileNavSearchInactive, .coreSpriteMobileNavSettings {
		background-position: -352px -219px
	}
	.coreSpriteMobileNavSettings {
		background-position: -388px -225px
	}
	.coreSpriteMobileNavTypeLogo, .coreSpriteNotificationLeftChevron,
		.coreSpriteNotificationRightChevron, .coreSpriteNullProfile {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -257px -189px
	}
	.coreSpriteNotificationLeftChevron, .coreSpriteNotificationRightChevron,
		.coreSpriteNullProfile {
		background-position: -413px -109px
	}
	.coreSpriteNotificationRightChevron, .coreSpriteNullProfile {
		background-position: -413px -178px
	}
	.coreSpriteNullProfile {
		background-position: -63px -247px
	}
	.coreSpriteOptionsEllipsis, .coreSpriteOptionsEllipsisLight,
		.coreSpritePagingChevron, .coreSpritePlayIconSmall {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -41px
	}
	.coreSpriteOptionsEllipsisLight, .coreSpritePagingChevron,
		.coreSpritePlayIconSmall {
		background-position: 0 -377px
	}
	.coreSpritePagingChevron, .coreSpritePlayIconSmall {
		background-position: -388px -350px
	}
	.coreSpritePlayIconSmall {
		background-position: -203px -377px
	}
	.coreSpritePrivateLock, .coreSpriteProfileCamera, .coreSpriteProfileGrid,
		.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -217px -170px
	}
	.coreSpriteProfileCamera, .coreSpriteProfileGrid,
		.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell {
		background-position: -320px -126px
	}
	.coreSpriteProfileGrid, .coreSpriteProfileGridActive,
		.coreSpriteProfilePicUpsell {
		background-position: -388px -300px
	}
	.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell {
		background-position: -388px -275px
	}
	.coreSpriteProfilePicUpsell {
		background-position: -93px -52px
	}
	.coreSpriteProfileSave, .coreSpriteProfileSaveActive, .coreSpriteReload,
		.coreSpriteRightChevron, .coreSpriteRightPaginationArrow {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -200px
	}
	.coreSpriteProfileSaveActive, .coreSpriteReload, .coreSpriteRightChevron,
		.coreSpriteRightPaginationArrow {
		background-position: -350px -352px
	}
	.coreSpriteReload, .coreSpriteRightChevron,
		.coreSpriteRightPaginationArrow {
		background-position: -300px -310px
	}
	.coreSpriteRightChevron, .coreSpriteRightPaginationArrow {
		background-position: -238px -310px
	}
	.coreSpriteRightPaginationArrow {
		background-position: -166px -310px
	}
	.coreSpriteSaveFull, .coreSpriteSaveLightFull, .coreSpriteSaveLightOpen,
		.coreSpriteSaveNull, .coreSpriteSaveOpen {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -50px -352px
	}
	.coreSpriteSaveLightFull, .coreSpriteSaveLightOpen, .coreSpriteSaveNull,
		.coreSpriteSaveOpen {
		background-position: -217px -207px
	}
	.coreSpriteSaveLightOpen, .coreSpriteSaveNull, .coreSpriteSaveOpen {
		background-position: -388px -325px
	}
	.coreSpriteSaveNull, .coreSpriteSaveOpen {
		background-position: -257px -126px
	}
	.coreSpriteSaveOpen {
		background-position: -388px -50px
	}
	.coreSpriteSaveStory, .coreSpriteSearchClear, .coreSpriteSearchIcon,
		.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -300px -352px
	}
	.coreSpriteSearchClear, .coreSpriteSearchIcon,
		.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall {
		background-position: -141px -377px
	}
	.coreSpriteSearchIcon, .coreSpriteSensitivityIcon,
		.coreSpriteSensitivityIconSmall {
		background-position: -413px -267px
	}
	.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall {
		background-position: -311px -247px
	}
	.coreSpriteSensitivityIconSmall {
		background-position: -177px -134px
	}
	.coreSpriteSpeechBubbleSmall, .coreSpriteSpinsta, .coreSpriteSpinstaNux,
		.coreSpriteSpinstaStory, .coreSpriteStoriesPost {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -183px -377px
	}
	.coreSpriteSpinsta, .coreSpriteSpinstaNux, .coreSpriteSpinstaStory,
		.coreSpriteStoriesPost {
		background-position: -413px -233px
	}
	.coreSpriteSpinstaNux, .coreSpriteSpinstaStory, .coreSpriteStoriesPost {
		background-position: -269px -310px
	}
	.coreSpriteSpinstaStory, .coreSpriteStoriesPost {
		background-position: -413px -256px
	}
	.coreSpriteStoriesPost {
		background-position: -100px -352px
	}
	.coreSpriteStoryCreation, .coreSpriteStoryCreationAlt,
		.coreSpriteStoryViewCount, .coreSpriteUnreadComments,
		.coreSpriteUnreadLikes {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -75px -352px
	}
	.coreSpriteStoryCreationAlt, .coreSpriteStoryViewCount,
		.coreSpriteUnreadComments, .coreSpriteUnreadLikes {
		background-position: -243px -377px
	}
	.coreSpriteStoryViewCount, .coreSpriteUnreadComments,
		.coreSpriteUnreadLikes {
		background-position: -413px -245px
	}
	.coreSpriteUnreadComments, .coreSpriteUnreadLikes {
		background-position: -413px -149px
	}
	.coreSpriteUnreadLikes {
		background-position: -413px -194px
	}
	.coreSpriteUnreadRelationships, .coreSpriteUserTagIndicator,
		.coreSpriteVerifiedBadge, .coreSpriteVerifiedBadgeSmall {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -164px
	}
	.coreSpriteUserTagIndicator, .coreSpriteVerifiedBadge,
		.coreSpriteVerifiedBadgeSmall {
		background-position: 0 -310px
	}
	.coreSpriteVerifiedBadge, .coreSpriteVerifiedBadgeSmall {
		background-position: -262px -377px
	}
	.coreSpriteVerifiedBadgeSmall {
		background-position: -413px -207px
	}
	.coreSpriteVideoIconLarge, .coreSpriteVideoIconSmall,
		.coreSpriteVideoNux, .coreSpriteViewCount,
		.coreSpriteWindowsStoreButton {
		background-image:
			url(/static/bundles/es6/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -176px -81px
	}
	.coreSpriteVideoIconSmall, .coreSpriteVideoNux, .coreSpriteViewCount,
		.coreSpriteWindowsStoreButton {
		background-position: -225px -81px
	}
	.coreSpriteVideoNux, .coreSpriteViewCount, .coreSpriteWindowsStoreButton
		{
		background-position: 0 -170px
	}
	.coreSpriteViewCount, .coreSpriteWindowsStoreButton {
		background-position: -413px -58px
	}
	.coreSpriteWindowsStoreButton {
		background-position: -257px -84px
	}
}
</style>
<style type="text/css" data-isostyle-id="is3bb85949">
._2e96w {
	border-top: 1px solid #efefef;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 12px;
	font-weight: 600;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	letter-spacing: 1px;
	text-align: center
}

._2e96w, a._t7nuu, a._t7nuu:visited {
	color: #999
}

._2e96w, ._t7nuu, a._sb9lc, a._sb9lc:visited, a._t7nuu, a._t7nuu:visited
	{
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

a._sb9lc, a._sb9lc:visited {
	color: #262626
}

._t7nuu {
	cursor: pointer;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	height: 52px;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center
}

@media ( min-width :736px) {
	._t7nuu
	
	
	
	
	:not
	
	
	 
	
	
	(
	:last-child
	
	
	 
	
	
	){
	margin-right
	
	
	
	
	:
	
	
	 
	
	
	60
	px
	
	
	
	


}

._sb9lc {
	border-top: 1px solid #262626;
	color: #262626;
	margin-top: -1px
}

}
@media ( max-width :735px) {
	._t7nuu {
		-webkit-box-align: stretch;
		-webkit-align-items: stretch;
		-ms-flex-align: stretch;
		align-items: stretch;
		cursor: pointer;
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		-webkit-box-flex: 1;
		-webkit-flex: 1 1 auto;
		-ms-flex: 1 1 auto;
		flex: 1 1 auto;
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row;
		height: 44px
	}
}
</style>
<style type="text/css">
.fb_hidden {
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reposition {
	overflow: hidden;
	position: relative
}

.fb_invisible {
	display: none
}

.fb_reset {
	background: none;
	border: 0;
	border-spacing: 0;
	color: #000;
	cursor: auto;
	direction: ltr;
	font-family: "lucida grande", tahoma, verdana, arial, sans-serif;
	font-size: 11px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	letter-spacing: normal;
	line-height: 1;
	margin: 0;
	overflow: visible;
	padding: 0;
	text-align: left;
	text-decoration: none;
	text-indent: 0;
	text-shadow: none;
	text-transform: none;
	visibility: visible;
	white-space: normal;
	word-spacing: normal
}

.fb_reset>div {
	overflow: hidden
}

.fb_link img {
	border: none
}

@
keyframes fb_transform {
	from {opacity: 0;
	transform: scale(.95)
}

to {
	opacity: 1;
	transform: scale(1)
}

}
.fb_animate {
	animation: fb_transform .3s forwards
}

.fb_dialog {
	background: rgba(82, 82, 82, .7);
	position: absolute;
	top: -10000px;
	z-index: 10001
}

.fb_reset .fb_dialog_legacy {
	overflow: visible
}

.fb_dialog_advanced {
	padding: 10px;
	border-radius: 8px
}

.fb_dialog_content {
	background: #fff;
	color: #333
}

.fb_dialog_close_icon {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 0 transparent;
	cursor: pointer;
	display: block;
	height: 15px;
	position: absolute;
	right: 18px;
	top: 17px;
	width: 15px
}

.fb_dialog_mobile .fb_dialog_close_icon {
	top: 5px;
	left: 5px;
	right: auto
}

.fb_dialog_padding {
	background-color: transparent;
	position: absolute;
	width: 1px;
	z-index: -1
}

.fb_dialog_close_icon:hover {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -15px transparent
}

.fb_dialog_close_icon:active {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yq/r/IE9JII6Z1Ys.png)
		no-repeat scroll 0 -30px transparent
}

.fb_dialog_loader {
	background-color: #f6f7f9;
	border: 1px solid #606060;
	font-size: 24px;
	padding: 20px
}

.fb_dialog_top_left, .fb_dialog_top_right, .fb_dialog_bottom_left,
	.fb_dialog_bottom_right {
	height: 10px;
	width: 10px;
	overflow: hidden;
	position: absolute
}

.fb_dialog_top_left {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 0;
	left: -10px;
	top: -10px
}

.fb_dialog_top_right {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -10px;
	right: -10px;
	top: -10px
}

.fb_dialog_bottom_left {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -20px;
	bottom: -10px;
	left: -10px
}

.fb_dialog_bottom_right {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ye/r/8YeTNIlTZjm.png)
		no-repeat 0 -30px;
	right: -10px;
	bottom: -10px
}

.fb_dialog_vert_left, .fb_dialog_vert_right, .fb_dialog_horiz_top,
	.fb_dialog_horiz_bottom {
	position: absolute;
	background: #525252;
	filter: alpha(opacity = 70);
	opacity: .7
}

.fb_dialog_vert_left, .fb_dialog_vert_right {
	width: 10px;
	height: 100%
}

.fb_dialog_vert_left {
	margin-left: -10px
}

.fb_dialog_vert_right {
	right: 0;
	margin-right: -10px
}

.fb_dialog_horiz_top, .fb_dialog_horiz_bottom {
	width: 100%;
	height: 10px
}

.fb_dialog_horiz_top {
	margin-top: -10px
}

.fb_dialog_horiz_bottom {
	bottom: 0;
	margin-bottom: -10px
}

.fb_dialog_iframe {
	line-height: 0
}

.fb_dialog_content .dialog_title {
	background: #6d84b4;
	border: 1px solid #365899;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	margin: 0
}

.fb_dialog_content .dialog_title>span {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yd/r/Cou7n-nqK52.gif)
		no-repeat 5px 50%;
	float: left;
	padding: 5px 0 7px 26px
}

body.fb_hidden {
	-webkit-transform: none;
	height: 100%;
	margin: 0;
	overflow: visible;
	position: absolute;
	top: -10000px;
	left: 0;
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/ya/r/3rhSv5V8j3o.gif)
		white no-repeat 50% 50%;
	min-height: 100%;
	min-width: 100%;
	overflow: hidden;
	position: absolute;
	top: 0;
	z-index: 10001
}

.fb_dialog.fb_dialog_mobile.loading.centered {
	width: auto;
	height: auto;
	min-height: initial;
	min-width: initial;
	background: none
}

.fb_dialog.fb_dialog_mobile.loading.centered #fb_dialog_loader_spinner {
	width: 100%
}

.fb_dialog.fb_dialog_mobile.loading.centered .fb_dialog_content {
	background: none
}

.loading.centered #fb_dialog_loader_close {
	color: #fff;
	display: block;
	padding-top: 20px;
	clear: both;
	font-size: 18px
}

#fb-root #fb_dialog_ipad_overlay {
	background: rgba(0, 0, 0, .45);
	position: absolute;
	bottom: 0;
	left: 0;
	right: 0;
	top: 0;
	width: 100%;
	min-height: 100%;
	z-index: 10000
}

#fb-root #fb_dialog_ipad_overlay.hidden {
	display: none
}

.fb_dialog.fb_dialog_mobile.loading iframe {
	visibility: hidden
}

.fb_dialog_content .dialog_header {
	-webkit-box-shadow: white 0 1px 1px -1px inset;
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#738ABA),
		to(#2C4987));
	border-bottom: 1px solid;
	border-color: #1d4088;
	color: #fff;
	font: 14px Helvetica, sans-serif;
	font-weight: bold;
	text-overflow: ellipsis;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0;
	vertical-align: middle;
	white-space: nowrap
}

.fb_dialog_content .dialog_header table {
	-webkit-font-smoothing: subpixel-antialiased;
	height: 43px;
	width: 100%
}

.fb_dialog_content .dialog_header td.header_left {
	font-size: 12px;
	padding-left: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .dialog_header td.header_right {
	font-size: 12px;
	padding-right: 5px;
	vertical-align: middle;
	width: 60px
}

.fb_dialog_content .touchable_button {
	background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#4966A6),
		color-stop(.5, #355492), to(#2A4887));
	border: 1px solid #29487d;
	-webkit-background-clip: padding-box;
	-webkit-border-radius: 3px;
	-webkit-box-shadow: rgba(0, 0, 0, .117188) 0 1px 1px inset,
		rgba(255, 255, 255, .167969) 0 1px 0;
	display: inline-block;
	margin-top: 3px;
	max-width: 85px;
	line-height: 18px;
	padding: 4px 12px;
	position: relative
}

.fb_dialog_content .dialog_header .touchable_button input {
	border: none;
	background: none;
	color: #fff;
	font: 12px Helvetica, sans-serif;
	font-weight: bold;
	margin: 2px -12px;
	padding: 2px 6px 3px 6px;
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog_content .dialog_header .header_center {
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 18px;
	text-align: center;
	vertical-align: middle
}

.fb_dialog_content .dialog_content {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat 50% 50%;
	border: 1px solid #555;
	border-bottom: 0;
	border-top: 0;
	height: 150px
}

.fb_dialog_content .dialog_footer {
	background: #f6f7f9;
	border: 1px solid #555;
	border-top-color: #ccc;
	height: 40px
}

#fb_dialog_loader_close {
	float: left
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_button {
	text-shadow: rgba(0, 30, 84, .296875) 0 -1px 0
}

.fb_dialog.fb_dialog_mobile .fb_dialog_close_icon {
	visibility: hidden
}

#fb_dialog_loader_spinner {
	animation: rotateSpinner 1.2s linear infinite;
	background-color: transparent;
	background-image:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/yD/r/t-wz8gw1xG1.png);
	background-repeat: no-repeat;
	background-position: 50% 50%;
	height: 24px;
	width: 24px
}

@
keyframes rotateSpinner { 0%{
	transform: rotate(0deg)
}

100%{
transform






:rotate(360deg)






}
}
.fb_iframe_widget {
	display: inline-block;
	position: relative
}

.fb_iframe_widget span {
	display: inline-block;
	position: relative;
	text-align: justify
}

.fb_iframe_widget iframe {
	position: absolute
}

.fb_iframe_widget_fluid_desktop, .fb_iframe_widget_fluid_desktop span,
	.fb_iframe_widget_fluid_desktop iframe {
	max-width: 100%
}

.fb_iframe_widget_fluid_desktop iframe {
	min-width: 220px;
	position: relative
}

.fb_iframe_widget_lift {
	z-index: 1
}

.fb_hide_iframes iframe {
	position: relative;
	left: -10000px
}

.fb_iframe_widget_loader {
	position: relative;
	display: inline-block
}

.fb_iframe_widget_fluid {
	display: inline
}

.fb_iframe_widget_fluid span {
	width: 100%
}

.fb_iframe_widget_loader iframe {
	min-height: 32px;
	z-index: 2;
	zoom: 1
}

.fb_iframe_widget_loader .FB_Loader {
	background:
		url(https://static.xx.fbcdn.net/rsrc.php/v3/y9/r/jKEcVPZFk-2.gif)
		no-repeat;
	height: 32px;
	width: 32px;
	margin-left: -16px;
	position: absolute;
	left: 50%;
	z-index: 4
}

.fb_customer_chat_bounce_in {
	animation-duration: 250ms;
	animation-name: fb_bounce_in
}

.fb_customer_chat_bounce_out {
	animation-duration: 250ms;
	animation-name: fb_fade_out
}

.fb_invisible_flow {
	display: inherit;
	height: 0;
	overflow-x: hidden;
	width: 0
}

.fb_mobile_overlay_active {
	height: 100%;
	overflow: hidden;
	position: fixed;
	width: 100%
}

@
keyframes fb_fade_out {
	from {opacity: 1
}

to {
	opacity: 0
}

}
@
keyframes fb_bounce_in { 0%{
	opacity: 0;
	transform: scale(.8, .8);
	transform-origin: 100% 100%
}
10%{
opacity






:






.1






}
20%{
opacity






:






.2






}
30%{
opacity






:






.3






}
40%{
opacity






:






.4






}
50%{
opacity






:






.5






}
60%{
opacity






:






.6






}
70%{
opacity






:






.7






}
80%{
opacity






:






.8






;
transform






:scale






(1
.03
,
1
.03






)
}
90{
opacity






:






.9






}
100%{
opacity






:






1;
transform






:scale






(1
,
1)
}
}
</style>
<style type="text/css" data-isostyle-id="is65395b00">
._havey, ._sfpqp {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

._sfpqp {
	-webkit-box-orient: horizontal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row
}
</style>
<style type="text/css" data-isostyle-id="is64c45aea">
._6d3hm {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row
}

._6d3hm>* {
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0%;
	-ms-flex: 1 0 0%;
	flex: 1 0 0%
}
</style>
<style type="text/css" data-isostyle-id="is7e375c73">
._qe0az {
	margin-top: 40px;
	height: 48px
}

._mnav9:last-child {
	margin-bottom: 0
}

._tn0ps:last-child {
	margin-right: 0
}

@media ( min-width :736px) {
	._tn0ps {
		margin-right: 28px
	}
	._mnav9 {
		margin-bottom: 28px
	}
}

@media ( max-width :735px) {
	._tn0ps {
		margin-right: 3px
	}
	._mnav9 {
		margin-bottom: 3px
	}
}
</style>


</head>
<body>

	<main class="_8fi2q _2v79o" role="main">
	<article class="_mesn5">
		<header class="_mainc">
			<div class="_b0acm">
				<div class="_qdmzb">
					<div class="_62ai2">
						<button class="_3xjwv" title="프로필 사진 바꾸기">
							<img alt="프로필 사진 바꾸기" class="_cuacn" src="/images/insta.jpg"
								id="preview">${aDTO.id }
						</button>
						<div>
							<form enctype="multipart/form-data">
								<input type="file" accept="image/jpeg" class="_l8al6">
							</form>
						</div>
					</div>
				</div>
			</div>
			<section class="_o6mpc">
				<div class="_ienqf">
					<h1 class="_rf3jb notranslate" title="ID">ID표시부분</h1>
					<div class="_l9ml9">
						<span class="_ov9ai"><button
								class="_qv64e _t78yp _r9b8f _njrw0"
								onclick="location.href='/mypage/edit.do'">프로필 편집</button></span>
					</div>
					<div class="_1ekh3">
						<button class="_q8y0e coreSpriteMobileNavSettings _8scx2"
							data-toggle="modal" data-target="#myModal">옵션</button>
					</div>
				</div>
				<ul class="_h9luf">
					<li class="_bnq48"><span class="_t98z6">게시물${fn:length(myPost) }
					</span></li>
					<li class="_bnq48"><a class="_t98z6" href="follower.do"
						id="follower">팔로워${fn:length(follower) }</a></li>
					<li class="_bnq48"><a class="_t98z6" href="following.do"
						id="following">팔로우${fn:length(following) }</a></li>
				</ul>
				<div class="_tb97a">
					<h1 class="_kc4z2">이름표시부분</h1>
				</div>
			</section>
		</header>

		<div class="_2e96w">
			<a class="_t7nuu _sb9lc" href="/llunarian/"
				style="margin-right: 30px;"><div class="">게시물</div></a><a
				class="_t7nuu" href="/llunarian/saved/"><div class="">저장됨</div></a>
		</div>
		<div>
			<div class="_havey" style="padding-top: 0px; padding-bottom: 0px;">
				<div class="_6d3hm _mnav9">
					<c:forEach var="obj" items="${myPost }">
						<div class="_mck9w _gvoze _tn0ps">
							<div class="_4rbun">

								<div class="mouseIn" class="_2di5p">
									<img src="${applicationScope.Path }${obj.image}"
										style="width: 300px; height: 300px; border-radius: 30px"
										id="preview"> <span class="In"></span>
								</div>
								<p style="float: left; width: 33%;">
									<small><c:forEach items="${obj.tags }" var="tag">
											<a
												href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
										</c:forEach> </small>
								</p>

							</div>
							<div class="_si7dy"></div>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</article>
	</main>


	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<button class="_h74gn">
						<h5 class="modal-title">프로필 변경</h5>
					</button>
				</div>
				<div class="modal-body">
					<button class="_h74gn">
						<p>비밀번호 변경</p>
					</button>
				</div>
				<div class="modal-body">
					<button class="_h74gn">댓글관리</button>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>

		</div>
	</div>
	<script>
		$("#follower").on("change", function() {
			$("all-screen").attr("aria-hidden", false)
		});

		$("#following").on("change", function() {
			$("all-screen").attr("aria-hidden", false)
		});
	</script>




</body>
</html>