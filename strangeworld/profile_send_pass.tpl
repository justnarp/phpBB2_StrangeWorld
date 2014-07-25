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

			<form action="{S_PROFILE_ACTION}" method="post">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_SEND_PASSWORD}</h1>
				<h2>{L_USERNAME} *</h2>
				<p><input type="text" tabindex="1" class="post postshort" name="username" maxlength="40" value="{USERNAME}" /></p>
				<h2>{L_EMAIL_ADDRESS} *</h2>
				<p><input type="text" tabindex="2" class="post postshort" name="email" maxlength="255" value="{EMAIL}" /></p>
				<h2><br />
				{S_HIDDEN_FIELDS}
				<input type="submit" tabindex="3" name="submit" value="{L_SUBMIT}" class="button" />
				<input type="reset" tabindex="4" value="{L_RESET}" name="reset" class="button" />
				</h2>
			</div>
</form>
