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

			<form action="{S_LOGIN_ACTION}" method="post" target="_top">

			<div id="forum">
			
				<h1><span class="h1_back"><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{PAGE_TITLE}</h1>
				<h2>{L_ENTER_PASSWORD}</h2>
				<h2>{L_USERNAME}</h2>
				<p><input type="text" tabindex="1" class="post postshort" name="username" maxlength="40" value="{USERNAME}" /></p>
				<h2>{L_PASSWORD}</h2>
				<p><input type="password" tabindex="2" class="post postshort" name="password" maxlength="32" /></p>
				<!-- BEGIN switch_allow_autologin -->
				<p><br /><input type="checkbox" tabindex="3" name="autologin" class="radio" /> {L_AUTO_LOGIN}</p>
				<!-- END switch_allow_autologin -->
				<h2><br />
				<input type="submit" tabindex="4" name="login" class="button" value="{L_LOGIN}" />
				<input type="button" tabindex="5" class="button"  name="postreply" value="{L_SEND_PASSWORD}" onclick="window.location.href='{U_SEND_PASSWORD}'" />
				{S_HIDDEN_FIELDS}
				</h2>
			</div>
</form>