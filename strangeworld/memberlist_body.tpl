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
			
			<form method="post" action="{S_MODE_ACTION}">
			
			<div id="forum">
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{PAGE_TITLE}</h1>
				<h2><a href="javascript:;" tabindex="4" onClick="switchMenu('show_sortmethod');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_SELECT_SORT_METHOD}</a></h2>

					<div id="show_sortmethod" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<p>{S_MODE_SELECT}
							{S_ORDER_SELECT}<br />
							<input type="submit" name="submit" value="{L_SUBMIT}" class="button" /></p>
						</div>
					</div>

				<h2>{L_USERNAME}</h2>
				<!-- BEGIN memberrow -->
				<p>{memberrow.ROW_NUMBER}. <a href="javascript:;" tabindex="4" onClick="switchMenu('show_user_{memberrow.ROW_NUMBER}');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{memberrow.USERNAME}</a></p>
					<div id="show_user_{memberrow.ROW_NUMBER}" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<h2 style="padding-top: 0;">{L_USERNAME}</h2>
							<p><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></p>
							<h2>{L_POSTS}</h2>
							<p>{memberrow.POSTS}</p>
							<h2>{L_JOINED}</h2>
							<p>{memberrow.JOINED}</p>
							<p><br /><span class="memberlist_icons">{memberrow.PM_IMG}
							{memberrow.EMAIL_IMG}
							{memberrow.WWW_IMG}</span></p>
						</div>
					</div>
				<!-- END memberrow -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
			
			</div>
</form>