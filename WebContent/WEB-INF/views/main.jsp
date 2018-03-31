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

<style type="text/css" data-isostyle-id="is39555a4a">
._2eqg1 {
	background-image: -webkit-gradient(linear, left top, right top, from(#3796ef),
		to(#61c5f1));
	background-image: -webkit-linear-gradient(left, #3796ef, #61c5f1);
	background-image: linear-gradient(to right, #3796ef, #61c5f1);
	-webkit-box-ordinal-group: 3;
	-webkit-order: 2;
	-ms-flex-order: 2;
	order: 2
}

._7dzzd, ._skx6u {
	color: #fff;
	margin-left: 20px;
	text-align: left
}

._skx6u {
	font-weight: 600;
	margin-top: 10px;
	font-size: 14px
}

._7dzzd {
	font-size: 12px;
	margin-bottom: 10px
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
supports(margin-bottom:env(safe-area-inset-bottom)){
._evlcw:not(._b696q){
margin-bottom:env(safe-area-inset-bottom)
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
<style type="text/css" data-isostyle-id="is7ec0573d">
@media ( min-width :1000px) {
	._owark ._gsusx {
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
	}
}

._owark {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	margin: 0 auto;
	max-width: 600px;
	position: relative;
	width: 100%;
}

._gsusx {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-flow: row nowrap;
	-ms-flex-flow: row nowrap;
	flex-flow: row nowrap;
	max-width: 935px
}

._62ky5 {
	display: block
}

._k46tg {
	display: inline-block;
	margin-top: 2px;
	vertical-align: middle
}

._14b0y {
	margin-bottom: 30px
}

._d4oao {
	float: left;
	margin-right: 28px;
	max-width: 614px;
	width: 100%
}

._s5vjd:last-child {
	margin-bottom: 0
}

._7axot {
	-webkit-align-self: center;
	-ms-flex-item-align: center;
	align-self: center
}

._qgv8j {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	padding-top: 8px
}

._m0zxo {
	position: fixed;
	bottom: 0;
	left: 0
}

._hw7lt {
	background: 0 0;
	border: 0;
	margin: 0;
	padding: 0
}

@media ( min-width :640px) {
	._owark {
		padding-top: 60px;
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
	}
	._2wxtj {
		background: #fff;
		border-radius: 3px;
		border: 1px solid #efefef
	}
	._4sf0r, ._7g4gl, ._nx5in, ._ouv75, ._psd08, ._s5vjd {
		background-color: #fff;
		margin-left: -1px;
		margin-right: -1px
	}
	._4sf0r, ._nx5in, ._ouv75, ._psd08, ._s5vjd {
		border-radius: 3px;
		border: 1px solid #e6e6e6
	}
	._2wxtj, ._7g4gl, ._s5vjd {
		margin-bottom: 60px
	}
	._nx5in, ._ouv75, ._psd08 {
		margin-bottom: 20px
	}
}

@media ( max-width :640px) {
	._owark {
		margin-bottom: 10px;
	}
	._nx5in, ._ouv75, ._psd08 {
		border-bottom: 1px solid #e6e6e6
	}
	._nx5in, ._ouv75 {
		background-color: #fff
	}
}

@media ( max-width :735px) {
	._2wxtj, ._s5vjd {
		margin-bottom: 15px
	}
	._7g4gl {
		margin-bottom: 30px
	}
}
</style>
<style type="text/css" data-isostyle-id="is65395b00">
._havey, ._sfpqp {
	-webkit-box-orient: vertical;
	-webkit-box-direction: normal;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

._sfpqp {
	-webkit-box-orient: horizontal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row
}
</style>
<style type="text/css" data-isostyle-id="is41485793">
._622au {
	padding: 0
}

._9dpug {
	border-bottom: 1px solid #efefef
}

._9dpug._msz04 {
	height: 76px;
	padding: 0 16px 16px
}

._5mwg7 {
	height: 60px;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	position: absolute
}

._ebcx9 {
	padding: 0 16px;
	margin-top: 40px;
}

._8oo9w {
	margin-top: 4px
}

._nlmjy {
	margin-bottom: 8px
}

._277v9 {
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	min-height: 0;
	overflow: auto;
}

._277v9, ._6d44r {
	margin-bottom: 4px
}

._ti7l3 {
	margin-top: 4px
}

._e34hf {
	display: none
}

._fsupd ._ti7l3 {
	min-height: 48px
}

._5lms4 ._ti7l3 {
	padding-right: 26px
}

._fsupd ._9dpug {
	padding-right: 40px
}

._fsupd ._5mwg7 {
	right: 10px;
	top: 0
}

._5lms4 ._5mwg7 {
	bottom: 0;
	height: 52px;
	right: 10px;
	top: auto
}

._8n9ix._9445e ._8oo9w {
	margin-top: -34px
}

._4kplh {
	width: 100%
}

._4kplh ._sxolz {
	background-color: #000;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin-right: 335px;
	min-height: 450px
}

._4kplh ._sxolz._mi48x {
	background-color: #fafafa
}

._4kplh ._9dpug {
	border-bottom: 1px solid #efefef;
	height: 78px;
	margin-right: 0;
	padding: 20px 0;
	position: absolute;
	right: 24px;
	top: 0;
	width: 287px
}

._4kplh ._9dpug._msz04 {
	height: 98px;
	padding: 0 0 20px
}

._4kplh ._ebcx9 {
	bottom: 0;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding-left: 24px;
	padding-right: 24px;
	position: absolute;
	right: 0;
	top: 78px;
	width: 335px
}

._4kplh ._ebcx9._6zn4x {
	top: 98px
}

._4kplh ._8oo9w {
	border-top: 1px solid #efefef;
	margin: 0;
	-webkit-box-ordinal-group: 3;
	-webkit-order: 2;
	-ms-flex-order: 2;
	order: 2;
	padding-top: 2px
}

._4kplh ._nlmjy {
	margin-bottom: 4px;
	-webkit-box-ordinal-group: 4;
	-webkit-order: 3;
	-ms-flex-order: 3;
	order: 3
}

._4kplh ._277v9 {
	margin: 0 -24px auto;
	-webkit-box-ordinal-group: 2;
	-webkit-order: 1;
	-ms-flex-order: 1;
	order: 1;
	padding: 12px 24px
}

._4kplh ._6d44r {
	margin-bottom: 0;
	-webkit-box-ordinal-group: 5;
	-webkit-order: 4;
	-ms-flex-order: 4;
	order: 4
}

._4kplh ._ti7l3 {
	-webkit-box-ordinal-group: 6;
	-webkit-order: 5;
	-ms-flex-order: 5;
	order: 5
}

._4kplh._5lms4 ._5mwg7 {
	right: 18px
}

@media ( -webkit-min-device-pixel-ratio :2) {
	._8n9ix ._9dpug {
		border-bottom-width: .5px
	}
}
</style>
<style type="text/css" data-isostyle-id="is56c759dc">
._7b8eu, ._csp04 {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row
}

._7b8eu {
	height: 60px;
	padding: 16px;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

._iuvin button {
	line-height: 18px;
	padding: 0
}

._csp04 {
	-webkit-box-align: baseline;
	-webkit-align-items: baseline;
	-ms-flex-align: baseline;
	align-items: baseline
}

._6y8ij {
	max-width: 100%
}

._s7b66 {
	display: inline
}

._74oom {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-box-align: baseline;
	-webkit-align-items: baseline;
	-ms-flex-align: baseline;
	align-items: baseline;
	max-width: 240px
}

._j56ec {
	-webkit-box-align: start;
	-webkit-align-items: flex-start;
	-ms-flex-align: start;
	align-items: flex-start;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	margin-left: 12px;
	overflow: hidden;
}

._k32zm {
	padding-top: 20px
}

._60iqg {
	display: block;
	max-width: 100%;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

._eeohz {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	max-width: 100%
}

._iadoq, ._iadoq:visited {
	color: #262626;
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	-ms-flex-positive: 0;
	flex-grow: 0;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1
}

._hz9vr {
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	margin-left: 5px
}

._elp6f {
	color: #999;
	display: inline-block;
	max-width: 100%
}
</style>
<style type="text/css" data-isostyle-id="is-fd0a4d2">
._82odm {
	-webkit-align-self: center;
	-ms-flex-item-align: center;
	align-self: center;
	display: block;
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
}

._fu98p {
	cursor: pointer
}

._15vpm {
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	-webkit-tap-highlight-color: transparent;
	-webkit-touch-callout: none
}
</style>
<style type="text/css" data-isostyle-id="is1a3556a9">
._pg23k {
	background-color: #fafafa;
	border-radius: 50%;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: block;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	overflow: hidden;
	position: relative
}

._pg23k::after {
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

._jpwof {
	cursor: pointer
}

._rewi8 {
	height: 100%;
	width: 100%
}
</style>
<style type="text/css" data-isostyle-id="is190952a8">
._8scx2 {
	display: block;
	overflow: hidden;
	text-indent: 110%;
	white-space: nowrap;
}

._gvoze:active {
	opacity: 1
}

._fkers, ._fkers:visited {
	color: #3897f0
}
</style>
<style type="text/css" data-isostyle-id="is6d0655d8">
._2g7d5 {
	font-weight: 600;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	padding-left: 5px;
	margin-left: -5px;
	text-decoration: none;
}
</style>
<style type="text/css" data-isostyle-id="is16935566">
._jad47 {
	display: block
}

._pak6p {
	left: 0
}

._by8kl {
	right: 0
}

._by8kl, ._pak6p {
	cursor: pointer;
	display: block;
	margin-left: 12px;
	margin-right: 12px;
	opacity: 0;
	overflow: hidden;
	position: absolute;
	pointer-events: auto;
	text-indent: -9999em;
	top: 50%
}

._k7ih4:hover ._by8kl, ._k7ih4:hover ._pak6p {
	opacity: 1;
	-webkit-transition: opacity .2s ease-out;
	transition: opacity .2s ease-out;
	-webkit-transition-delay: .1s;
	transition-delay: .1s
}

._8kphn {
	margin-top: -15px
}

._5wmqs {
	margin-top: -38px
}

._5zbvx, ._jzfl1 {
	border-radius: 50%;
	height: 6px;
	margin-left: 2px;
	margin-right: 2px;
	-webkit-transition: all .2s ease-in-out;
	transition: all .2s ease-in-out;
	width: 6px
}

._5zbvx {
	background: #dbdbdb
}

._jzfl1 {
	background: #fff;
	opacity: .4
}

._i22oc {
	opacity: 1
}

._c0g09 {
	background: #3897f0
}

._4ag49 {
	table-layout: fixed
}

._4c7y4, ._g5463 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

._4c7y4 {
	bottom: 15px;
	left: 6px;
	position: absolute;
	right: 6px
}

._g5463 {
	margin-bottom: 15px;
	margin-top: 15px
}

._8bjpz, ._k7ih4 {
	left: 0;
	position: relative;
	top: 0
}

._8bjpz, ._l5mmu {
	display: block
}

._k7ih4 ._l4l38 {
	left: 0;
	position: absolute;
	right: 0;
	top: 0
}
</style>
<style type="text/css" data-isostyle-id="is6c8c54b5">
._e3il2 {
	background-color: #efefef;
	display: block;
	width: 100%
}

._4rbun {
	display: block;
	overflow: hidden;
	padding-bottom: 100%
}

._2di5p {
	height: 100%;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	width: 100%
}

._si7dy {
	bottom: 0;
	right: 0
}
</style>
<style type="text/css" data-isostyle-id="is-482a87de">
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
<style type="text/css" data-isostyle-id="is-fa6a214">
._hmd6j {
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row
}

._eszkz {
	margin-left: -8px
}

._eszkz, ._mpkky, ._p6oxf {
	display: inline-block
}

._mpkky {
	margin-left: auto;
	margin-right: -8px;
	float: right !important;
}
</style>
<style type="text/css" data-isostyle-id="is30ef584d">
._l9yih {
	background-color: transparent;
	border: 0;
	cursor: pointer;
	padding: 8px
}
</style>
<style type="text/css" data-isostyle-id="is3da6599b">
._6p9ga {
	background-color: transparent;
	border: 0;
	cursor: pointer;
	padding: 8px
}
</style>
<style type="text/css" data-isostyle-id="is316d5857">
._et4ho {
	background-color: transparent;
	border: 0;
	padding: 8px
}

._sa6r5 {
	opacity: .3
}
</style>
<style type="text/css" data-isostyle-id="is-244da305">
._tauyc {
	background-color: transparent;
	border: 0;
	cursor: pointer;
	padding: 6px
}
</style>
<style type="text/css" data-isostyle-id="is7d155c76">
._km7ip {
	border-top: 1px solid #efefef;
	color: #999;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	font-size: 14px;
	line-height: 18px;
	min-height: 56px;
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	padding: 16px 0
}

._b6i0l, ._bilrf {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-flex: 1;
	-webkit-flex-grow: 1;
	-ms-flex-positive: 1;
	flex-grow: 1
}

._b6i0l {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	-webkit-box-orient: horizontal;
	-webkit-box-direction: normal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1;
	position: relative
}

._bilrf {
	background: 0 0;
	border: 0;
	color: #262626;
	font-size: inherit;
	height: 18px;
	max-height: 80px;
	outline: 0;
	padding: 0;
	resize: none
}

._bilrf:disabled {
	opacity: .3;
	pointer-events: none
}

._bilrf::-webkit-input-placeholder, ._bilrf:focus::-webkit-input-placeholder
	{
	color: #999
}

._bilrf:-ms-input-placeholder, ._bilrf::-ms-input-placeholder, ._bilrf:focus:-ms-input-placeholder,
	._bilrf:focus::-ms-input-placeholder {
	color: #999
}

._bilrf::placeholder, ._bilrf:focus::placeholder {
	color: #999
}

._55p7a {
	background: 0 0;
	border: 0;
	color: #3897f0;
	-webkit-box-flex: 0;
	-webkit-flex-grow: 0;
	-ms-flex-positive: 0;
	flex-grow: 0;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0;
	font-size: 16px;
	font-weight: 500;
	padding: 0 8px;
	margin-right: -8px
}

._55p7a:disabled {
	color: #b4daff
}

._k1roz {
	margin: 20px -20px 0;
	border-top: 1px solid #efefef
}

._5u5c3 {
	position: absolute;
	z-index: 1;
	background-color: #fff;
	-webkit-box-shadow: 0 0 4px 0 rgba(0, 0, 0, .15);
	box-shadow: 0 0 4px 0 rgba(0, 0, 0, .15);
	min-width: 270px;
	top: 100%
}

._mku7m {
	bottom: 100%;
	top: auto
}
</style>
<style type="text/css" data-isostyle-id="is69525b47">
._ha6c6 {
	display: block
}

._djdmk, ._djdmk:visited {
	color: #999;
	margin-bottom: 5px;
	text-transform: uppercase
}

._p29ma {
	font-size: 10px;
	letter-spacing: .2px
}
</style>
<style type="text/css" data-isostyle-id="is-3bafa9a1">
@media ( min-width :736px) {
	._6g6t5 {
		font-size: 15px;
		line-height: 18px
	}
}

@media ( max-width :735px) {
	._6g6t5 {
		font-size: 14px;
		line-height: 17px
	}
}
</style>
<style type="text/css" data-isostyle-id="is-4dc6a59a">
._ezgzd {
	overflow: hidden;
	padding-bottom: 6px;
	position: relative;
	word-wrap: break-word;
	margin-top: -5px;
	padding-top: 5px;
}

._ezgzd:last-child {
	padding-bottom: 0
}

._95hvo {
	margin-right: .3em
}

._95hvo, ._95hvo:visited {
	color: #262626
}

._reoub {
	background: 0 0;
	border: 0;
	color: #c7c7c7;
	cursor: pointer;
	float: right;
	font-size: inherit;
	height: 1em;
	line-height: inherit;
	margin-left: 10px;
	overflow: hidden;
	padding: 0;
	width: 1em
}

._reoub::before {
	content: '\2715';
	display: block
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
	margin-bottom: 3px;
	padding-left: 30px;
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
	._luodr, ._9z659 ._luodr {
		max-width: 100%
	}
	._8oc6p {
		max-width: 300px;
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
	text-transform: capitalize;
	text-decoration: none;
}

._8oc6p ._1gmap {
	text-transform: uppercase
}
</style>
<style type="text/css" data-isostyle-id="is-50e8a5e5">
@media ( max-width :1000px) {
	._11dqz {
		display: none;
	}
}

._11dqz {
	max-width: 293px;
	position: left;
	right: 0;
	width: 100%;
	height: 100vh;
	margin-bottom: 30px;
	padding: 0;
	top: 60px;
}

._i4wsm {
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
	height: 62px;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
}

._qwuqp {
	border: 0;
	padding: 0;
	border-top: 1px solid #efefef;
	height: 1px;
	margin: 0 0 12px;
	width: 100%
}
</style>
<style type="text/css" data-isostyle-id="is7df05c88">
._t4xyv {
	display: block;
	max-height: 272px;
	overflow-y: auto;
	padding-top: 6px;
	width: 100%
}

._ldjog {
	color: #c7c7c7;
	font-size: 14px;
	line-height: 18px;
	margin-bottom: 16px;
	margin-top: 4px;
	width: 250px;
}
</style>
<style type="text/css" data-isostyle-id="is-10a0a23b">
._sfbui {
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
	font-weight: 600;
	height: 18px;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	margin-bottom: 12px
}

._72oww {
	color: #999;
	font-size: 14px;
	line-height: 18px
}

._fptk9, ._fptk9:active, ._fptk9:focus, ._fptk9:hover, ._fptk9:visited {
	color: #262626;
	font-size: 12px;
	line-height: 14px
}

._13aga ._fptk9 {
	opacity: .3
}
</style>
<style type="text/css" data-isostyle-id="is35d95d34">
._ikq0n {
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
	height: 100%;
	margin-bottom: 12px;
	max-height: 50px;
	width: 100%;
	padding-left: 5px
}

._pbvu8 {
	width: 50px
}

._f89xq, ._f89xq:active, ._f89xq:focus, ._f89xq:hover, ._f89xq:visited {
	color: #262626;
	font-weight: 600;
	text-decoration: none;
}

._ewiye {
	color: #999
}

._8hjc5, ._on99m {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-direction: normal
}

._on99m {
	-webkit-box-pack: center;
	-webkit-justify-content: center;
	-ms-flex-pack: center;
	justify-content: center;
	margin-left: 14px;
	-webkit-box-orient: vertical;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column
}

._8hjc5 {
	-webkit-box-orient: horizontal;
	-webkit-flex-direction: row;
	-ms-flex-direction: row;
	flex-direction: row;
	font-size: 14px;
	line-height: 18px;
	margin-bottom: 2px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

._irzdz, ._og9e9 {
	display: inline-block
}

._irzdz {
	font-size: 12px;
	line-height: 14px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap
}

._og9e9 {
	margin-left: 7px
}
</style>
<style type="text/css" data-isostyle-id="is1a3556a9">
._pg23k {
	background-color: #fafafa;
	border-radius: 50%;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: block;
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 auto;
	-ms-flex: 0 0 auto;
	flex: 0 0 auto;
	overflow: hidden;
	position: relative
}

._pg23k::after {
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

._jpwof {
	cursor: pointer
}

._rewi8 {
	height: 100%;
	width: 100%
}
</style>



</head>
<body>

	<main class="_8fi2q _2v79o" role="main">
	<section class="_owark _gsusx">
		<div class="_d4oao">
			<div>
				<div class="_havey">

					<c:forEach var="obj" items="${eachResult}">
					<!--article : 게시글 단위 -->
						<article class="_s5vjd _622au _5lms4 _8n9ix _9445e">
					<!--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓아이디 & 헤더 부분↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-->
							<header class="_7b8eu _9dpug">
								<div class="_82odm _i2o1o" style="float: left; width: 40px;">
									<canvas class="_15vpm" width="40" height="40"
										style="transform: translate(-5px, -5px); position: absolute; top: 0px; left: 0px; width: 40px; height: 40px;"></canvas>
									<div class="_pg23k _jpwof _gvoze"
										style="width: 30px; height: 30px;">
										<c:choose>
											<c:when test="${empty obj.profile}">
												<img src="/images/insta.jpg" class="_rewi8" id="writer">${obj.id }
											</c:when>
											<c:otherwise>
												<img src="${applicationScope.path }${obj.profile}"
													class="_rewi8" id="writer">
											</c:otherwise>
										</c:choose>
									</div>
								</div>
								<div class="_j56ec" style="padding-top: 5px;">
									<div class="">
										<div class="_eeohz">
											<a class="_2g7d5 notranslate _iadoq"
												href="/search.do?id=${obj.id }"
												style="text-decoration: none !important;">${obj.id }</a>
										</div>
									</div>
									<div class="_60iqg"></div>
								</div>
							</header>


							<!--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓메인 사진 부분↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-->
							<div class="_sxolz">
								<div>
									<div class="_k7ih4">
										<div class="_e3il2">
											<div class="_4rbun" style="padding-bottom: 0;">
												<c:choose>
													<c:when test="${fn:length(obj.image) >1}">
														<div id="${obj._id }" class="carousel slide"
															data-ride="carousel">
															
															<!-- Wrapper for slides -->
															<div class="carousel-inner">
																<c:forEach items="${obj.image }" var="image"
																	varStatus="st">
																	<div class="item ${st.first ? 'active' : '' }">
																		<img src="${obj.path }${image }" class="_2di5p"
																			style="width: 100%;" />
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
																<img src="${obj.path }${image }" class="_2di5p"
																	style="width: 100%;" />
															</div>
														</c:forEach>
													</c:otherwise>
												</c:choose>
											</div>
											<div class="_si7dy"></div>
										</div>
									</div>
								</div>
							</div>
								<!--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓좋아요 + 댓글 부분↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-->
							<div class="_ebcx9">
								<section class="_hmd6j _8oo9w">
									<a class="_eszkz _l9yih like" name="${obj.code }" role="button"
										title="${obj.id }" id="like_${obj.code }"> <span
										class="_8scx2 coreSpriteHeartOpen" id="likespan_${obj.code }">좋아요</span>
									</a> <a class="_eszkz _l9yih dislike ${obj.id }"
										name="${obj.code }" role="button" id="dislike_${obj.code }"
										style="display: none;"> <span
										class="_8scx2 coreSpriteHeartFull">좋아요취소</span>
									</a> <a class="_p6oxf _6p9ga rebt" role="button"
										name="${obj.code }"> <span
										class="_8scx2 coreSpriteComment">댓글 달기</span>
									</a> <a class="_mpkky _et4ho mark" role="button"
										aria-disabled="false" name="${obj.code }"
										id="mark_${obj.code }"> <span
										class="_8scx2 coreSpriteSaveOpen">저장</span>
									</a> <a class="_mpkky _et4ho unmark" role="button"
										aria-disabled="false" name="${obj.code }"
										id="unmark_${obj.code }" style="display: none;"> <span
										class="_8scx2 coreSpriteSaveFull">저장취소</span>
									</a>
								</section>
								<section class="_1w76c _nlmjy">
									<div class="">
										<a class="_nzn1h" data-toggle="modal" data-target="#myModal1"
											style="color: black; font-weight: bold; text-decoration: none;">좋아요
											<span data-toggle="modal" data-target="#myModal1"
											id="cnt_${obj.code }"></span>개
										</a>
									</div>
								</section>


								<div class="_4a48i _277v9">
									<ul class="_b0tqa">
										<li class="_ezgzd"><a class="_2g7d5 notranslate _95hvo"
											href="/search.do?id=${obj.id }"> <span>${obj.id }</span></a>
											<c:forEach items="${obj.comment }" var="comm">
												<span>${comm }</span>
											</c:forEach> <c:forEach items="${obj.tags }" var="tag">
												<span><a
													href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a></span>
											</c:forEach></li>
									</ul>
								</div>

								<div>
									<div id="replybtn">
										<button type="button" class="btn btn-info show"
											style="width: 100%; margin: 0 auto;" data-toggle="collapse"
											data-target=".collapse">댓글보기</button>
										<div id="demo" class="collapse" style="margin: 10 0;">
											<span id="sp_${obj.code }" class="re_${obj.code }"
												name="${obj.code }"></span>
										</div>
									</div>
								</div>


								<section class="_km7ip _ti7l3 parent writereply">
									<form class="_b6i0l">

										<textarea placeholder="댓글 달기..." id="reply_${obj.code }"
											name="${obj.id }" class="reply _bilrf"
											aria-label="${obj.code }" autocomplete="off"
											autocorrect="off"></textarea>
									</form>
								</section>
							</div>

						</article>
					</c:forEach>
				</div>
			</div>
		</div>


		<div style="min-height: 150px;"></div>

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

		<!--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓우측 프로필 파트↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓-->
		<div class="_11dqz" style="margin-top: 70px;">
			<div style="position: fixed;">
				<div class="_i4wsm">
					<div class="_ikq0n">
						<div class="_82odm _pbvu8">
							<canvas class="_15vpm" width="60" height="60"
								style="transform: translate(-5px, -5px); position: absolute; top: 0px; left: 0px; width: 60px; height: 60px;"></canvas>
							<a class="_pg23k _jpwof _gvoze"
								href="/mypage/index.do?id=${aDTO.id }"
								style="width: 50px; height: 50px;"> <c:choose>
									<c:when test="${empty aDTO.profile }">
										<img src="/images/insta.jpg" class="_rewi8" id="profile">
									</c:when>
									<c:otherwise>
										<img src="${applicationScope.path }${aDTO.profile}"
											class="_rewi8" id="profile" />
									</c:otherwise>
								</c:choose> ${aDTO.id }
							</a>

						</div>
						<div class="_on99m">
							<div class="_8hjc5">
								<a class="_f89xq" href="/mypage/index.do?id=${aDTO.id }">${aDTO.id }</a>
							</div>
							<div class="_ewiye _irzdz">${aDTO.name}</div>
						</div>
					</div>
				</div>
				<hr class="_qwuqp">
				<div class="_sfbui">
					<span class="_72oww">스토리</span>
				</div>
				<div class="_ldjog">회원님이 팔로우하는 사람들의 스토리가 여기에 표시됩니다.</div>
				<hr class="_qwuqp">
				<div class=" _8oc6p">
					<nav class="_luodr" role="navigation">
						<ul class="_g8wl6">
							<li class="_538w0"><a class="_hqmnd _mjfont"
							 href="">Meshtagram정보</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">지원</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">블로그</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">홍보 센터</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">API</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">채용	정보</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">개인정보처리방침</a></li>
							<li class="_538w0"><a class="_hqmnd _ts6wg _mjfont"
							href="">약관</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">디렉터리</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">프로필</a></li>
							<li class="_538w0"><a class="_hqmnd _mjfont"
							href="">해시태그</a></li>
							
						</ul>
					</nav>
					<span class="_1gmap">© 2018 Meshtagram</span>
				</div>
			</div>
		</div>
	</section>
	</main>

<script type="text/javascript" src="/js/custom.js"></script>
<script>
		$(".mark").on("click", function() {
			console.log("저장 들어왔다");
			var reid = "${cookie.setId.value}";
			var boardid = $(this).attr("name");
			var bt = $("#mark" + boardid).attr("name");
			console.log(bt + "구분자" + boardid + "아이디" + "저장");
			$.ajax("/markBoard.do", {
				"method" : "get",
				"async" : true,
				"data" : {
					"boardId" : boardid,
					"id" : reid,
					"mark" : "저장"
				}
			}).done(function(val) {
				$("#mark_" + boardid).hide();
				$("#unmark_" + boardid).show();
				console.log("저장이 성공적");
			});
		});

		$(".unmark").on("click", function() {
			console.log("저장 취소시도");
			var reid = "${cookie.setId.value}";
			var boardid = $(this).attr("name");
			var bt = $("#mark" + boardid).attr("name");
			console.log(bt + "구분자" + boardid + "아이디" + "저장");
			$.ajax("/markBoardDelete.do", {
				"method" : "get",
				"async" : true,
				"data" : {
					"boardId" : boardid,
					"id" : reid,
					"mark" : "저장취소"
				}
			}).done(function(val) {
				$("#mark_" + boardid).show();
				$("#unmark_" + boardid).hide();
				console.log("저장취소 성공");
			});
		});

		$(".show").on("click", function() {
			console.log($(this).attr("aria-expanded"));
			if ($(this).attr("aria-expanded") == "false") {
				$(this).attr("aria-expanded", true);
				$(this).text('댓글 보기');
			} else {
				$(this).attr("aria-expanded", false);
				$(this).text("댓글 숨기기");
			}

		});
		var setid = "${cookie.setId.value}";
		$(".List_like")
				.on(
						"click",
						function() {
							var reid = "${cookie.setId.value}";
							var boardid = $(this).attr("name");
							var listId = [];
							var value = $(this).attr("name");
							var address = $("#myList");
							$
									.ajax("/likeList.do", {
										"method" : "get",
										"async" : true,
										"data" : {
											"boardId" : boardid,
											"id" : reid
										}
									})
									.done(
											function(val) {
												for (var i = 0; i < val.length; i++) {
													if (val[i].boardId == value) {
														listId.push(val[i].id);
													}
												}
												$
														.ajax(
																"/SearchLikeList.do",
																{
																	"method" : "post",
																	"async" : true,
																	"data" : {
																		"listId" : listId
																	}
																})
														.done(
																function(val) {
																	address
																			.html("");
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
																	$(".follow")
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
			var input = $(this).attr("name");
			var iii = $(this).attr("aria-label");
			$(".reply").each(function() {
				boardid.push($(this).attr("aria-label"));
			});
			console.log(boardid);
			var ment = $(this).val();
			var src = $(this);
			if (ment.length == 0) {
				window.alert("댓글을 작성해주세요.");
				return;
			}
			console.log("댓글을 쓴다." + ment + iii + "타켓아이디" + input);
			var id = $(this).attr("aria-label");
			var reid = "${cookie.setId.value}";
			$(this).val("");
			//console.log(id+ment);
			$.ajax("/addreply.do", {
				"method" : "post",
				"async" : true,
				"data" : {
					"boardId" : id,
					"reid" : reid,
					"target" : input,
					"ment" : ment
				}
			}).done(function(obj) {
				//console.log($(this).val());
				$(ment).val("");
				$(ment).html("");
				$("#reply_" + input).val("");
				$("#re_" + input).val("");
				for (var i = 0; i < boardid.length; i++) {
					if (boardid[i] == iii) {
						//console.log("댓글 들어왔다." + boardid[i] + obj.ment);
						$("#sp_" + boardid[i]).append(obj.ment);

					}
				}
			})
		});
		List(setid);
		likeList(setid);
		markList(setid);
		//댓글 리스트 자동 생성
function List(setid) {
	var boardid=[];
	$(".rebt").each(function() {
		boardid.push($(this).attr("name"));
	});
	//console.log("댓글 리스트 보여"+boardid);
	/// console.log(boardid.length);
	 if(boardid.length>0){
		 
	
	$.ajax("/listReply.do", {
		"method" : "post",
		"async" : true,
		"data" : {
			"boardId" : boardid
		}
	}).done(function(val){
		//console.log(val.length+"가가가vvvvvv"+val[0].length);
		//console.log(val);
		var boardid = [];
		var reply = [];
		$(".rebt").each(function() {
			boardid.push($(this).attr("name"));
			reply.push($(this).attr("name"));
		});
		for (var i = 0; i < val.length; i++) {
			//console.log(i+"번쨰");
			var dd="";
			if(val[i].reid == setid){
				var s=val[i].ment;
				// console.log("댓글버튼"+setid+s);
				dd="<button type=\"button\" class=\"del\" name="+val[i].boardId+" id=\""+val[i].ment+"\" >삭제</button>";
			}
		//	console.log(val[i].date+"데이트 객체");
			$("#sp_" + val[i].boardId).append("<a href=/search.do?id="+val[i].reid+">"+val[i].reid+"</a>" + "&emsp; <span id=\"ment_" + val[i].ment+" class=\"ment\" name="+val[i].ment+" >"+val[i].ment+"</span>" +"\t\t"+dd+val[i].date+"<br/>");
		}
		var id=setid;
		
		$(".del").on("click", function(){
			var boardids;
			var ments;
			boardids=$(this).attr("name");
			ments=$(this).attr("id");
			//console.log("댓글 삭제할거다"+id+boardids+ments);
			delReply(id,boardids,ments);
		});
	});
	 }
};

		function markList(setid) {
			var boardid = [];
			$(".rebt").each(function() {
				boardid.push($(this).attr("name"));
			});
			console.log(boardid + "북마크 리스트 받아라");
			$.ajax("/markList.do", {
				"method" : "get",
				"async" : true,
				"data" : {
					"boardId" : boardid
				}
			}).done(function(val) {
				//console.log(val + "북마크ㅋㅋㅋ");
				// console.log(val.length+"크키");
				for (var i = 0; i < val.length; i++) {
					//console.log("북마크가 보여요");
					if (val[i].id == setid) {
						$("#mark_" + val[i].boardId).hide();
						$("#unmark_" + val[i].boardId).show();
						console.log(val[i].id + val[i].boardId + "북마크 리스트다");
						$("#mark_" + val[i].boardId).val(val[i].objectId);

					}
					// console.log($("#like_"+val[i].boardId).val()+"좋아요리스트 번호");
				}
			})
		};
		//좋아요 ....
		$(".like").on("click", function() {

			console.log("좋아요 들어왔다");
			var reid = "${cookie.setId.value}";
			var boardid = $(this).attr("name");
			var bt = $("#likespan_" + boardid).attr("name");
			var like = "좋아요";
			var target = $(this).attr("title");
			console.log(bt + "타켓 아이디" + target);
			$.ajax("/likeBoard.do", {
				"method" : "get",
				"async" : true,
				"data" : {
					"boardId" : boardid,
					"id" : reid,
					"target" : target,
					"like" : like
				}
			}).done(function(val) {
				$("#like_" + boardid).hide();
				$("#dislike_" + boardid).show();
				var a;
				likeList();
				console.log(val);
				for (var i = 0; i < val.length; i++) {
					//console.log(bt + "아이디아디이디" + val[i].objectId+val[i].id+a);
					$("#likespan_" + boardid).attr("name", val[i].objectId);

				}
				likeList();
			})

		});
		$(".dislike").on("click", function() {
			var reid = "${cookie.setId.value}";
			var boardid = $(this).attr("name");

			$.ajax("/deleteLike.do", {
				"method" : "get",
				"async" : true,
				"data" : {
					"boardid" : boardid,
					"id" : reid
				}
			}).done(function(val2) {
				for (var i = 0; i < val2.length; i++) {
					if (val2[i].boardId == boardid) {
						$("#likespan_" + boardid).attr("name", "");

					}
				}
			})
			likeList();
			$("#like_" + boardid).show();
			$("#dislike_" + boardid).hide();
		});
	</script>
	
</body>
</html>