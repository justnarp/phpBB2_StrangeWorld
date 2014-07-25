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
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_SEARCH_MATCHES}</h1>
				<!-- BEGIN searchresults -->
				<h2><a href="{searchresults.U_FORUM}">{searchresults.FORUM_NAME}</a> - <a href="{searchresults.U_TOPIC}">{searchresults.TOPIC_TITLE}</a></h2>
				<p>{searchresults.MESSAGE}</p>
				<!-- END searchresults -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
			</div>