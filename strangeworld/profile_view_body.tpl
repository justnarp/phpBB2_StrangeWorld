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
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_VIEWING_PROFILE}</h1>

				<h2>{L_ABOUT_USER}</h2>
					<div class="show_userdetails">
						<div class="line_show">
							<p><table cellspacing="0" class="table_details">
								<tr>
									<td>
										<p>
										<span class="avatar">{AVATAR_IMG}<br />{RANK_IMAGE}</span>
										<span class="block">{POSTER_RANK}</span>
										<span class="block">{L_JOINED}: {JOINED}</span>
										<span class="block">{L_TOTAL_POSTS}: {POSTS}</span>
										<span class="block">{L_LOCATION}: {LOCATION}</span>
										<span class="block">{L_OCCUPATION}: {OCCUPATION}</span>
										<span class="block">{L_INTERESTS}: {INTERESTS}</span>
										<span class="block">{L_MESSENGER}: {MSN_IMG}</span>
										<span class="block"><br />[{POST_PERCENT_STATS} / {POST_DAY_STATS}]</span>
										<span class="block"><a href="{U_SEARCH_USER}">{L_SEARCH_USER_POSTS}</a></span>
										</p>
									</td>
								</tr>
								<tr>
									<td class="icons">
										{PM_IMG}
										{EMAIL_IMG}
										{WWW_IMG}
										{AIM_IMG}
										{YIM_IMG}
										{ICQ_IMG}
									</td>
								</tr>
							</table></p>
						</div>
					</div>	
			</div>