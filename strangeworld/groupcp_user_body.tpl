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
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_GROUP_MEMBERSHIP_DETAILS}</h1>
				<!-- BEGIN switch_groups_joined -->
				<!-- BEGIN switch_groups_member -->
				<h2>{L_YOU_BELONG_GROUPS}</h2>
				<p><form method="get" action="{S_USERGROUP_ACTION}">
				{GROUP_MEMBER_SELECT}
				<br /><input type="submit" value="{L_VIEW_INFORMATION}" class="button" />
				{S_HIDDEN_FIELDS}</form></p>
				<!-- END switch_groups_member -->
				<!-- BEGIN switch_groups_pending -->
				<h2>{L_PENDING_GROUPS}</h2>
				<p><form method="get" action="{S_USERGROUP_ACTION}">
				{GROUP_PENDING_SELECT}<br />
				<input type="submit" value="{L_VIEW_INFORMATION}" class="button" />
				{S_HIDDEN_FIELDS}</form></p>
				<!-- END switch_groups_pending -->
				<!-- END switch_groups_joined -->
				<!-- BEGIN switch_groups_remaining -->
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_JOIN_A_GROUP}</h1>
				<h2>{L_SELECT_A_GROUP}</h2>
				<p><form method="get" action="{S_USERGROUP_ACTION}">
				{GROUP_LIST_SELECT}<br />
				<input type="submit" value="{L_VIEW_INFORMATION}" class="button" />{S_HIDDEN_FIELDS}
				</form></p>
				<!-- END switch_groups_remaining -->
			</div>