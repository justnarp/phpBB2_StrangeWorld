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

			<form method="post" action="{S_PRIVMSGS_ACTION}">

			<div id="forum">
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{POST_SUBJECT}</h1>
				<h2>{INBOX}
				&nbsp;&nbsp;&nbsp;
				{SENTBOX}
				&nbsp;&nbsp;&nbsp;
				{OUTBOX}
				&nbsp;&nbsp;&nbsp;
				{SAVEBOX}</h2>
				<h2><a href="javascript:;" onClick="switchMenu('show_messagefrom');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{MESSAGE_FROM}</a></h2>
					<div id="show_messagefrom" class="show_userdetails" style="display: none;">
						<div class="line_show">
							<table cellspacing="0" class="table_details">
								<tr>
									<td>
										<p>
										{L_POSTED}: {POST_DATE}
										</p>
									</td>
								</tr>
								<tr>
									<td class="icons">
										{QUOTE_PM_IMG}
										{EDIT_PM_IMG}
										{PROFILE_IMG}
										{PM_IMG}
										{EMAIL_IMG}
										{WWW_IMG}
										{AIM_IMG}
										{YIM_IMG}
										{MSN_IMG}
										{ICQ_IMG}
									</td>
								</tr>
							</table>
						</div>
					</div>
				<p>{MESSAGE}</p>
				<h2><input type="submit" name="save" value="{L_SAVE_MSG}" class="button" />
				<input type="submit" name="delete" value="{L_DELETE_MSG}" class="button" /></h2>
				<h2><br />{S_HIDDEN_FIELDS}
				<input type="button" tabindex="6" class="button"  name="postreply" value="{L_MESSAGE}" onclick="window.location.href='{U_POST_NEW_TOPIC}'" />
				</h2>

			</div>
</form>