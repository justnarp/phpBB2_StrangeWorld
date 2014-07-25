<script language="JavaScript" type="text/javascript">
<!--
// bbCode control by
// subBlue design
// www.subBlue.com

// Startup variables
var imageTag = false;
var theSelection = false;

// Check for Browser & Platform for PC & IE specific bits
// More details from: http://www.mozilla.org/docs/web-developer/sniffer/browser_type.html
var clientPC = navigator.userAgent.toLowerCase(); // Get client info
var clientVer = parseInt(navigator.appVersion); // Get browser version

var is_ie = ((clientPC.indexOf("msie") != -1) && (clientPC.indexOf("opera") == -1));
var is_nav = ((clientPC.indexOf('mozilla')!=-1) && (clientPC.indexOf('spoofer')==-1)
                && (clientPC.indexOf('compatible') == -1) && (clientPC.indexOf('opera')==-1)
                && (clientPC.indexOf('webtv')==-1) && (clientPC.indexOf('hotjava')==-1));
var is_moz = 0;

var is_win = ((clientPC.indexOf("win")!=-1) || (clientPC.indexOf("16bit") != -1));
var is_mac = (clientPC.indexOf("mac")!=-1);

// Helpline messages
b_help = "{L_BBCODE_B_HELP}";
i_help = "{L_BBCODE_I_HELP}";
u_help = "{L_BBCODE_U_HELP}";
q_help = "{L_BBCODE_Q_HELP}";
c_help = "{L_BBCODE_C_HELP}";
l_help = "{L_BBCODE_L_HELP}";
o_help = "{L_BBCODE_O_HELP}";
p_help = "{L_BBCODE_P_HELP}";
w_help = "{L_BBCODE_W_HELP}";
a_help = "{L_BBCODE_A_HELP}";
s_help = "{L_BBCODE_S_HELP}";
f_help = "{L_BBCODE_F_HELP}";

// Define the bbCode tags
bbcode = new Array();
bbtags = new Array('[b]','[/b]','[i]','[/i]','[u]','[/u]','[quote]','[/quote]','[code]','[/code]','[list]','[/list]','[list=]','[/list]','[img]','[/img]','[url]','[/url]');
imageTag = false;

// Shows the help messages in the helpline window
function helpline(help) {
	document.post.helpbox.value = eval(help + "_help");
}


// Replacement for arrayname.length property
function getarraysize(thearray) {
	for (i = 0; i < thearray.length; i++) {
		if ((thearray[i] == "undefined") || (thearray[i] == "") || (thearray[i] == null))
			return i;
		}
	return thearray.length;
}

// Replacement for arrayname.push(value) not implemented in IE until version 5.5
// Appends element to the array
function arraypush(thearray,value) {
	thearray[ getarraysize(thearray) ] = value;
}

// Replacement for arrayname.pop() not implemented in IE until version 5.5
// Removes and returns the last element of an array
function arraypop(thearray) {
	thearraysize = getarraysize(thearray);
	retval = thearray[thearraysize - 1];
	delete thearray[thearraysize - 1];
	return retval;
}


function checkForm() {

	formErrors = false;    

	if (document.post.message.value.length < 2) {
		formErrors = "{L_EMPTY_MESSAGE}";
	}

	if (formErrors) {
		alert(formErrors);
		return false;
	} else {
		bbstyle(-1);
		//formObj.preview.disabled = true;
		//formObj.submit.disabled = true;
		return true;
	}
}

function emoticon(text) {
	var txtarea = document.post.message;
	text = ' ' + text + ' ';
	if (txtarea.createTextRange && txtarea.caretPos) {
		var caretPos = txtarea.caretPos;
		caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? caretPos.text + text + ' ' : caretPos.text + text;
		txtarea.focus();
	} else {
		txtarea.value  += text;
		txtarea.focus();
	}
}

