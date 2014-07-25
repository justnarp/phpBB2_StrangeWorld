<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"
	lang="en"
	xml:lang="en">

<head>
<!--

	ResizeFix v1.01 for phpBB
	www.mikelothar.com (c) 2004 - 2006

//-->

<title>Original size</title>

<meta http-equiv="Content-Type"
	content="text/html;
	charset=iso-8859-1" />
	
<meta http-equiv="imagetoolbar"
	content="no" />

<link rel="icon"
	href="templates/strangeworld/images/favicon.ico" />

<link rel="stylesheet"
	href="strangeworld.css" type="text/css">

<script language="JavaScript">
window.onload = maxWindow;
function maxWindow() {window.moveTo(0,0); if (document.all){top.window.resizeTo(screen.availWidth,screen.availHeight);}else if (document.layers||document.getElementById){if (top.window.outerHeight<screen.availHeight||top.window.outerWidth<screen.availWidth){top.window.outerHeight = screen.availHeight; top.window.outerWidth = screen.availWidth;}}}
</script>

</head>

<body>
<table cellspacing="0" style="height: 94%; width: 100%;">
  <tr>
    <td style="vertical-align: center; text-align: center;"><img src="<?PHP print $_GET[originalsize];?>" alt="" style="border: 20px solid white;"><br />
		<h2><a href="javascript:window.close();">Close this window</a></h2></td>
  </tr>
</table>
</body>
</html>