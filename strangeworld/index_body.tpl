				<div id="line2">
					<a href="{U_SEARCH_UNANSWERED}">{L_SEARCH_UNANSWERED}</a>
					&nbsp;&nbsp;
					<a href="{U_VIEWONLINE}">{L_WHO_IS_ONLINE}</a>
					&nbsp;&nbsp;
					<a href="javascript:;" onClick="switchMenu('show_statistics');" onMouseOver="window.status='Statistics'; return true;" onMouseOut="window.status=''; return true;" title="">Statistics</a>
					<div id="show_statistics" class="show_content" style="display: none;">
						<div class="line_show">
							{TOTAL_POSTS}<br />
							{TOTAL_USERS}<br />
							{NEWEST_USER}<br />
							<!-- BEGIN switch_user_logged_in -->
							{LAST_VISIT_DATE}<br />
							<!-- END switch_user_logged_in -->
							<br />
							{TOTAL_USERS_ONLINE}<br />
							{RECORD_USERS}<br /><br />
							{LOGGED_IN_USER_LIST}<br /><br />
							{L_WHOSONLINE_ADMIN}
							&nbsp;&nbsp;
							{L_WHOSONLINE_MOD}<br /><br />
							{L_ONLINE_EXPLAIN}
						</div>
					</div>
				</div>

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
				<div id="line3">
					<a href="{U_SEARCH_NEW}">{L_SEARCH_NEW}</a>
					&nbsp;&nbsp;
					<a href="{U_SEARCH_SELF}">{L_SEARCH_SELF}</a>
					&nbsp;&nbsp;
					<a href="{U_MARK_READ}">{L_MARK_FORUMS_READ}</a>
				</div>
				<!-- END switch_user_logged_in -->
			</div>
			
			<div id="forum">
				<!-- BEGIN catrow -->
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span><a href="{catrow.U_VIEWCAT}">{catrow.CAT_DESC}</a></h1>
				<!-- BEGIN forumrow -->
				<h2>{catrow.forumrow.FORUM_FOLDER_IMG}<a href="{catrow.forumrow.U_VIEWFORUM}">{catrow.forumrow.FORUM_NAME}</a></h2>
				<p>{catrow.forumrow.FORUM_DESC}</p>
				<!-- END forumrow -->
				<!-- END catrow -->
			</div>