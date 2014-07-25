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

			<form action="{S_MODCP_ACTION}" method="post">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{PAGE_TITLE}</h1>
				<h2>{L_MOVE_TO_FORUM}</h2>
				<p>{S_FORUM_SELECT}</p>
				<p><input type="checkbox" name="move_leave_shadow" checked="checked" class="radio" /> {L_LEAVESHADOW}</p>
				<h2>{MESSAGE_TITLE}</h2>
				<p>{MESSAGE_TEXT}</p>
				<h2><br />{S_HIDDEN_FIELDS}
				<input class="button" type="submit" name="confirm" value="{L_YES}" />
				<input class="button" type="submit" name="cancel" value="{L_NO}" />
				</h2>

			</div>
			</form>