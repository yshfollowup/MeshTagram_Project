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
supports
 
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
(safe-area-inset-bottom)


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
<style type="text/css" data-isostyle-id="is572659ec">
._5rnaq, ._caluf, ._tpnch {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	text-align: center;
	margin: 0 auto;
}

._tpnch {
	background-color: #fff;
	border-bottom: 1px solid rgba(0, 0, 0, .0975);
	position: fixed;
	clear: both;
	top: 0;
	width: 100%;
	z-index: 1;
	-webkit-transition: height .2s ease-in-out;
	transition: height .2s ease-in-out;
	height: 70px;
}

._5rnaq, ._caluf {
	height: 52px;
}

._5rnaq {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	max-width: 950px;
	padding: 40px 40px;
	-webkit-transition: height .2s ease-in-out;
	transition: height .2s ease-in-out;
	width: 100%
}

._cyf06 {
	height: 52px;
	padding: 0 40px
}

._iraxg {
	-webkit-box-flex: 1;
	-webkit-flex: 1 9999 0%;
	-ms-flex: 1 9999 0%;
	flex: 1 9999 0%;
	min-width: 40px
}

._catib {
	margin-right: 12px;
	margin-top: -4px;
	max-width: 100%;
	overflow: hidden;
	position: relative
}

._rujh3 {
	opacity: 1;
	-webkit-transition: opacity .2s ease-in-out;
	transition: opacity .2s ease-in-out
}

._cyf06 ._rujh3, ._e8tsh {
	pointer-events: none;
	opacity: 0
}

._cyf06 ._e8tsh {
	pointer-events: all;
	opacity: 1
}

._e8tsh {
	top: 4px;
	position: absolute;
	-webkit-transition: opacity .2s ease-in-out;
	transition: opacity .2s ease-in-out
}

._giku3:active {
	opacity: 1
}

._devkn {
	-webkit-align-content: center;
	-ms-flex-line-pack: center;
	align-content: center;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap;
	-webkit-box-flex: 1;
	-webkit-flex: 1 0 0%;
	-ms-flex: 1 0 0%;
	flex: 1 0 0%;
	-webkit-box-pack: end;
	-webkit-justify-content: flex-end;
	-ms-flex-pack: end;
	justify-content: flex-end
}

a._l8p4s, a._l8p4s:visited {
	color: #3897f0;
	font-weight: 600;
	line-height: 28px
}

._eattk {
	font-size: 16px
}

._3opco {
	border: 0;
	cursor: pointer;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	overflow: hidden;
	text-align: right;
	text-overflow: ellipsis
}

._bvwt0, ._qlijk {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	padding-left: 24px;
	white-space: nowrap
}

._b28md


:not

 

(
:first-child

 

){
margin-left


:

 

30
px




}
._3opco {
	background-color: #3897f0;
	border-radius: 4px;
	color: #fff;
	height: 34px;
	margin-right: 24px;
	margin-top: -3px;
	padding: 0 16px
}

._3opco:active {
	opacity: .5
}

._5ayw3 {
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 auto;
	-ms-flex: 0 1 auto;
	flex: 0 1 auto;
	min-width: 125px;
	width: 215px
}

@media ( max-width :500px) {
	._5ayw3 {
		display: none
	}
	._bvwt0, ._qlijk {
		padding-left: 0
	}
}

._3opco, ._l8p4s {
	font-size: 16px
}

@media ( max-width :768px) {
	._giku3 {
		-webkit-transform: translate3d(0, 0, 0) scale(.8);
		transform: translate3d(0, 0, 0) scale(.8);
		-webkit-transform-origin: left;
		transform-origin: left
	}
	._giku3._giku3 {
		text-indent: 200%
	}
	._3opco, ._l8p4s {
		font-size: 14px
	}
}

._ktls3 {
	color: #c7c7c7;
	font-size: 16px;
	line-height: 29px;
	margin: 0 7px
}

