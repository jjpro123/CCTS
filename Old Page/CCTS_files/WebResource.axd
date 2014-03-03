﻿/* RadWindow for ASP.NET AJAX Base Stylesheet */

/* MVC overrides */
.RadWindow table,
.RadWindow table td
{
	border:0;
	padding:0;
}

.RadWindow .rwTopResize
{
	font-size: 1px;
	line-height: 4px;
	width: 100%;
	height: 4px;
	background-position: 0 -31px;
	background-repeat: repeat-x;
}

.RadWindow .rwStatusbarRow .rwCorner
{
    background-repeat: no-repeat;
}

.RadWindow .rwStatusbarRow .rwBodyLeft
{
    background-position: -16px 0;
}

.RadWindow .rwStatusbarRow .rwBodyRight
{
    background-position: -24px 0;
}

.RadWindow .rwStatusbar
{
	height: 22px;
	background-position: 0 -114px;
	background-repeat: repeat-x;
}

.RadWindow .rwStatusbar div
{
    width: 18px; 
	height: 18px;
	background-position: 0 -94px;
	background-repeat: no-repeat;
}

.RadWindow table
{
    width: 100%;
    height: 100%;
    table-layout: auto; /* fixes the dimensions under IE */
}

.RadWindow table td
{
	padding: 0; 
	margin: 0;
	border-collapse: collapse;
	vertical-align: top;
}

.RadWindow .rwCorner
{
    width: 8px;
}

.RadWindow .rwTopLeft,
.RadWindow .rwTopRight,
.RadWindow .rwTitlebar,
.RadWindow .rwFooterLeft,
.RadWindow .rwFooterRight,
.RadWindow .rwFooterCenter
{
    height: 8px;
	font-size: 1px;
    background-repeat: no-repeat;
    line-height: 1px;
}

.RadWindow .rwBodyLeft,
.RadWindow .rwBodyRight
{
	background-repeat: repeat-y;
}

.RadWindow .rwBodyRight
{
    background-position: -8px 0;
}

.RadWindow .rwTopLeft
{
    background-position: 0 0;
}

.RadWindow .rwTopRight
{
    background-position: -8px 0;
}

.RadWindow table .rwTitlebar
{
	background-repeat: repeat-x;
	background-position: 0 -31px;
	-moz-user-select: none;
}

.RadWindow .rwFooterLeft
{
	background-position: 0 -62px;
}

.RadWindow .rwFooterRight
{
	background-position: -8px -62px;
}

.RadWindow .rwFooterCenter
{
	background-repeat: repeat-x;
	background-position: 0 -70px;
}

.RadWindow .rwTitlebarControls
{
    height: 27px;
}

.RadWindow .rwWindowContent
{
	height: 100% !important; /* very important property, especially for opera */
	background: white;
}

/* Support for displayng the rwLoading image in the iframe's parent TD */
.RadWindow td.rwLoading
{
    background-repeat: no-repeat;
    background-position: center;
}

/* Support for displaying rwLoading image in the status bar  */
.RadWindow .rwStatusbar .rwLoading
{	
	background-repeat: no-repeat;
}

.RadWindow .rwStatusbar .rwLoading
{
	padding-left: 30px;
}

.RadWindow td.rwStatusbar input
{
    font: normal 12px "Segoe UI", Arial, Verdana, Sans-serif;
    padding: 4px 0 0 7px;
    margin: 0;
    border: 0 !important;
    width: 100%;	
    height: 18px;
	background-color: transparent !important; 
	background-repeat: no-repeat !important;
	background-position: left center !important;
	cursor: default;
	-moz-user-select: none;
	overflow: hidden; 
	text-overflow: ellipsis;
	display: block; 
	float: left;
	vertical-align: middle;
}

.RadWindow .rwControlButtons
{
	padding: 0; 
	margin: 2px 0 0 0;
	list-style: none; 
	white-space: nowrap;	
	float: right; 
}

.RadWindow .rwControlButtons li
{
	float: left;
	padding: 0 1px 0 0;
}

