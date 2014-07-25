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
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{PAGE_TITLE}</h1>
				<h2>{TOTAL_REGISTERED_USERS_ONLINE}</h2>
				<!-- BEGIN reg_user_row -->
				<p><a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a>, <a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a></p>
				<!-- END reg_user_row -->
				<h2>{TOTAL_GUEST_USERS_ONLINE}</h2>
				<!-- BEGIN guest_user_row -->
				<p>{guest_user_row.USERNAME}, <a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a></p>
				<!-- END guest_user_row -->

			</div>