function bbfontstyle(bbopen, bbclose) {
	var txtarea = document.post.message;

	if ((clientVer >= 4) && is_ie && is_win) {
		theSelection = document.selection.createRange().text;
		if (!theSelection) {
			txtarea.value += bbopen + bbclose;
			txtarea.focus();
			return;
		}
		document.selection.createRange().text = bbopen + theSelection + bbclose;
		txtarea.focus();
		return;
	}
	else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
	{
		mozWrap(txtarea, bbopen, bbclose);
		return;
	}
	else
	{
		txtarea.value += bbopen + bbclose;
		txtarea.focus();
	}
	storeCaret(txtarea);
}


function bbstyle(bbnumber) {
	var txtarea = document.post.message;

	txtarea.focus();
	donotinsert = false;
	theSelection = false;
	bblast = 0;

	if (bbnumber == -1) { // Close all open tags & default button names
		while (bbcode[0]) {
			butnumber = arraypop(bbcode) - 1;
			txtarea.value += bbtags[butnumber + 1];
			buttext = eval('document.post.addbbcode' + butnumber + '.value');
			eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
		}
		imageTag = false; // All tags are closed including image tags :D
		txtarea.focus();
		return;
	}

	if ((clientVer >= 4) && is_ie && is_win)
	{
		theSelection = document.selection.createRange().text; // Get text selection
		if (theSelection) {
			// Add tags around selection
			document.selection.createRange().text = bbtags[bbnumber] + theSelection + bbtags[bbnumber+1];
			txtarea.focus();
			theSelection = '';
			return;
		}
	}
	else if (txtarea.selectionEnd && (txtarea.selectionEnd - txtarea.selectionStart > 0))
	{
		mozWrap(txtarea, bbtags[bbnumber], bbtags[bbnumber+1]);
		return;
	}
	
	// Find last occurance of an open tag the same as the one just clicked
	for (i = 0; i < bbcode.length; i++) {
		if (bbcode[i] == bbnumber+1) {
			bblast = i;
			donotinsert = true;
		}
	}

	if (donotinsert) {		// Close all open tags up to the one just clicked & default button names
		while (bbcode[bblast]) {
				butnumber = arraypop(bbcode) - 1;
				txtarea.value += bbtags[butnumber + 1];
				buttext = eval('document.post.addbbcode' + butnumber + '.value');
				eval('document.post.addbbcode' + butnumber + '.value ="' + buttext.substr(0,(buttext.length - 1)) + '"');
				imageTag = false;
			}
			txtarea.focus();
			return;
	} else { // Open tags
	
		if (imageTag && (bbnumber != 14)) {		// Close image tag before adding another
			txtarea.value += bbtags[15];
			lastValue = arraypop(bbcode) - 1;	// Remove the close image tag from the list
			document.post.addbbcode14.value = "Img";	// Return button back to normal state
			imageTag = false;
		}
		
		// Open tag
		txtarea.value += bbtags[bbnumber];
		if ((bbnumber == 14) && (imageTag == false)) imageTag = 1; // Check to stop additional tags after an unclosed image tag
		arraypush(bbcode,bbnumber+1);
		eval('document.post.addbbcode'+bbnumber+'.value += "*"');
		txtarea.focus();
		return;
	}
	storeCaret(txtarea);
}

// From http://www.massless.org/mozedit/
function mozWrap(txtarea, open, close)
{
	var selLength = txtarea.textLength;
	var selStart = txtarea.selectionStart;
	var selEnd = txtarea.selectionEnd;
	if (selEnd == 1 || selEnd == 2) 
		selEnd = selLength;

	var s1 = (txtarea.value).substring(0,selStart);
	var s2 = (txtarea.value).substring(selStart, selEnd)
	var s3 = (txtarea.value).substring(selEnd, selLength);
	txtarea.value = s1 + open + s2 + close + s3;
	return;
}

// Insert at Claret position. Code from
// http://www.faqts.com/knowledge_base/view.phtml/aid/1052/fid/130
function storeCaret(textEl) {
	if (textEl.createTextRange) textEl.caretPos = document.selection.createRange().duplicate();
}

//-->
</script>