._kjkyz {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	margin-right: -1px
}

._kjkyz ._l8p4s {
	font-size: 14px;
	margin-left: 15px
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
<style type="text/css" data-isostyle-id="is-2ab6876a">
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
	.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -439px -399px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavExploreInactive, .coreSpriteMobileNavHomeActive,
	.coreSpriteMobileNavHomeInactive {
	background-position: -465px -399px
}

.coreSpriteMobileNavHomeActive, .coreSpriteMobileNavHomeInactive {
	background-position: -491px -399px
}

.coreSpriteMobileNavHomeInactive {
	background-position: -517px -399px
}

.coreSpriteMobileNavLogo, .coreSpriteMobileNavMenuActive,
	.coreSpriteMobileNavMenuInactive, .coreSpriteMobileNavProfileActive {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -459px -430px;
	height: 25px;
	width: 25px
}

.coreSpriteMobileNavMenuActive, .coreSpriteMobileNavMenuInactive,
	.coreSpriteMobileNavProfileActive {
	background-position: -512px -430px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavMenuInactive, .coreSpriteMobileNavProfileActive {
	background-position: 0 -479px
}

.coreSpriteMobileNavProfileActive {
	background-position: -26px -479px
}

.coreSpriteMobileNavProfileInactive, .coreSpriteMobileNavSearchActive,
	.coreSpriteMobileNavSearchInactive, .coreSpriteMobileNavSettings,
	.coreSpriteMobileNavTypeLogo {
	background-image: url(/images/0314ae1bba65.png);
	background-repeat: no-repeat;
	background-position: -52px -479px;
	height: 24px;
	width: 24px
}

.coreSpriteMobileNavSearchActive, .coreSpriteMobileNavSearchInactive,
	.coreSpriteMobileNavSettings, .coreSpriteMobileNavTypeLogo {
	background-position: -78px -479px
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
			url(/static/bundles/base/sprite_core_2x.png/de09421ae2c6.png);
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
<style type="text/css" data-isostyle-id="is-3cca694">
._ohiyl {
	height: 28px
}

._i13c9 {
	left: 11px;
	position: absolute;
	top: 9px;
	z-index: 2
}

._avvq0, ._jcvs2 {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 100%;
	width: 100%;
}

._jcvs2 {
	font-size: 14px;
	border-radius: 3px;
	color: #999;
	cursor: text;
	font-weight: 300;
	left: 0;
	padding: 7px;
	position: absolute;
	text-align: center;
	top: 0;
	z-index: 2
}

._1nn6e, ._ht0s9 {
	background: #fafafa
}

._1nn6e {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	border: solid 1px #dbdbdb
}

._ht0s9 {
	border: 1px solid #efefef
}

._kjnbr {
	background: #fff;
	border: 1px solid #dbdbdb
}

._eduze {
	display: inline;
	left: -5px
}

._ds5hc {
	top: -2px
}

._96n9j, ._r86fw {
	display: inline-block
}

._r86fw {
	margin-right: 6px;
	vertical-align: baseline
}

._96n9j {
	max-width: 140px;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: bottom;
	white-space: nowrap
}

._avvq0 {
	border: solid 1px #dbdbdb;
	border-radius: 3px;
	color: #262626;
	font-size: 14px;
	outline: 0;
	padding: 3px 10px 3px 26px;
	z-index: 2
}

._avvq0::-webkit-input-placeholder, ._avvq0:focus::-webkit-input-placeholder
	{
	color: #999
}

._avvq0:-ms-input-placeholder, ._avvq0::-ms-input-placeholder, ._avvq0:focus:-ms-input-placeholder,
	._avvq0:focus::-ms-input-placeholder {
	color: #999
}

._avvq0::placeholder, ._avvq0:focus::placeholder {
	color: #999
}

._gftfm {
	bottom: 0;
	left: 0;
	position: fixed;
	right: 0;
	top: 0;
	z-index: 1
}

._9z6bj {
	left: auto;
	right: 5px;
	top: 14px;
	z-index: 3
}

._506il, ._9z6bj, ._c7jlt {
	position: absolute
}

._c7jlt {
	z-index: 3;
	right: 5px;
	top: 4px
}

._506il {
	right: -35px;
	top: 5px
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
<style type="text/css" data-isostyle-id="iscc15ac3">
._ohbcb {
	background-color: transparent;
	border: 0;
	cursor: pointer;
	color: transparent;
	position: relative
}

._qlosm._3pzlm::after {
	bottom: -6px
}

._3pzlm::after {
	background: #ed4956;
	border-radius: 2px;
	bottom: -10px;
	content: "";
	height: 4px;
	left: 0;
	margin: 0 auto;
	position: absolute;
	right: 0;
	-webkit-transition: bottom .2s ease-in-out;
	transition: bottom .2s ease-in-out;
	width: 4px
}

._lrfmc {
	position: absolute;
	top: 62px;
	left: 50%;
	-webkit-transform: translateX(-50%);
	transform: translateX(-50%);
	-webkit-transition: top .2s ease-in-out;
	transition: top .2s ease-in-out
}

._qlosm ._lrfmc {
	top: 56px
}
</style>

</head>
<body>
	<nav class="_68u16 _gft4l" role="navigation"
		style="background-color: rgba(255, 255, 255, 1);">
		<div class="_axuw9"></div>
		<div class="_s4gw0 _1arg4">
			<div class="_tpnch">
				<div class="_5rnaq">
					<div class="_iraxg">
						<div class="_catib">
							<a
								class="_giku3 _8scx2 coreSpriteDesktopNavLogoAndWordmark _rujh3"
								href="/account/login.do">Meshtagram</a> <a
								class="_giku3 _8scx2 _e8tsh coreSpriteGlyphBlack"
								href="/account/login.do">Meshtagram</a>
						</div>
					</div>
					<div class="_5ayw3 _ohiyl">
						<input type="text" class="_avvq0 _o716c" id="search"
							placeholder="검색">
						<div id="pp"
							style="background-color: rgba(230, 230, 230, 0.95); border: 1px solid gba(150, 150, 150); border-radius: 5px; border-top: 0px;"></div>
					</div>
					<div class="_devkn">
						<div class="_qlijk">
							<div class="_b28md" style="padding-top : 1px;">
								<a class=" _gvoze" href="/direct/index.do"><img src="/images/plane.png"/></a>
							</div>
							<div class="_b28md">
								<a class="_8scx2 _gvoze coreSpriteDesktopNavExplore" style="margin-left: 20px;"
									href="/follow/index.do">팔로우</a>
							</div>
							<!--  -->
							<div class="_b28md">
								<a href="#"
									 role="button" class="btn btn-primary dropdown-toggle _ohbcb _gvoze" style="margin-left: 20px;" data-toggle="dropdown">
									<img src="/images/heart.png" style="padding-top:2px;" id="notice"/>
									<span class="caret">
									
									</span></a> 
								<ul class="dropdown-menu">
									<li id="noticeList">새 소식</li>
								</ul>

							</div>
							
							<!--  -->
							<div class="_b28md">
								<a href="/account/upload.do" class="_ohbcb _gvoze"
									style="margin-left: 20px;"> <img src="/images/write.png" />
								</a>
							</div>
							<div class="_b28md">
								<a class="_8scx2 _gvoze coreSpriteDesktopNavProfile"
									href="/mypage/index.do" style="margin-left: 20px;">마이페이지</a>
							</div>
							<div class="_b28md">
								<a href="/" style="margin-left: 20px;"> <img
									src="/images/statistics.png" />

								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>

<script>
	//최신 소식 띄우기
	$("#notice").on("click", function() {
		console.log("공지사항 들어왔다.");
		$.getJSON("/noticeBoard.do", function(val){
			console.log(val);
			var noticeList = [];
			$.each(val, function(i, key) {
				//console.log(i);
				//console.log(key);
				var noId = key.noId;
				var noLikeId = key.noLikeId;
				var noReplyId = key.noReplyId;
				console.log(noId+"..."+noLikeId+"..."+noReplyId);
				$(".dropdown-menu").empty();
				if (noId != null) {
					$(".dropdown-menu").append("<li class=\"_75ljm _3qhgf\"><div class=\"_b96u5\">회원님이 팔로잉한<a href=\"/detail/detail.do\"><b>"
							+ key.noId
							+ "</b>님이 새 게시물을 올렸습니다.</a><a href=\"/detail/detail.do\">게시물 보기</a><div class=\"_3lema _6g6t5\">"
							+ key.date
							+ "</div></div></li>");

				}
				if (noLikeId != null) {
					$(".dropdown-menu").append("<li class=\"_75ljm _3qhgf\"><div class=\"_b96u5\">회원님이 팔로잉한<a href=\"/detail/detail.do\"><b>"
							+ key.noLikeId
							+ "</b>님이<b>"
							+ key.noLikeTarget
							+ "</b>님의 게시물에 좋아요를 눌렀습니다.</a><div class=\"_3lema _6g6t5\">"
							+ key.date
							+ "</div></div></li>");

				}
				if (noReplyId != null) {
					$(".dropdown-menu").append("<li class=\"_75ljm _3qhgf\"><div class=\"_b96u5\">회원님이 팔로잉한<a href=\"/detail/detail.do\"><b>"
							+ key.noReplyId
							+ "</b>님이<b>"
							+ key.noReplyTarget
							+ "</b>님의 게시물에 댓글을 달았습니다.</a><a href=\"/detail/detail.do\">댓글 보기</a><div class=\"_3lema _6g6t5\">"
							+ key.date
							+ "</div></div></li>");
				}
			});
		});
	});
	
	//검색창
	$("#search")
				.on(
						"keyup",
						function() {
							var value = $("#search").val();
							var tag = null;
							var idsh = null;
							var comm = null
							if (value.startsWith("#")) {
								tag = value;
							} else if (value.startsWith("@")) {
								idsh = value;
							} else {
								comm = value;
							}
							$
									.ajax("/autocom.do", {
										"method" : "post",
										"async" : true,
										"data" : {
											"tag" : tag,
											"idsh" : idsh,
											"comm" : comm
										}
									})
									.done(
											function(val) {
												console.log(val);
												var str = "";
												var img = "<img src=\"/images/insta.jpg\" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
												for (var i = 0; i < val.length; i++) {
													var img2 = "<img src=\"${applicationScope.path }"+val.PROFILE+" style=\"width: 30px; height: 30px; border-radius: 30px\" id=\"writer\">";
													var com = null;
													var ii = null;
													if (val[i]._id != null) {
														var s = null;
														if (val[i].tags[0]
																.startsWith("#")) {
															console
																	.log(val[i].tags[i]);
															var a = val[i].tags[i];
															s = a.replace('#',
																	'%23');
														}
														str += "<a href=/searchtag.do?tags="
																+ s
																+ ">"
																+ val[i].tags
																+ "<br/>게시물 "
																+ val[i].count
																+ "</a>"
																+ "<br/>";
													} else {
														if (val.PROFILE == null) {
															ii = img;
														} else {
															ii = img2;
														}
														if (val[i].NAME == null) {
															name = "";
														} else {
															name = val[i].NAME;
														}
														str += "<a href=/search.do?id="
																+ val[i].ID
																+ "><div>"
																+ ii
																+ "<div>"
																+ val[i].ID
																+ "</div><div style=\"border-bottom: 1px solid grey;\">"
																+ name
																+ "</div></div></a>"
																+ "<br/>";
													}
												}
												$("#pp").html(str);
											})
						});
</script>
</body>
</html>