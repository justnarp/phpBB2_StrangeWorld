				<div id="line2">
					<a href="javascript:;" onClick="switchMenu('show_settings');" onMouseOver="window.status='Settings'; return true;" onMouseOut="window.status=''; return true;" title="">Settings</a>
					<div id="show_settings" class="show_content" style="display: none;">
						<div class="line_show">
							{S_AUTH_LIST}<br /><br />
							{L_MODERATOR}: {MODERATORS}
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
					<a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a>
				</div>
				<!-- END switch_user_logged_in -->
			</div>
			
			<div id="forum">
				<h1><span class="h1_back"><a href="{U_INDEX}"><img src="templates/strangeworld/images/backarrow.gif" alt="" /></a></span><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
				<!-- BEGIN topicrow -->
				<h2>{topicrow.TOPIC_FOLDER_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></h2>
				<p>{L_LASTPOST}: {topicrow.LAST_POST_TIME} {topicrow.LAST_POST_AUTHOR}.<br />
					{L_AUTHOR}: {topicrow.TOPIC_AUTHOR}. {L_REPLIES}: {topicrow.REPLIES}. {L_VIEWS}: {topicrow.VIEWS}.<br />
					<span class="gotopage">{topicrow.GOTO_PAGE}</span></p>
				<!-- END topicrow -->
				<!-- BEGIN switch_no_topics -->
					<p><br />{L_NO_TOPICS}</p>
				<!-- END switch_no_topics -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
				<h2><br />
				<input type="button" class="button"  name="postreply" value="{L_POST_NEW_TOPIC}" onclick="window.location.href='{U_POST_NEW_TOPIC}'" />
				</h2>
			</div>