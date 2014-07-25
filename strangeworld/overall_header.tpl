<!--
	The original Strange World v1.00 skin for phpBB version 2+
	Created by Mike Lothar (c) 2004 - 2006
	http://www.mikelothar.com
	Do not remove this copyright note
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir="{S_CONTENT_DIRECTION}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset={S_CONTENT_ENCODING}">
<meta http-equiv="Content-Style-Type" content="text/css">
{META}
{NAV_LINKS}
<title>{SITENAME} :: {PAGE_TITLE}</title>
<link rel="stylesheet" href="templates/strangeworld/{T_HEAD_STYLESHEET}" type="text/css">
<link rel="icon" href="templates/militia/images/favicon.ico" />
<script language="Javascript" type="text/javascript">
<!--
function switchMenu(obj) {var el = document.getElementById(obj); if ( el.style.display != "none" ) {el.style.display = 'none';}	else {el.style.display = '';}}
function pointercursor(){document.body.style.cursor = "move";}
function unpointercursor(){document.body.style.cursor="";}
//-->
</script>
<!-- BEGIN switch_enable_pm_popup -->
<script language="Javascript" type="text/javascript">
<!--
	if ( {PRIVATE_MESSAGE_NEW_FLAG} ) {window.open('{U_PRIVATEMSGS_POPUP}', '_phpbbprivmsg', 'HEIGHT=150,resizable=yes,WIDTH=300');}
//-->
</script>
<!-- END switch_enable_pm_popup -->
</head>
<body>

<table id="centering" cellspacing="0">
	<tr>
		<td id="leftblock" rowspan="2">&nbsp;</td>
		<td id="centerblock">
		
			<div id="top-image">
				<a href="{U_INDEX}"><img src="templates/strangeworld/images/top-image.jpg" title="{L_INDEX}"></a><br />
			</div>
			
			<div id="menu">
				<span style="float: right;">
					<a href="javascript:;" onClick="switchMenu('show_menu');" onMouseOver="window.status='Menu'; return true;" onMouseOut="window.status=''; return true;">Menu</a>
				</span>
				<a href="{U_INDEX}">{SITE_DESCRIPTION}</a>
			</div>
			
			<div id="show_menu" class="show_content" style="display: none;">
				<div id="line1">
					<a href="{U_FAQ}">{L_FAQ}</a>
					&nbsp;&nbsp;
					<a href="{U_SEARCH}">{L_SEARCH}</a>
					&nbsp;&nbsp;
					<a href="{U_MEMBERLIST}">{L_MEMBERLIST}</a>
					&nbsp;&nbsp;
					<a href="{U_GROUP_CP}">{L_USERGROUPS}</a>
				</div>