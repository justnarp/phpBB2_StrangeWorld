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

			<form action="{S_GROUPCP_ACTION}" method="post">

			<div id="forum">
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_GROUP_INFORMATION}</h1>
				<h2>{GROUP_NAME}</h2>
				<p>{GROUP_DESC}</p>
				<h2>{L_GROUP_MEMBERSHIP}</h2>
				<p>{GROUP_DETAILS}</p>
				<!-- BEGIN switch_subscribe_group_input -->
				<p><input class="button" type="submit" name="joingroup" value="{L_JOIN_GROUP}" /></p>
				<!-- END switch_subscribe_group_input -->
				<!-- BEGIN switch_unsubscribe_group_input -->
				<p><input class="button" type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" /></p>
				<!-- END switch_unsubscribe_group_input -->
				<!-- BEGIN switch_mod_option -->
				<h2>{L_GROUP_TYPE}</h2>
				<p><input type="radio" name="group_type" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} class="radio" /> {L_GROUP_OPEN}
				&nbsp;&nbsp;&nbsp;
				<input type="radio" name="group_type" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} class="radio" /> {L_GROUP_CLOSED}
				&nbsp;&nbsp;&nbsp;
				<input type="radio" name="group_type" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} class="radio" /> {L_GROUP_HIDDEN}
				<br /><input class="button" type="submit" name="groupstatus" value="{L_UPDATE}" /></p>
				<!-- END switch_mod_option -->
			{S_HIDDEN_FIELDS}
			</form>

			<form action="{S_GROUPCP_ACTION}" method="post" name="post">
				<h2>{L_GROUP_MODERATOR}</h2>
				<p><a href="{U_MOD_VIEWPROFILE}">{MOD_USERNAME}</a></p>
				<h2>{L_GROUP_MEMBERS}</h2>
				<!-- BEGIN member_row -->
				<p>
				<!-- BEGIN switch_mod_option -->
				<input type="checkbox" name="members[]" value="{member_row.USER_ID}" class="radio" /> 
				<!-- END switch_mod_option -->
				<a href="{member_row.U_VIEWPROFILE}">{member_row.USERNAME}</a></p>
				<!-- END member_row -->
				<!-- BEGIN switch_no_members -->
				<p>{L_NO_MEMBERS}</p>
				<!-- END switch_no_members -->
				<!-- BEGIN switch_hidden_group -->
				<p>{L_HIDDEN_MEMBERS}</p>
				<!-- END switch_hidden_group -->
				<p>
				<!-- BEGIN switch_mod_option -->
				<input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="button" />
				<!-- END switch_mod_option -->
				</p>
				{PENDING_USER_BOX}
				<!-- BEGIN switch_mod_option -->
				<h2>{L_ADD_MEMBER}</h2>
				<p><input type="text" class="post postshort" name="username" maxlength="50" /><br />
				<input type="submit" name="add" value="{L_ADD_MEMBER}" class="button" />
				<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="button" onClick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></p>
				<!-- END switch_mod_option -->
				<h2>{PAGE_NUMBER}<br />{PAGINATION}</h2>
			
			</div>
			{S_HIDDEN_FIELDS}
			</form>