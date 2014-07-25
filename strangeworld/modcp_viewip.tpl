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
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_IP_INFO}</h1>
				<h2>{L_THIS_POST_IP}</h2>
				<p>{IP} [ {POSTS} ] [ <a href="{U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]</p>
				<h2>{L_OTHER_USERS}</h2>
				<!-- BEGIN userrow -->
				<p><a href="{userrow.U_PROFILE}">{userrow.USERNAME}</a> [ {userrow.POSTS} ] [ <a href="{userrow.U_SEARCHPOSTS}">{L_SEARCH}</a> ]</p>
				<!-- END userrow -->
				<h2>{L_OTHER_IPS}</h2>
				<!-- BEGIN iprow -->
				<p>{iprow.IP} [ {iprow.POSTS} ] [ <a href="{iprow.U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]</p>
				<!-- END iprow -->

			</div>