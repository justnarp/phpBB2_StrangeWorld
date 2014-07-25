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

			<form method="post" action="{S_MODCP_ACTION}">
			
			<div id="forum">
			
				<h1><span class="h1_back"><a href="{U_INDEX}"><img src="templates/strangeworld/images/backarrow.gif" alt="" /></a></span><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
				<h2>{L_MOD_CP}</h2>
				<p>{L_MOD_CP_EXPLAIN}</p>
				<!-- BEGIN topicrow -->
				<h2><input type="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" class="radio" />
				{topicrow.TOPIC_FOLDER_IMG}{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></h2>
				<p>{L_LASTPOST}: {topicrow.LAST_POST_TIME}.<br />
				{L_REPLIES}: {topicrow.REPLIES}.</p>
				<!-- END topicrow -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
				<h2><br />{S_HIDDEN_FIELDS}
				<input type="submit" name="delete" class="button" value="{L_DELETE}" />
				<input type="submit" name="move" class="button" value="{L_MOVE}" />
				<input type="submit" name="lock" class="button" value="{L_LOCK}" />
				<input type="submit" name="unlock" class="button" value="{L_UNLOCK}" />
				</h2>
			</div>

</form>