.RadWindow .rwControlButtons a
{
	width: 30px; 
	height: 21px; 
	line-height: 1px; 
	font-size: 1px;
	cursor: default;
	background-repeat: no-repeat;
	display: block; 
	text-decoration: none;
	outline: none;
}

.RadWindow .rwControlButtons span
{
	text-indent: -9999px; 
	display: block;	
}

/* reload button */
.RadWindow  .rwReloadButton
{
	background-position: -120px 0;
}

.RadWindow .rwReloadButton:hover
{
	background-position: -120px -21px;
}

/* unpin button */
.RadWindow .rwPinButton
{
	background-position: -180px 0;
}

.RadWindow .rwPinButton:hover
{
	background-position: -180px -21px;
}

/* pin button */
.RadWindow .rwPinButton.on
{
	background-position: -150px 0;
}

.RadWindow .rwPinButton.on:hover
{
	background-position: -150px -21px;
}

/* minimize button */
.RadWindow .rwMinimizeButton
{
	background-position: 0 0;
}

.RadWindow .rwMinimizeButton:hover
{
	background-position: 0 -21px;
}

/* maximize button */
.RadWindow .rwMaximizeButton
{
	background-position: -60px 0;
}

.RadWindow .rwMaximizeButton:hover
{
	background-position: -60px -21px;
}

/* close button */
.RadWindow .rwCloseButton
{
	background-position: -90px 0;
}

.RadWindow .rwCloseButton:hover
{
	background-position: -90px -21px;
}

/* restore button */
.RadWindow.rwMaximizedWindow .rwMaximizeButton,
.RadWindow.rwMinimizedWindow .rwMinimizeButton
{
	background-position: -30px 0;
}

.RadWindow.rwMaximizedWindow .rwMaximizeButton:hover,
.RadWindow.rwMinimizedWindow .rwMinimizeButton:hover
{	
	background-position: -30px -21px;
}

.RadWindow .rwIcon
{
    display: block;
	background-repeat: no-repeat;
	background-position: 0 -78px;
	width: 16px; 
	height: 16px;
	cursor: default;
	margin: 4px 5px 0 0;
}

.RadWindow em
{
	font: normal bold 12px "Segoe UI", Arial;
	color: black;
	padding: 3px 0 0 4px;	
	overflow: hidden; 
	text-overflow: ellipsis; 
	white-space: nowrap; 
	float: left;	
}

.RadWindow_rtl .rwControlButtons
{
	float: left; 
}

div.RadWindow_rtl .rwControlButtons li
{
	float: right;
}

.RadWindow.rwInactiveWindow .rwTitlebarControls
{
	position: static;
}

.RadWindow .rwDialogPopup
{
	margin: 16px;
	color: black;	
	padding: 0px 0px 16px 50px;
	font: normal 12px "Segoe UI", Arial, Verdana;
	cursor: default;
}

.rwDialogPopup .rwPopupButton
{
    margin: 0;
}

.rwDialogPopup .rwPopupButton:focus,
.rwDialogPopup .rwPopupButton:active
{
    border: dotted 1px #999;                        
}

.rwDialogPopup .rwPopupButton,
.rwDialogPopup .rwPopupButton span
{
	display: block; 
	float: left;
}

.RadWindow .rwControlButtons a
{
    text-indent: -9999px;
}

html:first-child .RadWindow ul
{
    float: right; 
    border: solid 1px transparent;
}

.RadWindow .rwDialogText
{
    text-align: left;
}

.RadWindow.rwMinimizedWindow .rwPinButton,
.RadWindow.rwMinimizedWindow .rwReloadButton,
.RadWindow.rwMinimizedWindow .rwMaximizeButton,
.RadWindow.rwMinimizedWindow .rwTopResize
{
    display: none !important;
}

.RadWindow .rwDialogInput
{
	font: normal 12px "Segoe UI", Arial, Verdana;
	color: black;
	width: 100%;
	display: block;
	margin: 8px 0;
}

.RadWindow .rwWindowContent .radconfirm,
.RadWindow .rwWindowContent .radalert
{
    background-color: transparent;
	background-position: left center;
	background-repeat: no-repeat;
}

