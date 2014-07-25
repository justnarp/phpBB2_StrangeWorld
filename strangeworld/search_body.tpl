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

<form action="{S_SEARCH_ACTION}" method="POST">

			<div id="forum">
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_SEARCH_QUERY}</h1>
				<h2><a href="javascript:;" tabindex="2" onClick="switchMenu('show_searchoptions');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_SEARCH_OPTIONS}</a></h2>
					<div id="show_searchoptions" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<h2 style="padding-top: 0;">{L_FORUM}</h2>
							<p><select name="search_forum">{S_FORUM_OPTIONS}</select></p>
							<h2>{L_SEARCH_PREVIOUS}</h2>
							<p><select name="search_time">{S_TIME_OPTIONS}</select></p>
							<p><input type="radio" name="search_fields" value="all" checked="checked" class="radio" /> {L_SEARCH_MESSAGE_TITLE}</p>
							<p><input type="radio" name="search_fields" value="msgonly" class="radio" /> {L_SEARCH_MESSAGE_ONLY}</p>
							<h2>{L_CATEGORY}</h2>
							<p><select name="search_cat">{S_CATEGORY_OPTIONS}</select></p>
							<h2>{L_SORT_BY}</h2>
							<p><select name="sort_by">{S_SORT_OPTIONS}</select></p>
							<p><input type="radio" name="sort_dir" value="ASC" class="radio" /> {L_SORT_ASCENDING}</p>
							<p><input type="radio" name="sort_dir" value="DESC" checked="checked" class="radio" /> {L_SORT_DESCENDING}</p>
							<h2>{L_RETURN_FIRST}</h2>
							<p><select name="return_chars">{S_CHARACTER_OPTIONS}</select> {L_CHARACTERS}</p>
						</div>
					</div>

				<h2>{L_SEARCH_KEYWORDS}</h2>
				<p>{L_SEARCH_KEYWORDS_EXPLAIN}</p>
				<p><input type="text" class="post" name="search_keywords" /></p>
				<p><input type="radio" name="search_terms" value="any" checked="checked" class="radio" /> {L_SEARCH_ANY_TERMS}</p>
				<p><input type="radio" name="search_terms" value="all" class="radio" /> {L_SEARCH_ALL_TERMS}</p>
				<h2>{L_SEARCH_AUTHOR}</h2>
				<p>{L_SEARCH_AUTHOR_EXPLAIN}</p>
				<p><input type="text" class="post" name="search_author" /></p>
				<h2>{L_DISPLAY_RESULTS}</h2>
				<p><input type="radio" name="show_results" value="posts" class="radio" /> {L_POSTS}</p>
				<p><input type="radio" name="show_results" value="topics" checked="checked" class="radio" /> {L_TOPICS}</p>
				<h2><br />
				{S_HIDDEN_FIELDS}<input class="button" type="submit" value="{L_SEARCH}" />
				</h2>
			</div>
</form>