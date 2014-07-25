 
<script language="Javascript" type="text/javascript">
	//
	// Should really check the browser to stop this whining ...
	//
	function select_switch(status)
	{
		for (i = 0; i < document.privmsg_list.length; i++)
		{
			document.privmsg_list.elements[i].checked = status;
		}
	}
</script>

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

			<form method="post" name="privmsg_list" action="{S_PRIVMSGS_ACTION}">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{PAGE_TITLE}</h1>
				<h2>{INBOX}
				&nbsp;&nbsp;&nbsp;
				{SENTBOX}
				&nbsp;&nbsp;&nbsp;
				{OUTBOX}
				&nbsp;&nbsp;&nbsp;
				{SAVEBOX}</h2>
				<!-- BEGIN switch_box_size_notice -->
				<p><br />{BOX_SIZE_STATUS}</p>
				<!-- END switch_box_size_notice -->
				<!-- BEGIN listrow -->
				<h2><input type="checkbox" name="mark[]2" value="{listrow.S_MARK_ID}" class="radio" />
				{listrow.PRIVMSG_FOLDER_IMG}<a href="{listrow.U_READ}">{listrow.SUBJECT}</a></h2>
				<p>{L_DATE}: {listrow.DATE}.</p>
				<p>{L_FROM_OR_TO}: <a href="{listrow.U_FROM_USER_PROFILE}">{listrow.FROM}</a>.</p>
				<!-- END listrow -->
				<!-- BEGIN switch_no_messages -->
				<p><br />{L_NO_MESSAGES}</p>
				<!-- END switch_no_messages -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
				<h2>{S_HIDDEN_FIELDS}
				<input type="button" tabindex="1" class="button"  name="postreply" value="{L_MARK_ALL}" onclick="select_switch(true);" />
				<input type="button" tabindex="2" class="button"  name="postreply" value="{L_UNMARK_ALL}" onclick="select_switch(false);" /></h2>

				<h2>
				<input type="submit" tabindex="3" name="save" value="{L_SAVE_MARKED}" class="button" />
				<input type="submit" tabindex="4" name="delete" value="{L_DELETE_MARKED}" class="button" />
				<input type="submit" tabindex="5" name="deleteall" value="{L_DELETE_ALL}" class="button" />
				</h2>
				
				<h2><br />
				<input type="button" tabindex="6" class="button"  name="postreply" value="{PAGE_TITLE}" onclick="window.location.href='{U_POST_NEW_TOPIC}'" /></h2>
				</h2>

			</div>
</form>