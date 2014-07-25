
<script language="javascript" type="text/javascript">
<!--
function refresh_username(selected_username)
{
	opener.document.forms['post'].username.value = selected_username;
	opener.focus();
	window.close();
}
//-->
</script>

<form method="post" name="search" action="{S_SEARCH_ACTION}">
<div style="padding: 0 20px 20px;">
<h2>{L_SEARCH_USERNAME}</h2>
<p>{L_SEARCH_EXPLAIN}</p>
<p><input type="text" name="search_username" value="{USERNAME}" class="post postshort" /><br />
<input type="submit" name="search" value="{L_SEARCH}" class="button" /></p>
<!-- BEGIN switch_select_name -->
<h2>{L_UPDATE_USERNAME}</h2>
<p><select name="username_list">{S_USERNAME_OPTIONS}</select><br />
<input type="submit" class="button" onClick="refresh_username(this.form.username_list.options[this.form.username_list.selectedIndex].value);return false;" name="use" value="{L_SELECT}" /></p>
<!-- END switch_select_name -->
</div>
</form>