<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<title>Meshtagram</title>


<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">

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
	order: 4
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
supports (margin-bottom:env(safe-area-inset-bottom) ){ .
	_evlcw: not(._b696q){margin-bottom:env(safe-area-inset-bottom)
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
<style type="text/css" data-isostyle-id="is-7750a77a">
._qmq8y {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin: 30px auto 0;
	max-width: 935px;
	width: 100%
}

@media ( max-width :875px) {
	._sf3lp {
		display: none
	}
}

@media ( max-width :450px) {
	._qmq8y {
		margin-top: 0
	}
}
</style>
<style type="text/css" data-isostyle-id="is-68b6a608">
._ngtox {
	-webkit-align-self: center;
	-ms-flex-item-align: center;
	align-self: center;
	background-image:
		url(/images/phones.png);
	background-position: 0 0;
	background-size: 454px 618px;
	-webkit-flex-basis: 454px;
	-ms-flex-preferred-size: 454px;
	flex-basis: 454px;
	height: 618px;
	margin-left: -35px;
	margin-right: -15px
}

@media screen and (-webkit-min-device-pixel-ratio:1.5) , screen and
	(min-resolution:1.5dppx) {
	._ngtox {
		background-image:
			url(/static/images/homepage/home-phones@2x.png/f82c2ede4ccb.png)
	}
}

._a8pmp {
	margin: 99px 0 0 151px;
	position: relative
}

._824m9 {
	height: 427px;
	left: 0;
	opacity: 0;
	position: absolute;
	top: 0;
	visibility: hidden;
	width: 240px
}

._4je3h, ._9i1mm {
	opacity: 1;
	visibility: visible
}

._4je3h {
	-webkit-transition: opacity 1.5s ease-in;
	transition: opacity 1.5s ease-in;
	z-index: 2
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
<style type="text/css" data-isostyle-id="isae65a8d">
._kbq82 {
	color: #262626;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin-top: 12px;
	max-width: 350px
}

._g9ean {
	color: #262626;
	font-size: 14px;
	margin: 15px;
	text-align: center
}

._g9ean>a, ._g9ean>a:active, ._g9ean>a:hover, ._g9ean>a:visited {
	color: #3897f0
}

._f9sjj {
	background-color: #fff;
	border: 1px solid #e6e6e6;
	border-radius: 1px;
	margin: 0 0 10px;
	padding: 10px 0
}

._f9sjj:empty {
	display: none
}

._68swa {
	margin: 22px auto 12px
}

._812lm {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	padding: 20px 0
}

@media ( max-width :450px) {
	._kbq82 {
		-webkit-box-pack: justify;
		-webkit-justify-content: space-between;
		-ms-flex-pack: justify;
		justify-content: space-between;
		margin-top: 0;
		max-width: 100%
	}
	._5lvdj {
		margin-top: 44px
	}
	._f9sjj {
		background-color: transparent;
		border: 0
	}
}

._fanip {
	min-height: 160px
}

._7sjyk {
	margin-top: -18px
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
<style type="text/css" data-isostyle-id="is24c174e6">
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
	.coreSpriteKeyhole, .coreSpriteLeftChevron {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -389px -264px;
	height: 22px;
	width: 22px
}

.coreSpriteInputError, .coreSpriteInputRefresh, .coreSpriteKeyhole,
	.coreSpriteLeftChevron {
	background-position: -546px -24px
}

.coreSpriteInputRefresh, .coreSpriteKeyhole, .coreSpriteLeftChevron {
	background-position: -546px -48px;
	width: 21px
}

.coreSpriteKeyhole, .coreSpriteLeftChevron {
	background-position: -414px -257px;
	height: 62px;
	width: 62px
}

.coreSpriteLeftChevron {
	background-position: -378px -317px;
	height: 30px;
	width: 30px
}

.coreSpriteLeftPaginationArrow, .coreSpriteLikeAnimationHeart,
	.coreSpriteLocation, .coreSpriteLocationActive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -219px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteLikeAnimationHeart, .coreSpriteLocation,
	.coreSpriteLocationActive {
	background-position: -300px -114px;
	height: 81px;
	width: 92px
}

.coreSpriteLocation, .coreSpriteLocationActive {
	background-position: -546px -241px;
	height: 19px;
	width: 16px
}

.coreSpriteLocationActive {
	background-position: -546px -219px;
	height: 20px
}

.coreSpriteLock, .coreSpriteLockLarge, .coreSpriteLoggedOutGenericUpsell,
	.coreSpriteLoggedOutWordmark {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -164px -317px;
	height: 76px;
	width: 76px
}

.coreSpriteLockLarge, .coreSpriteLoggedOutGenericUpsell,
	.coreSpriteLoggedOutWordmark {
	background-position: -150px 0;
	height: 148px;
	width: 148px
}

.coreSpriteLoggedOutGenericUpsell, .coreSpriteLoggedOutWordmark {
	background-position: -478px -321px;
	height: 58px;
	width: 58px
}

.coreSpriteLoggedOutWordmark {
	background-position: 0 -264px;
	height: 51px;
	width: 175px
}

.coreSpriteMobileNavActivityActive, .coreSpriteMobileNavActivityInactive,
	.coreSpriteMobileNavAddPeopleActive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -283px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavActivityInactive,
	.coreSpriteMobileNavAddPeopleActive {
	background-position: -309px -399px
}

.coreSpriteMobileNavAddPeopleActive {
	background-position: -199px -399px;
	width: 30px
}

.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect,
	.coreSpriteMobileNavDiscoverPeople, .coreSpriteMobileNavExploreActive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -167px -399px;
	height: 24px;
	width: 30px
}

.coreSpriteMobileNavDirect, .coreSpriteMobileNavDiscoverPeople,
	.coreSpriteMobileNavExploreActive {
	background-position: -387px -399px;
	width: 24px
}

.coreSpriteMobileNavDiscoverPeople, .coreSpriteMobileNavExploreActive {
	background-position: -378px -349px;
	width: 32px
}

.coreSpriteMobileNavExploreActive {
	background-position: -439px -399px;
	width: 24px
}

.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive,
	.coreSpriteMobileNavHomeInactive, .coreSpriteMobileNavLogo {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -465px -399px;
	height: 24px;
	width: 24px
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
	.coreSpritePlayIconSmall, .coreSpritePrivateLock,
	.coreSpriteProfileCamera {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -286px -479px;
	height: 24px;
	width: 24px
}

.coreSpritePagingChevron, .coreSpritePlayIconSmall,
	.coreSpritePrivateLock, .coreSpriteProfileCamera {
	background-position: -312px -479px
}

.coreSpritePlayIconSmall, .coreSpritePrivateLock,
	.coreSpriteProfileCamera {
	background-position: -546px -116px;
	height: 19px;
	width: 19px
}

.coreSpritePrivateLock, .coreSpriteProfileCamera {
	background-position: -261px -430px;
	height: 36px;
	width: 36px
}

.coreSpriteProfileCamera {
	background-position: -478px -129px;
	height: 62px;
	width: 62px
}

.coreSpriteProfileGrid, .coreSpriteProfileGridActive,
	.coreSpriteProfilePicUpsell, .coreSpriteProfileSave {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -390px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell,
	.coreSpriteProfileSave {
	background-position: -416px -479px
}

.coreSpriteProfilePicUpsell, .coreSpriteProfileSave {
	background-position: 0 -317px;
	height: 80px;
	width: 80px
}

.coreSpriteProfileSave {
	background-position: -468px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteProfileSaveActive, .coreSpriteReload, .coreSpriteRightChevron,
	.coreSpriteRightPaginationArrow, .coreSpriteSaveFull {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -494px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteReload, .coreSpriteRightChevron,
	.coreSpriteRightPaginationArrow, .coreSpriteSaveFull {
	background-position: -136px -399px;
	height: 29px;
	width: 29px
}

.coreSpriteRightChevron, .coreSpriteRightPaginationArrow,
	.coreSpriteSaveFull {
	background-position: -395px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteRightPaginationArrow, .coreSpriteSaveFull {
	background-position: -93px -430px;
	height: 40px;
	width: 40px
}

.coreSpriteSaveFull {
	background-position: -260px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteSaveLightFull, .coreSpriteSaveLightOpen, .coreSpriteSaveNull,
	.coreSpriteSaveOpen, .coreSpriteSaveStory, .coreSpriteSearchClear {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -234px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteSaveLightOpen, .coreSpriteSaveNull, .coreSpriteSaveOpen,
	.coreSpriteSaveStory, .coreSpriteSearchClear {
	background-position: -208px -479px
}

.coreSpriteSaveNull, .coreSpriteSaveOpen, .coreSpriteSaveStory,
	.coreSpriteSearchClear {
	background-position: -478px -257px;
	height: 62px;
	width: 62px
}

.coreSpriteSaveOpen, .coreSpriteSaveStory, .coreSpriteSearchClear {
	background-position: 0 -505px;
	height: 24px;
	width: 24px
}

.coreSpriteSaveStory, .coreSpriteSearchClear {
	background-position: -442px -479px
}

.coreSpriteSearchClear {
	background-position: -546px -94px;
	height: 20px;
	width: 20px
}

.coreSpriteSearchIcon, .coreSpriteSensitivityIcon,
	.coreSpriteSensitivityIconSmall, .coreSpriteSidecarIconLarge {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -429px -385px;
	height: 10px;
	width: 10px
}

.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall,
	.coreSpriteSidecarIconLarge {
	background-position: -358px -197px;
	height: 48px;
	width: 48px
}

.coreSpriteSensitivityIconSmall, .coreSpriteSidecarIconLarge {
	background-position: -355px -264px;
	height: 32px;
	width: 32px
}

.coreSpriteSidecarIconLarge {
	background-position: 0 -430px;
	height: 47px;
	width: 47px
}

.coreSpriteSidecarIconSmall, .coreSpriteSpeechBubbleSmall,
	.coreSpriteSpinsta, .coreSpriteSpinstaNux, .coreSpriteSpinstaStory {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -363px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteSpeechBubbleSmall, .coreSpriteSpinsta, .coreSpriteSpinstaNux,
	.coreSpriteSpinstaStory {
	background-position: -546px -137px;
	height: 19px;
	width: 19px
}

.coreSpriteSpinsta, .coreSpriteSpinstaNux, .coreSpriteSpinstaStory {
	background-position: -546px -517px;
	height: 11px;
	width: 12px
}

.coreSpriteSpinstaNux, .coreSpriteSpinstaStory {
	background-position: -427px -430px;
	height: 30px;
	width: 30px
}

.coreSpriteSpinstaStory {
	background-position: -546px -504px;
	height: 11px;
	width: 12px
}

.coreSpriteStoriesPost, .coreSpriteStoryCreation,
	.coreSpriteStoryCreationAlt, .coreSpriteStoryViewCount {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
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
	.coreSpriteActivityHeart {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -189px -247px
	}
	.coreSpriteAddPhoto, .coreSpriteAddText, .coreSpriteAppIcon,
		.coreSpriteAppStoreButton, .coreSpriteBoomerang {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -176px 0
	}
	.coreSpriteAddText, .coreSpriteAppIcon, .coreSpriteAppStoreButton,
		.coreSpriteBoomerang {
		background-position: -388px -250px
	}
	.coreSpriteAppIcon, .coreSpriteAppStoreButton, .coreSpriteBoomerang {
		background-position: -84px -310px
	}
	.coreSpriteAppStoreButton, .coreSpriteBoomerang {
		background-position: -257px -42px
	}
	.coreSpriteBoomerang {
		background-position: -281px -377px
	}
	.coreSpriteCameraInactive, .coreSpriteCheck, .coreSpriteChevronDark,
		.coreSpriteChevronDownGrey, .coreSpriteChevronRight {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -360px -272px
	}
	.coreSpriteCheck, .coreSpriteChevronDark, .coreSpriteChevronDownGrey,
		.coreSpriteChevronRight {
		background-position: -154px -170px
	}
	.coreSpriteChevronDark, .coreSpriteChevronDownGrey,
		.coreSpriteChevronRight {
		background-position: -413px -289px
	}
	.coreSpriteChevronDownGrey, .coreSpriteChevronRight {
		background-position: -413px -220px
	}
	.coreSpriteChevronRight {
		background-position: -413px -300px
	}
	.coreSpriteClose, .coreSpriteCloseLight, .coreSpriteComment,
		.coreSpriteDesktopNavActivity, .coreSpriteDesktopNavExplore {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -162px -377px
	}
	.coreSpriteCloseLight, .coreSpriteComment, .coreSpriteDesktopNavActivity,
		.coreSpriteDesktopNavExplore {
		background-position: -25px -352px
	}
	.coreSpriteComment, .coreSpriteDesktopNavActivity,
		.coreSpriteDesktopNavExplore {
		background-position: -360px -247px
	}
	.coreSpriteDesktopNavActivity, .coreSpriteDesktopNavExplore {
		background-position: -125px -352px
	}
	.coreSpriteDesktopNavExplore {
		background-position: 0 -352px
	}
	.coreSpriteDesktopNavLogoAndWordmark, .coreSpriteDesktopNavProfile,
		.coreSpriteDismissLarge, .coreSpriteDismissSmall {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: 0 -134px
	}
	.coreSpriteDesktopNavProfile, .coreSpriteDismissLarge,
		.coreSpriteDismissSmall {
		background-position: -150px -352px
	}
	.coreSpriteDismissLarge, .coreSpriteDismissSmall {
		background-position: -413px -278px
	}
	.coreSpriteDismissSmall {
		background-position: -421px -289px
	}
	.coreSpriteDownload, .coreSpriteDropdownArrowBlue5,
		.coreSpriteDropdownArrowBlue6, .coreSpriteDropdownArrowGrey9 {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -126px -247px
	}
	.coreSpriteDropdownArrowBlue5, .coreSpriteDropdownArrowBlue6,
		.coreSpriteDropdownArrowGrey9 {
		background-position: -413px -312px
	}
	.coreSpriteDropdownArrowBlue6, .coreSpriteDropdownArrowGrey9 {
		background-position: -420px -300px
	}
	.coreSpriteDropdownArrowGrey9 {
		background-position: -413px -326px
	}
	.coreSpriteDropdownArrowWhite, .coreSpriteFacebookIcon,
		.coreSpriteFacebookIconInverted, .coreSpriteFbGlyph {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -319px
	}
	.coreSpriteFacebookIcon, .coreSpriteFacebookIconInverted,
		.coreSpriteFbGlyph {
		background-position: -413px -75px
	}
	.coreSpriteFacebookIconInverted, .coreSpriteFbGlyph {
		background-position: -413px -92px
	}
	.coreSpriteFbGlyph {
		background-position: -50px -377px
	}
	.coreSpriteFeedCreation, .coreSpriteGlyphBlack, .coreSpriteGlyphGradient,
		.coreSpriteGlyphWhite, .coreSpriteGooglePlayButton {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -360px -310px
	}
	.coreSpriteGlyphBlack, .coreSpriteGlyphGradient, .coreSpriteGlyphWhite,
		.coreSpriteGooglePlayButton {
		background-position: -207px -310px
	}
	.coreSpriteGlyphGradient, .coreSpriteGlyphWhite,
		.coreSpriteGooglePlayButton {
		background-position: -43px -310px
	}
	.coreSpriteGlyphWhite, .coreSpriteGooglePlayButton {
		background-position: -330px -310px
	}
	.coreSpriteGooglePlayButton {
		background-position: -257px 0
	}
	.coreSpriteHashtag, .coreSpriteHeartFull, .coreSpriteHeartOpen,
		.coreSpriteHeartSmall, .coreSpriteHyperlapse {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
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
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
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
		.coreSpriteLocation, .coreSpriteLocationActive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -125px -310px
	}
	.coreSpriteLikeAnimationHeart, .coreSpriteLocation,
		.coreSpriteLocationActive {
		background-position: 0 -52px
	}
	.coreSpriteLocation, .coreSpriteLocationActive {
		background-position: -413px -21px
	}
	.coreSpriteLocationActive {
		background-position: -413px 0
	}
	.coreSpriteLock, .coreSpriteLoggedOutGenericUpsell,
		.coreSpriteLoggedOutWordmark, .coreSpriteMobileNavActivityActive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -77px -170px
	}
	.coreSpriteLoggedOutGenericUpsell, .coreSpriteLoggedOutWordmark,
		.coreSpriteMobileNavActivityActive {
		background-position: -252px -247px
	}
	.coreSpriteLoggedOutWordmark, .coreSpriteMobileNavActivityActive {
		background-position: 0 0
	}
	.coreSpriteMobileNavActivityActive {
		background-position: -175px -352px
	}
	.coreSpriteMobileNavActivityInactive,
		.coreSpriteMobileNavAddPeopleActive,
		.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -200px -352px
	}
	.coreSpriteMobileNavAddPeopleActive,
		.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect {
		background-position: -290px -219px
	}
	.coreSpriteMobileNavAddPeopleInactive, .coreSpriteMobileNavDirect {
		background-position: -321px -219px
	}
	.coreSpriteMobileNavDirect {
		background-position: -275px -352px
	}
	.coreSpriteMobileNavDiscoverPeople, .coreSpriteMobileNavExploreActive,
		.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -257px -219px
	}
	.coreSpriteMobileNavExploreActive, .coreSpriteMobileNavExploreInactive,
		.coreSpriteMobileNavHomeActive {
		background-position: -325px -352px
	}
	.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive {
		background-position: -25px -377px
	}
	.coreSpriteMobileNavHomeActive {
		background-position: -388px 0
	}
	.coreSpriteMobileNavHomeInactive, .coreSpriteMobileNavLogo,
		.coreSpriteMobileNavMenuActive, .coreSpriteMobileNavMenuInactive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -25px
	}
	.coreSpriteMobileNavLogo, .coreSpriteMobileNavMenuActive,
		.coreSpriteMobileNavMenuInactive {
		background-position: -361px -189px
	}
	.coreSpriteMobileNavMenuActive, .coreSpriteMobileNavMenuInactive {
		background-position: -388px -75px
	}
	.coreSpriteMobileNavMenuInactive {
		background-position: -388px -100px
	}
	.coreSpriteMobileNavProfileActive, .coreSpriteMobileNavProfileInactive,
		.coreSpriteMobileNavSearchActive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -125px
	}
	.coreSpriteMobileNavProfileInactive, .coreSpriteMobileNavSearchActive {
		background-position: -388px -150px
	}
	.coreSpriteMobileNavSearchActive {
		background-position: -388px -175px
	}
	.coreSpriteMobileNavSearchInactive, .coreSpriteMobileNavSettings,
		.coreSpriteMobileNavTypeLogo, .coreSpriteNotificationLeftChevron {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -352px -219px
	}
	.coreSpriteMobileNavSettings, .coreSpriteMobileNavTypeLogo,
		.coreSpriteNotificationLeftChevron {
		background-position: -388px -225px
	}
	.coreSpriteMobileNavTypeLogo, .coreSpriteNotificationLeftChevron {
		background-position: -257px -189px
	}
	.coreSpriteNotificationLeftChevron {
		background-position: -413px -109px
	}
	.coreSpriteNotificationRightChevron, .coreSpriteNullProfile,
		.coreSpriteOptionsEllipsis, .coreSpriteOptionsEllipsisLight {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -178px
	}
	.coreSpriteNullProfile, .coreSpriteOptionsEllipsis,
		.coreSpriteOptionsEllipsisLight {
		background-position: -63px -247px
	}
	.coreSpriteOptionsEllipsis, .coreSpriteOptionsEllipsisLight {
		background-position: -413px -41px
	}
	.coreSpriteOptionsEllipsisLight {
		background-position: 0 -377px
	}
	.coreSpritePagingChevron, .coreSpritePlayIconSmall,
		.coreSpritePrivateLock, .coreSpriteProfileCamera,
		.coreSpriteProfileGrid {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -350px
	}
	.coreSpritePlayIconSmall, .coreSpritePrivateLock,
		.coreSpriteProfileCamera, .coreSpriteProfileGrid {
		background-position: -203px -377px
	}
	.coreSpritePrivateLock, .coreSpriteProfileCamera, .coreSpriteProfileGrid
		{
		background-position: -217px -170px
	}
	.coreSpriteProfileCamera, .coreSpriteProfileGrid {
		background-position: -320px -126px
	}
	.coreSpriteProfileGrid {
		background-position: -388px -300px
	}
	.coreSpriteProfileGridActive, .coreSpriteProfilePicUpsell,
		.coreSpriteProfileSave, .coreSpriteProfileSaveActive {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -275px
	}
	.coreSpriteProfilePicUpsell, .coreSpriteProfileSave,
		.coreSpriteProfileSaveActive {
		background-position: -93px -52px
	}
	.coreSpriteProfileSave, .coreSpriteProfileSaveActive {
		background-position: -388px -200px
	}
	.coreSpriteProfileSaveActive {
		background-position: -350px -352px
	}
	.coreSpriteReload, .coreSpriteRightChevron,
		.coreSpriteRightPaginationArrow, .coreSpriteSaveFull,
		.coreSpriteSaveLightFull {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -300px -310px
	}
	.coreSpriteRightChevron, .coreSpriteRightPaginationArrow,
		.coreSpriteSaveFull, .coreSpriteSaveLightFull {
		background-position: -238px -310px
	}
	.coreSpriteRightPaginationArrow, .coreSpriteSaveFull,
		.coreSpriteSaveLightFull {
		background-position: -166px -310px
	}
	.coreSpriteSaveFull, .coreSpriteSaveLightFull {
		background-position: -50px -352px
	}
	.coreSpriteSaveLightFull {
		background-position: -217px -207px
	}
	.coreSpriteSaveLightOpen, .coreSpriteSaveNull, .coreSpriteSaveOpen,
		.coreSpriteSaveStory, .coreSpriteSearchClear {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -388px -325px
	}
	.coreSpriteSaveNull, .coreSpriteSaveOpen, .coreSpriteSaveStory,
		.coreSpriteSearchClear {
		background-position: -257px -126px
	}
	.coreSpriteSaveOpen, .coreSpriteSaveStory, .coreSpriteSearchClear {
		background-position: -388px -50px
	}
	.coreSpriteSaveStory, .coreSpriteSearchClear {
		background-position: -300px -352px
	}
	.coreSpriteSearchClear {
		background-position: -141px -377px
	}
	.coreSpriteSearchIcon, .coreSpriteSensitivityIcon,
		.coreSpriteSensitivityIconSmall, .coreSpriteSpeechBubbleSmall {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -267px
	}
	.coreSpriteSensitivityIcon, .coreSpriteSensitivityIconSmall,
		.coreSpriteSpeechBubbleSmall {
		background-position: -311px -247px
	}
	.coreSpriteSensitivityIconSmall, .coreSpriteSpeechBubbleSmall {
		background-position: -177px -134px
	}
	.coreSpriteSpeechBubbleSmall {
		background-position: -183px -377px
	}
	.coreSpriteSpinsta, .coreSpriteSpinstaNux, .coreSpriteSpinstaStory,
		.coreSpriteStoriesPost, .coreSpriteStoryCreation {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
		background-position: -413px -233px
	}
	.coreSpriteSpinstaNux, .coreSpriteSpinstaStory, .coreSpriteStoriesPost,
		.coreSpriteStoryCreation {
		background-position: -269px -310px
	}
	.coreSpriteSpinstaStory, .coreSpriteStoriesPost,
		.coreSpriteStoryCreation {
		background-position: -413px -256px
	}
	.coreSpriteStoriesPost, .coreSpriteStoryCreation {
		background-position: -100px -352px
	}
	.coreSpriteStoryCreation {
		background-position: -75px -352px
	}
	.coreSpriteStoryCreationAlt, .coreSpriteStoryViewCount,
		.coreSpriteUnreadComments, .coreSpriteUnreadLikes {
		background-image:
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
		background-size: 429px 401px;
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
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/sprite_core_2x.png/de09421ae2c6.png);
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
<style type="text/css" data-isostyle-id="is66f75b0f">
._27czg, ._t296e {
	margin: 0 40px 6px
}

._27czg input {
	font-size: 12px
}

._hp4oy {
	color: #999;
	font-size: 14px;
	margin: 0 40px 12px
}

._s1olq {
	color: #3897f0;
	font-size: 12px;
	line-height: 14px;
	margin-top: 22px;
	text-align: center
}

._t38eb {
	margin: 8px 40px
}

._kp3lf {
	opacity: .2
}

._9vdv4, ._c4769 {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	margin: 10px 40px 18px
}

._9vdv4 {
	margin: 14px 40px 22px
}

._1aktk {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	background-color: #c7c7c7;
	height: 1px;
	position: relative;
	top: .45em
}

._n1zo0 {
	color: #999;
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	-ms-flex-positive: 0;
	flex-grow: 0;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	font-size: 13px;
	font-weight: 600;
	line-height: 15px;
	margin: 0 18px;
	text-transform: uppercase
}

._3jvtb {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

._7w545 {
	display: inline-block;
	margin-right: 8px;
	position: relative;
	top: 3px
}

._1zdb1 {
	margin-bottom: 10px
}

._ao8nt, ._cjb8e, ._e9kim {
	font-size: 14px;
	line-height: 18px;
	text-align: center
}

._e9kim {
	color: #ed4956;
	margin: 10px 40px
}

._ao8nt, ._cjb8e {
	color: #999;
	margin: 10px 40px 30px
}

._cjb8e {
	color: #262626
}

._4sb73 {
	color: #385185
}

._pbd5h, ._pbd5h:active, ._pbd5h:hover, ._pbd5h:visited {
	font-size: 12px;
	line-height: 14px;
	margin-top: 12px;
	text-align: center;
	color: #003569
}
</style>
<style type="text/css" data-isostyle-id="is-3c83a474">
._agqzm {
	margin: 0 40px 6px
}

._ckcwa {
	margin: 0 40px 8px
}

._ckcwa input {
	font-size: 12px
}

._9mno0 {
	margin: 8px 40px
}

._fhskl {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	margin: 10px 40px 18px
}

._j5suk {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	background-color: #c7c7c7;
	height: 1px;
	position: relative;
	top: .45em
}

._hxmdu {
	color: #999;
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	-ms-flex-positive: 0;
	flex-grow: 0;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	font-size: 13px;
	font-weight: 600;
	line-height: 15px;
	margin: 0 18px;
	text-transform: uppercase
}

._i6l6r, ._mb54c {
	color: #999;
	text-align: center
}

._mb54c {
	font-weight: 600;
	line-height: 20px;
	font-size: 17px;
	margin: 0 40px 10px
}

._i6l6r {
	font-size: 14px;
	margin: 0 40px 22px
}

._asaim {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

._8j183 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	margin: 5px 0 auto
}

._ddcu7 {
	display: inline-block;
	margin-right: 8px;
	position: relative;
	top: 3px
}

@media ( min-width :736px) {
	._ddcu7 {
		top: 2px
	}
}

._7g6uj {
	margin-bottom: 20px
}

._fd2m9, ._ieqkf {
	color: #ed4956;
	font-size: 14px;
	line-height: 18px;
	margin: 10px 40px;
	text-align: center
}

._fd2m9 {
	color: #999;
	margin: 10px 60px
}

._fd2m9>a, ._fd2m9>a:visited {
	color: #999;
	font-weight: 600
}
</style>
<style type="text/css" data-isostyle-id="is6af155b7">
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

._cesnh {
	background-color: transparent;
	border: 0;
	color: #fff;
	overflow: hidden
}

._c55eh {
	background: 0 0;
	border-color: #3897f0;
	color: #3897f0
}

._i63ih._c55eh {
	background: 0 0;
	border-color: #1372cc;
	color: #1372cc
}

._iokts, ._jqf0k {
	background: 0 0;
	border: 0;
	cursor: pointer
}

._jqf0k {
	color: #262626
}

._iokts {
	color: #3897f0
}

._l16nh {
	background: 0 0;
	border: 0;
	color: #003569;
	font-weight: 400
}

._i63ih._l16nh {
	color: #00264a
}

._t78yp {
	background: 0 0;
	border-color: #dbdbdb;
	color: #262626
}

._i63ih._t78yp {
	opacity: .7
}

._gexxb, ._i63ih._gexxb {
	background: #3897f0;
	border-color: #3897f0;
	color: #fff
}

._i63ih._gexxb {
	opacity: .7
}

._qv64e:active {
	opacity: .7
}

._jfvwv {
	opacity: .3
}

._njrw0 {
	cursor: pointer
}

._q2hnk {
	opacity: .2
}

._4tgw8, ._r9b8f {
	padding: 0 12px
}

._rzmx0 {
	padding: 5px 8px
}

._ri7ee {
	height: 38px
}

._70aqw {
	line-height: initial;
	white-space: normal
}

@media ( min-width :736px) {
	._r9b8f {
		padding: 0 24px
	}
}
</style>
<style type="text/css" data-isostyle-id="is683f5b37">
._ph6vk, ._sjplo {
	background: #fafafa
}

._sjplo {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 14px;
	position: relative;
	-webkit-appearance: none;
	width: 100%;
	border: 1px solid #efefef
}

._ph6vk {
	border: 0;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0px;
	margin: 0;
	outline: 0;
	overflow: hidden;
	padding: 9px 0 7px 8px;
	text-overflow: ellipsis
}

._gaby6 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	height: 100%;
	padding-right: 8px;
	vertical-align: middle
}

._3jk0j {
	border: 1px solid #b2b2b2
}

._jsuzs {
	border: 1px solid #ed4956
}

._6uiu7 {
	background-color: #efefef;
	color: #999
}

._97sa5, ._eyp7r {
	margin-left: 8px
}

._97sa5 {
	font-size: 12px
}

._mq9yl {
	font-size: 14px;
	margin-right: 4px
}

._zwyta {
	color: #ed4956;
	font-size: 12px;
	margin: 4px 0 8px 8px
}
</style>
<style type="text/css" data-isostyle-id="is683f5b37">
._ph6vk, ._sjplo {
	background: #fafafa
}

._sjplo {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 14px;
	position: relative;
	-webkit-appearance: none;
	width: 100%;
	border: 1px solid #efefef
}

._ph6vk {
	border: 0;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0px;
	margin: 0;
	outline: 0;
	overflow: hidden;
	padding: 9px 0 7px 8px;
	text-overflow: ellipsis
}

._gaby6 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	height: 100%;
	padding-right: 8px;
	vertical-align: middle
}

._3jk0j {
	border: 1px solid #b2b2b2
}

._jsuzs {
	border: 1px solid #ed4956
}

._6uiu7 {
	background-color: #efefef;
	color: #999
}

._97sa5, ._eyp7r {
	margin-left: 8px
}

._97sa5 {
	font-size: 12px
}

._mq9yl {
	font-size: 14px;
	margin-right: 4px
}

._zwyta {
	color: #ed4956;
	font-size: 12px;
	margin: 4px 0 8px 8px
}
</style>
<style type="text/css" data-isostyle-id="is29aa5909">
._ev9xl {
	height: 36px;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0;
	padding: 0;
	position: relative;
	margin: 0
}

._ssj08 {
	color: #999;
	font-size: 12px;
	height: 36px;
	left: 8px;
	line-height: 36px;
	overflow: hidden;
	pointer-events: none;
	position: absolute;
	right: 0;
	text-overflow: ellipsis;
	-webkit-transform-origin: left;
	transform-origin: left;
	-webkit-transition: -webkit-transform ease-out .1s;
	transition: transform ease-out .1s;
	transition: transform ease-out .1s, -webkit-transform ease-out .1s;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	white-space: nowrap
}

._2c6me ._ssj08 {
	-webkit-transform: scale(.83333) translateY(-10px);
	transform: scale(.83333) translateY(-10px)
}

._2c6me ._jdqpn {
	font-size: 12px;
	padding: 14px 0 2px 8px !important
}
</style>
<style type="text/css" data-isostyle-id="is683f5b37">
._ph6vk, ._sjplo {
	background: #fafafa
}

._sjplo {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 14px;
	position: relative;
	-webkit-appearance: none;
	width: 100%;
	border: 1px solid #efefef
}

._ph6vk {
	border: 0;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0px;
	margin: 0;
	outline: 0;
	overflow: hidden;
	padding: 9px 0 7px 8px;
	text-overflow: ellipsis
}

._gaby6 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	height: 100%;
	padding-right: 8px;
	vertical-align: middle
}

._3jk0j {
	border: 1px solid #b2b2b2
}

._jsuzs {
	border: 1px solid #ed4956
}

._6uiu7 {
	background-color: #efefef;
	color: #999
}

._97sa5, ._eyp7r {
	margin-left: 8px
}

._97sa5 {
	font-size: 12px
}

._mq9yl {
	font-size: 14px;
	margin-right: 4px
}

._zwyta {
	color: #ed4956;
	font-size: 12px;
	margin: 4px 0 8px 8px
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
<style type="text/css" data-isostyle-id="is29aa5909">
._ev9xl {
	height: 36px;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0;
	padding: 0;
	position: relative;
	margin: 0
}

._ssj08 {
	color: #999;
	font-size: 12px;
	height: 36px;
	left: 8px;
	line-height: 36px;
	overflow: hidden;
	pointer-events: none;
	position: absolute;
	right: 0;
	text-overflow: ellipsis;
	-webkit-transform-origin: left;
	transform-origin: left;
	-webkit-transition: -webkit-transform ease-out .1s;
	transition: transform ease-out .1s;
	transition: transform ease-out .1s, -webkit-transform ease-out .1s;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	white-space: nowrap
}

._2c6me ._ssj08 {
	-webkit-transform: scale(.83333) translateY(-10px);
	transform: scale(.83333) translateY(-10px)
}

._2c6me ._jdqpn {
	font-size: 12px;
	padding: 14px 0 2px 8px !important
}
</style>
<style type="text/css" data-isostyle-id="is683f5b37">

._ph6vk, ._sjplo {
	background: #fafafa
}

._sjplo {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	border-radius: 3px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	color: #262626;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 14px;
	position: relative;
	-webkit-appearance: none;
	width: 100%;
	border: 1px solid #efefef
}

._ph6vk {
	border: 0;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0;
	-ms-flex: 1 0 0;
	flex: 1 0 0px;
	margin: 0;
	outline: 0;
	overflow: hidden;
	padding: 9px 0 7px 8px;
	text-overflow: ellipsis
}

._gaby6 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	height: 100%;
	padding-right: 8px;
	vertical-align: middle
}

._3jk0j {
	border: 1px solid #b2b2b2
}

._jsuzs {
	border: 1px solid #ed4956
}

._6uiu7 {
	background-color: #efefef;
	color: #999
}

._97sa5, ._eyp7r {
	margin-left: 8px
}

._97sa5 {
	font-size: 12px
}

._mq9yl {
	font-size: 14px;
	margin-right: 4px
}

._zwyta {
	color: #ed4956;
	font-size: 12px;
	margin: 4px 0 8px 8px
}
</style>
<style type="text/css" data-isostyle-id="is-4e1ca5a2">
._d2vov {
	color: #262626;
	font-size: 14px;
	line-height: 18px;
	margin: 10px 20px;
	text-align: center
}

._fzj6p {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin: 10px 0
}

@media ( max-width :400px) {
	._fzj6p {
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap
	}
}
</style>
<style type="text/css" data-isostyle-id="is-3dc0a48d">
._o7vmf {
	margin-right: 8px
}

._o7vmf:last-child {
	margin-right: 0
}

._8a10v {
	height: 40px
}
</style>
<style type="text/css" data-isostyle-id="is-2db8a945">
._g7lf5 {
	font-size: 12px;
	font-weight: 600;
	margin: 0 auto;
	text-transform: uppercase;
	width: 100%
}

._1gmap {
	color: #999
}

._538w0 {
	display: inline-block;
	margin-bottom: 7px;
	margin-right: 16px
}

._538w0:last-child {
	margin-right: 0
}

._g8wl6 {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	margin-bottom: 3px
}

@media ( min-width :876px) {
	._8oc6p, ._9z659 {
		-webkit-box-orient: horizontal;
		-webkit-box-direction: normal;
		-webkit-flex-direction: row;
		-ms-flex-direction: row;
		flex-direction: row;
		-webkit-flex-wrap: wrap;
		-ms-flex-wrap: wrap;
		flex-wrap: wrap;
		-webkit-box-pack: justify;
		-webkit-justify-content: space-between;
		-ms-flex-pack: justify;
		justify-content: space-between;
		padding: 38px 0
	}
	._8oc6p ._luodr, ._9z659 ._luodr {
		max-width: 100%
	}
	._8oc6p ._g8wl6, ._9z659 ._g8wl6 {
		margin-right: 16px
	}
}

@media ( max-width :875px) {
	._8oc6p, ._9z659 {
		padding: 10px 0;
		text-align: center
	}
	._8oc6p ._g8wl6, ._9z659 ._g8wl6 {
		-webkit-box-pack: center;
		-webkit-justify-content: center;
		-ms-flex-pack: center;
		justify-content: center;
		margin: 0 auto;
		max-width: 360px
	}
}

._8t5z3 {
	padding: 10px 0;
	text-align: center
}

._8t5z3 ._g8wl6 {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin: 0 auto;
	max-width: 360px
}

._8oc6p {
	padding-top: 0
}

._8oc6p ._luodr {
	margin-bottom: 16px
}

._8oc6p ._538w0 {
	margin: 0
}

._8oc6p ._538w0:not (:last-of-type )::after {
	content: "\00B7";
	margin: 0 .25em
}

._8oc6p ._1gmap, ._8oc6p ._538w0, ._8oc6p ._hqmnd {
	color: #c7c7c7;
	font-size: 11px;
	font-weight: 400;
	line-height: 13px;
	text-transform: capitalize
}

._8oc6p ._1gmap {
	text-transform: uppercase
}
</style>

</head>
<body class="">

	<span id="react-root"><section class="_sq4bv _29u45">
			<main class="_8fi2q _2v79o" role="main">
			<article class="_qmq8y">
				<div class="_ngtox _sf3lp">
					<div class="_a8pmp">
							<img class="_824m9 _4je3h"
							src="/images/homepage/screenshot/2d9d7248af43.jpg"><img
							class="_824m9"
							src="/images/homepage/screenshot/629d23a3c7b2.jpg"><img
							class="_824m9"
							src="/images/homepage/screenshot/001bc33056c1.jpg"><img
							class="_824m9"
							src="/images/homepage/screenshot/f5ae123ab1e2.jpg">
					</div>
				</div>
				<div class="_kbq82">
					<div class="_f9sjj">
						<h1 class="_68swa _8scx2 coreSpriteLoggedOutWordmark">Meshtagram</h1>
						<div class="_7g6uj">
							<form class="_asaim" action="/key/join.do" autocomplete="off">
								<h2 class="_mb54c">친구들의 사진과 동영상을 보려면 가입하세요.</h2>
								
								<div class="_fhskl">
									<div class="_j5suk"></div>
									<div class="_j5suk"></div>
								</div>
								<div class="_agqzm">
									<div class="_sjplo">
										<div class="_ev9xl">
											<input type="text" class="_ph6vk _jdqpn _o716c"
												id="id" name="id" placeholder="아이디(영문 숫자 최소 5자리)"
												pattern="[A-Za-z0-9]+"
												value=""/>
										</div>
										<div class="_gaby6"></div>
									</div>
								</div>
								<div class="_agqzm">
									<div class="_sjplo">
										<div class="_ev9xl">
											<input
												type="text" class="_ph6vk _jdqpn _o716c" id="name"
												placeholder="이름" name="name"
												value=""/>
										</div>
										<div class="_gaby6"></div>
									</div>
								</div>
								<div class="_agqzm">
									<div class="_sjplo">
										<div class="_ev9xl">
											<input
												type="text" class="_ph6vk _jdqpn _o716c"
												 id="email" name="email" placeholder="이메일"
												value="${email }"/>
										</div>
										<div class="_gaby6">
										<button type="button" class="_qv64e _gexxb _4tgw8 _njrw0"
										 id="confirm">인증</button>
												<span id="rst"></span>
										</div>
									</div>
								</div>
								<div class="_agqzm">
									<div class="_sjplo">
										<div class="_ev9xl">
											<input
												type="password" class="_ph6vk _jdqpn _o716c"
												id="pass1" name="pass1" placeholder="비밀번호(영문+숫자 조합 8자리 이상)"
												pattern="[A-Za-z0-9]+"
												value="">
										</div>
										<div class="_gaby6"></div>
									</div>
								</div>
								<div class="_agqzm">
									<div class="_sjplo">
										<div class="_ev9xl">
											<input
												type="password" class="_ph6vk _jdqpn _o716c"
												id="pass2" name="pass2" placeholder="비밀번호 확인"
												pattern="[A-Za-z0-9]+"
												value=""/>
												
										</div>
										<div class="_gaby6"></div>
									</div>
								</div>
								<div>
									<span class="_9mno0 _ov9ai">
									<button	type="submit" class="_qv64e _gexxb _4tgw8 _njrw0 btn btn-default"
									id="submit">가입</button></span>
								</div>
								<p class="_fd2m9">
									가입하면 Meshtagram의 약관
									및 개인정보처리방침에 동의하게
									됩니다.
								</p>
							</form>
						</div>
					</div>
					<div class="_f9sjj">
						<p class="_g9ean">
							계정이 있으신가요? <button type="button" id="ch">로그인</button>
							
						</p>
					</div>
					<div class="_40dde">
						<p class="_d2vov">앱을 다운로드하세요.</p>
						<div class="_fzj6p">
							<a class="_o7vmf"
								href="https://itunes.apple.com/app/instagram/id389801252?pt=428156&amp;ct=igweb.signupPage.badge&amp;mt=8"><img
								class="_8a10v" alt="App Store에서 이용 가능"
								src="/images/homepage/buttons/a5b7c639e096.png"></a><a
								class="_o7vmf"
								href="https://play.google.com/store/apps/details?id=com.instagram.android&amp;referrer=utm_source%3Dinstagramweb%26utm_campaign%3DsignupPage%26utm_medium%3Dbadge"><img
								class="_8a10v" alt="Google Play에서 이용 가능"
								src="/images/homepage/buttons/f02d7718fb2e.png"></a>
						</div>
					</div>
				</div>
			</article>
			</main>
			<footer class="_s5vm9" role="contentinfo">
				<div class="_g7lf5 _9z659" style="max-width: 935px;">
					<nav class="_luodr" role="navigation">
						<ul class="_g8wl6">
							<li class="_538w0"><a class="_hqmnd" href="/about/us/">Meshtagram
									정보</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="https://help.instagram.com/">지원</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="http://blog.instagram.com/">블로그</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="https://instagram-press.com/">홍보 센터</a></li>
							<li class="_538w0"><a class="_hqmnd" href="/developer/">API</a></li>
							<li class="_538w0"><a class="_hqmnd" href="/about/jobs/">채용
									정보</a></li>
							<li class="_538w0"><a class="_hqmnd" href="/legal/privacy/">개인정보처리방침</a></li>
							<li class="_538w0"><a class="_hqmnd _ts6wg"
								href="/legal/terms/">약관</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="/explore/locations/">디렉터리</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="/directory/profiles/">프로필</a></li>
							<li class="_538w0"><a class="_hqmnd"
								href="/directory/hashtags/">해시태그</a></li>
							
						</ul>
					</nav>
					<span class="_1gmap">© 2018 Meshtagram</span>
				</div>
			</footer>
		</section></span>
<script>
	
	$("#ch").click(function(){
		location.replace("/account/loginPage.do");
	});
	$("#pass2").on("change", function() {
		if ($("#pass2").val().length == 0) {
			$("#check").html("영문과 숫자 조합 8자리 이상")
		} else {
			if ($("#pass1").val() != $("#pass2").val()) {
				$("#check").html("비밀번호가 일치하지 않습니다.")
			} else {
				$("#check").html("일치합니다.")
			}
		}
	});
	$("#confirm").click(function() {
		$.ajax("/key/sendKey.do", {
			"email" : "get",
			"async" : true,
			"data" : {
				"email" : $("#email").val()

			}
		}).done(function(obj) {
			console.obj(obj);
			$("#rst").html(obj.result);
		});
	});
	
	// 테스트 위해 일단 주석처리함.
/* 	disabled();
	function disabled() {
		$(".btn").prop("disabled", true);
		if ("${rst }" == "true") {
			$(".btn").prop("disabled", false);
			$(".btn-default").prop("disabled", false);
		}

	} */

</script>
		</body>
</html>
