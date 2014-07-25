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
			
			<form method="post" action="{S_SPLIT_ACTION}">
			
			<div id="forum">
			
				<h1><span class="h1_back"><a href="{U_INDEX}"><img src="templates/strangeworld/images/backarrow.gif" alt="" /></a></span><a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h1>
				<h2>{L_SPLIT_TOPIC}</h2>
				<p>{L_SPLIT_TOPIC_EXPLAIN}</p>
				<h2>{L_SPLIT_SUBJECT}</h2>
				<p><input class="post" type="text" maxlength="60" name="subject" /></p>
				<h2>{L_SPLIT_FORUM}</h2>
				<p>{S_FORUM_SELECT}</p>
				<h2><br />
				<input class="button" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
				<input class="button" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" /><br /><br />
				</h2>
				<!-- BEGIN postrow -->
				<h2>{postrow.S_SPLIT_CHECKBOX} {postrow.POSTER_NAME}</h2>
				<p>{postrow.MESSAGE}</p>
				<!-- END postrow -->
				<h2>{S_HIDDEN_FIELDS}<br />
				<input class="button" type="submit" name="split_type_all" value="{L_SPLIT_POSTS}" />
				<input class="button" type="submit" name="split_type_beyond" value="{L_SPLIT_AFTER}" />
				</h2>
			</div>
</form>