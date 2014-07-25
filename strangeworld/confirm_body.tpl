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

			<form action="{S_CONFIRM_ACTION}" method="post">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{MESSAGE_TITLE}</h1>
				<h2>{MESSAGE_TITLE}</h2>
				<p>{MESSAGE_TEXT}</p>
				<h2><br />{S_HIDDEN_FIELDS}
				<input type="submit" tabindex="1" name="confirm" value="{L_YES}" class="button" />
				<input type="submit" tabindex="2" name="cancel" value="{L_NO}" class="button" />
				</h2>

			</div>
			
			 
</form>