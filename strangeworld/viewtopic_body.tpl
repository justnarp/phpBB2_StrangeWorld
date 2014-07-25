				<div id="line2">
					<a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a>
					&nbsp;&nbsp;
					<a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a>
					&nbsp;&nbsp;
					<a href="javascript:;" onClick="switchMenu('show_settings');" onMouseOver="window.status='Settings'; return true;" onMouseOut="window.status=''; return true;" title="">Settings</a>
					<div id="show_settings" class="show_content" style="display: none;">
						<div class="line_show">
							{S_AUTH_LIST}<br /><br />
							{S_TOPIC_ADMIN}
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
					{S_WATCH_TOPIC}
				</div>
				<!-- END switch_user_logged_in -->
			</div>
			
			<div id="forum">
				<h1><span class="h1_back"><a href="{U_VIEW_FORUM}"><img src="templates/strangeworld/images/backarrow.gif" alt="" /></a></span><a href="{U_VIEW_TOPIC}">{TOPIC_TITLE}</a></h1>
				{POLL_DISPLAY}
				<!-- BEGIN postrow -->
				<h2>{postrow.MINI_POST_IMG}<a href="javascript:;" onClick="switchMenu('show_{postrow.U_POST_ID}');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{postrow.POSTER_NAME}</a></h2>
					<div id="show_{postrow.U_POST_ID}" class="show_userdetails" style="display: none;">
						<div class="line_show">
							<table cellspacing="0" class="table_details">
								<tr>
									<td>
										<p>
										<span class="avatar">{postrow.POSTER_AVATAR}<br />{postrow.RANK_IMAGE}</span>
										{L_POSTED}: {postrow.POST_DATE}<br /><br />
										<span class="block">{postrow.POSTER_RANK}</span>
										<span class="block">{postrow.POSTER_JOINED}</span>
										<span class="block">{postrow.POSTER_POSTS}</span>
										<span class="block">{postrow.POSTER_FROM}</span>
										<span class="block">{postrow.SIGNATURE}</span>
										</p>
									</td>
								</tr>
								<tr>
									<td class="icons">
										{postrow.QUOTE_IMG}
										{postrow.EDIT_IMG}
										{postrow.DELETE_IMG}
										{postrow.IP_IMG}
										{postrow.PROFILE_IMG}
										{postrow.PM_IMG}
										{postrow.EMAIL_IMG}
										{postrow.WWW_IMG}
										{postrow.AIM_IMG}
										{postrow.YIM_IMG}
										{postrow.MSN_IMG}
										{postrow.ICQ_IMG}
									</td>
								</tr>
							</table>
						</div>
					</div>
				<p>{postrow.MESSAGE}<span class="edited">{postrow.EDITED_MESSAGE}</span></p>
				<!-- END postrow -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
				<h2><br />
				<input type="button" class="button"  name="postreply" value="{L_POST_REPLY_TOPIC}" onclick="window.location.href='{U_POST_REPLY_TOPIC}'" />
				</h2>
			</div>