<!-- BEGIN privmsg_extensions -->
<table border="0" cellspacing="0" cellpadding="0" align="center" width="100%">
  <tr> 
	<td valign="top" align="center" width="100%"> 
	  <table height="40" cellspacing="2" cellpadding="2" border="0">
		<tr valign="middle"> 
		  <td>{INBOX_IMG}</td>
		  <td><span class="cattitle">{INBOX_LINK}&nbsp;&nbsp;</span></td>
		  <td>{SENTBOX_IMG}</td>
		  <td><span class="cattitle">{SENTBOX_LINK}&nbsp;&nbsp;</span></td>
		  <td>{OUTBOX_IMG}</td>
		  <td><span class="cattitle">{OUTBOX_LINK}&nbsp;&nbsp;</span></td>
		  <td>{SAVEBOX_IMG}</td>
		  <td><span class="cattitle">{SAVEBOX_LINK}&nbsp;&nbsp;</span></td>
		</tr>
	  </table>
	</td>
  </tr>
</table>

<br clear="all" />
<!-- END privmsg_extensions -->

<form action="{S_POST_ACTION}" method="post" name="post" onsubmit="return checkForm(this)">

				<!-- BEGIN switch_user_logged_out -->
				<div id="line3">
					<a href="{U_REGISTER}">{L_REGISTER}</a>
					&nbsp;&nbsp;
					<a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a>
				</div>
				<!-- END switch_user_logged_out -->
				<!-- BEGIN switch_user_logged_in -->
				<div id="line3">
					<a href="{U_PRIVATEMSGS}">{PRIVATE_MESSAGE_INFO}</a>
					&nbsp;&nbsp;
					<a href="{U_PROFILE}">{L_PROFILE}</a>
					&nbsp;&nbsp;
					<a href="{U_LOGIN_LOGOUT}">{L_LOGIN_LOGOUT}</a>
				</div>
				<!-- END switch_user_logged_in -->
			</div>
			
			<div id="forum">
			
				<h1><span class="h1_back"><a href="{U_VIEW_FORUM}"><img src="templates/strangeworld/images/backarrow.gif" alt="" /></a></span>{L_POST_A}</h1>
				<h2><a href="javascript:;" tabindex="1" onClick="switchMenu('show_options');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_OPTIONS}</a>
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:;" tabindex="2" onClick="switchMenu('show_emoticons');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_EMOTICONS}</a>
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:;" tabindex="3" onClick="switchMenu('show_poll');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_ADD_A_POLL}</a>
				<a href="javascript:;" tabindex="4" onClick="switchMenu('show_topicreview');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_TOPIC_REVIEW}</a>
				{POST_PREVIEW_BOX}
				{ERROR_BOX}
				</h2>
				
					<div id="show_options" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<!-- BEGIN switch_type_toggle -->
							<p>{S_TYPE_TOGGLE}</p>
							<!-- END switch_type_toggle -->
							<!-- BEGIN switch_delete_checkbox -->
							<p><input type="checkbox" name="delete" class="radio" tabindex="10" /> {L_DELETE_POST}</p>
							<!-- END switch_delete_checkbox -->
							<!-- BEGIN switch_notify_checkbox -->
							<p><input type="checkbox" name="notify" {S_NOTIFY_CHECKED} class="radio" tabindex="11" /> {L_NOTIFY_ON_REPLY}</p>
							<!-- END switch_notify_checkbox -->
							<!-- BEGIN switch_signature_checkbox -->
							<p><input type="checkbox" name="attach_sig" {S_SIGNATURE_CHECKED} class="radio" tabindex="12" /> {L_ATTACH_SIGNATURE}</p>
							<!-- END switch_signature_checkbox -->
							<!-- BEGIN switch_smilies_checkbox -->
							<p><input type="checkbox" name="disable_smilies" {S_SMILIES_CHECKED} class="radio" tabindex="13" /> {L_DISABLE_SMILIES}</p>
							<!-- END switch_smilies_checkbox -->
							<!-- BEGIN switch_bbcode_checkbox -->
							<p><input type="checkbox" name="disable_bbcode" {S_BBCODE_CHECKED} class="radio" tabindex="14" /> {L_DISABLE_BBCODE}</p>
							<!-- END switch_bbcode_checkbox -->
							<!-- BEGIN switch_html_checkbox -->
							<p><input type="checkbox" name="disable_html" {S_HTML_CHECKED} class="radio" tabindex="15" /> {L_DISABLE_HTML}</p>
							<!-- END switch_html_checkbox -->

							<p>
							<br />{L_FONT_COLOR}: 
							<select name="addbbcode18" tabindex="16" onChange="bbfontstyle('[color=' + this.form.addbbcode18.options[this.form.addbbcode18.selectedIndex].value + ']', '[/color]');this.selectedIndex=0;" onMouseOver="helpline('s')">
							  <option style="color:black; background-color: {T_TD_COLOR1}" value="{T_FONTCOLOR1}" class="genmed">{L_COLOR_DEFAULT}</option>
							  <option style="color:darkred; background-color: {T_TD_COLOR1}" value="darkred" class="genmed">{L_COLOR_DARK_RED}</option>
							  <option style="color:red; background-color: {T_TD_COLOR1}" value="red" class="genmed">{L_COLOR_RED}</option>
							  <option style="color:orange; background-color: {T_TD_COLOR1}" value="orange" class="genmed">{L_COLOR_ORANGE}</option>
							  <option style="color:brown; background-color: {T_TD_COLOR1}" value="brown" class="genmed">{L_COLOR_BROWN}</option>
							  <option style="color:yellow; background-color: {T_TD_COLOR1}" value="yellow" class="genmed">{L_COLOR_YELLOW}</option>
							  <option style="color:green; background-color: {T_TD_COLOR1}" value="green" class="genmed">{L_COLOR_GREEN}</option>
							  <option style="color:olive; background-color: {T_TD_COLOR1}" value="olive" class="genmed">{L_COLOR_OLIVE}</option>
							  <option style="color:cyan; background-color: {T_TD_COLOR1}" value="cyan" class="genmed">{L_COLOR_CYAN}</option>
							  <option style="color:blue; background-color: {T_TD_COLOR1}" value="blue" class="genmed">{L_COLOR_BLUE}</option>
							  <option style="color:darkblue; background-color: {T_TD_COLOR1}" value="darkblue" class="genmed">{L_COLOR_DARK_BLUE}</option>
							  <option style="color:indigo; background-color: {T_TD_COLOR1}" value="indigo" class="genmed">{L_COLOR_INDIGO}</option>
							  <option style="color:violet; background-color: {T_TD_COLOR1}" value="violet" class="genmed">{L_COLOR_VIOLET}</option>
							  <option style="color:white; background-color: {T_TD_COLOR1}" value="white" class="genmed">{L_COLOR_WHITE}</option>
							  <option style="color:black; background-color: {T_TD_COLOR1}" value="black" class="genmed">{L_COLOR_BLACK}</option>
							</select>
							&nbsp;&nbsp;&nbsp;
							{L_FONT_SIZE}:
							<select name="addbbcode20" tabindex="17" onChange="bbfontstyle('[size=' + this.form.addbbcode20.options[this.form.addbbcode20.selectedIndex].value + ']', '[/size]')" onMouseOver="helpline('f')">
							  <option value="9">{L_FONT_TINY}</option>
							  <option value="10">{L_FONT_SMALL}</option>
							  <option value="11" selected="selected">{L_FONT_NORMAL}</option>
							  <option value="14">{L_FONT_LARGE}</option>
							  <option value="17">{L_FONT_HUGE}</option>
							</select>
							<br /><br />
							</p>
							<p>
							<a href="javascript:bbstyle(-1)" tabindex="18" onMouseOver="helpline('a')">{L_BBCODE_CLOSE_TAGS}</a><br />
							<input type="text" name="helpbox" maxlength="100" class="helpline postshorter" value="{L_STYLES_TIP}" /><br />
								<input tabindex="20" type="button" class="button" accesskey="b" name="addbbcode0" value=" B " style="font-weight:bold; width: 30px" onClick="bbstyle(0)" onMouseOver="helpline('b')" />
								<input tabindex="21" type="button" class="button" accesskey="i" name="addbbcode2" value=" i " style="font-style:italic; width: 30px" onClick="bbstyle(2)" onMouseOver="helpline('i')" />
								<input tabindex="22" type="button" class="button" accesskey="u" name="addbbcode4" value=" u " style="text-decoration: underline; width: 30px" onClick="bbstyle(4)" onMouseOver="helpline('u')" />
								<input tabindex="23" type="button" class="button" accesskey="q" name="addbbcode6" value="Quote" style="width: 50px" onClick="bbstyle(6)" onMouseOver="helpline('q')" />
								<input tabindex="24" type="button" class="button" accesskey="c" name="addbbcode8" value="Code" style="width: 40px" onClick="bbstyle(8)" onMouseOver="helpline('c')" />
								<input tabindex="25" type="button" class="button" accesskey="l" name="addbbcode10" value="List" style="width: 40px" onClick="bbstyle(10)" onMouseOver="helpline('l')" />
								<input tabindex="26" type="button" class="button" accesskey="o" name="addbbcode12" value="List=" style="width: 40px" onClick="bbstyle(12)" onMouseOver="helpline('o')" />
								<input tabindex="27" type="button" class="button" accesskey="p" name="addbbcode14" value="Img" style="width: 40px"  onClick="bbstyle(14)" onMouseOver="helpline('p')" />
								<input tabindex="28" type="button" class="button" accesskey="w" name="addbbcode16" value="URL" style="text-decoration: underline; width: 40px" onClick="bbstyle(16)" onMouseOver="helpline('w')" />
							</p>
						</div>
					</div>

					<div id="show_emoticons" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<p>
							<!-- BEGIN smilies_row -->
							<!-- BEGIN smilies_col -->
								<a href="javascript:emoticon('{smilies_row.smilies_col.SMILEY_CODE}')"><img src="{smilies_row.smilies_col.SMILEY_IMG}" border="0" alt="{smilies_row.smilies_col.SMILEY_DESC}" title="{smilies_row.smilies_col.SMILEY_DESC}" /></a>
							<!-- END smilies_col -->
							<!-- END smilies_row -->
							</p>
							<!-- BEGIN switch_smilies_extra -->
							<p><br />
							<input tabindex="29" type="button" class="button"  name="postreply" value="{L_MORE_SMILIES}" onclick="window.open('{U_MORE_SMILIES}', '_phpbbsmilies', 'HEIGHT=200,resizable=yes,scrollbars=yes,WIDTH=280');return false;" target="_phpbbsmilies" /></p>
							<!-- END switch_smilies_extra -->
						</div>
					</div>

					<div id="show_poll" class="show_userdetails" style="display: none;">
						{POLLBOX}
					</div>

					<div id="show_topicreview" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">{TOPIC_REVIEW_BOX}</div>
					</div>

				<!-- BEGIN switch_username_select -->
				<h2>{L_USERNAME}</h2>
				<p><input type="text" class="post postshort" tabindex="40" name="username" maxlength="25" value="{USERNAME}" /></p>
				<!-- END switch_username_select -->
				<!-- BEGIN switch_privmsg -->
				<h2>{L_USERNAME}</h2>
				<p><input type="text" class="post postshort" name="username" maxlength="25" tabindex="41" value="{USERNAME}" />
				<input type="submit" tabindex="42" name="usersubmit" value="{L_FIND_USERNAME}" class="button" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=200,resizable=yes,WIDTH=300');return false;" /></p>
				<!-- END switch_privmsg -->
				<h2>{L_SUBJECT}</h2>
				<p><input type="text" name="subject" size="40" maxlength="60" style="" tabindex="43" class="post" value="{SUBJECT}" /></p>
				<h2>{L_MESSAGE_BODY}</h2>
				<p><textarea name="message" rows="15" cols="35" wrap="virtual" style="" tabindex="44" class="post" onselect="storeCaret(this);" onclick="storeCaret(this);" onkeyup="storeCaret(this);">{MESSAGE}</textarea></p>
				<h2><br />
				<input type="submit" tabindex="45" name="preview" class="button" value="{L_PREVIEW}" />
				<input type="submit" accesskey="s" tabindex="46" name="post" class="button" value="{L_SUBMIT}" />
				{S_HIDDEN_FORM_FIELDS}
				</h2>
			</div>
</form>