.RadWindow .rwWindowContent .radconfirm
{
    background-image: url('WebResource.axd?d=CPdWdfs_qf675A48d4XSqGLhvXtjALVQ9MVyijVRUYsSlr4NYGSycB1SwsEA_XEkwl1OXAIdTC3SjzkgPfU_sn_mEW-zJpB_iR6w_GPhivl6hASDlwGPki55vmbHKve2xyPWuyueeuGxCewD3tKLuG3x-q_f-PvHxIXIUUQzth41&t=634999576360000000');	
}

.RadWindow .rwWindowContent .radalert
{
    background-image: url('WebResource.axd?d=He8MkKqcig1d6_sl_LrGG3kQI7JCvKMOVb7cikidyNw7wIxsZuIAaTbpEPKAgONqKrpaIs5QgfFE-RetAdF--t6JvRnirZ0d1wWCCJJ-HGcGY7SvLXC4jkfGYwwt8qYkPZroqBlq_uFfs4S5xALc2jLRKRua3YgGDKdKG1T6SZk1&t=634999576360000000');	
}

.RadWindow .rwWindowContent .radprompt
{
	padding: 0;
}

.RadWindow .rwPopupButton,
.RadWindow .rwPopupButton span
{
	text-decoration: none;
	color: black;
	line-height: 21px;
	height: 21px;
	cursor: default;
}

.RadWindow .rwPopupButton
{
	background-repeat: no-repeat;
	background-position: 0 -136px; 
	padding: 0 0 0 3px;
	margin: 8px 8px 8px 0;
}

.RadWindow .rwWindowContent .rwPopupButton .rwOuterSpan
{
    background-repeat: no-repeat;
	background-position: right -136px; 
	padding: 0 3px 0 0;
}

.RadWindow .rwWindowContent .rwPopupButton .rwInnerSpan
{
	background-repeat: repeat-x;
	background-position: 0 -157px; 
	padding: 0 12px;
}

.RadWindow .rwWindowContent .rwPopupButton:hover
{
	background-position: 0 -178px; 
	padding: 0 0 0 3px;
	margin: 8px 8px 8px 0;
}

.RadWindow .rwWindowContent .rwPopupButton:hover .rwOuterSpan
{
	background-position: right -178px; 
	padding: 0 3px 0 0;
}

.RadWindow .rwWindowContent .rwPopupButton:hover .rwInnerSpan
{
	background-position: 0 -199px; 
	padding: 0 12px;
}

.RadWindow .rwStatusbarRow .rwBodyLeft
{
    background-position: -16px 0;
}

.RadWindow .rwStatusbarRow .rwBodyRight
{
    background-position: -24px 0;
}

.RadWindow.rwMinimizedWindow .rwContentRow,
.RadWindow.rwMinimizedWindow .rwStatusbarRow
{
	display: none;
}

.RadWindow.rwMinimizedWindow table.rwTitlebarControls 
{
	margin-top: 4px;
}

.RadWindow.rwMinimizedWindow .rwControlButtons
{
    width: 66px !important;
}

.RadWindow.rwMinimizedWindow em
{
	width: 90px;
}

.RadWindow.rwMinimizedWindow
{
    width: 200px !important;
    height: 30px !important;
    overflow: hidden !important;
    float: left !important;
}

.RadWindow.rwMinimizedWindow .rwCorner.rwTopLeft
{
	background-position: 0 -220px;
	background-repeat: no-repeat; 
}

.RadWindow.rwMinimizedWindow .rwCorner.rwTopRight
{
	background-position: -8px -220px;
	background-repeat: no-repeat; 
}

.RadWindow.rwMinimizedWindow .rwTitlebar
{
    background-position: 0 -250px !important; /* Should be !important because of IE6 */
    background-repeat: repeat-x;
}

.RadWindow.rwInactiveWindow .rwCorner,
.RadWindow.rwInactiveWindow .rwTitlebar,
.RadWindow.rwInactiveWindow .rwFooterCenter
{
	filter: progid:DXImageTransform.Microsoft.Alpha(opacity=65) !important;
	opacity: .65 !important; 
	-moz-opacity: .65 !important;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=65)";
}