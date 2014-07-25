
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

			<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">

			<div id="forum">
			
				<h1><span class="h1_back"><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_REGISTRATION_INFO}</h1>
				<h2><a href="javascript:;" tabindex="1" onClick="switchMenu('show_profileinfo');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_PROFILE_INFO}</a>
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:;" tabindex="2" onClick="switchMenu('show_preferences');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_PREFERENCES}</a>
				<!-- BEGIN switch_avatar_block -->
				&nbsp;&nbsp;&nbsp;
				<a href="javascript:;" tabindex="3" onClick="switchMenu('show_avatar');" onMouseOver="window.status=''; return true;" onMouseOut="window.status=''; return true;">{L_AVATAR_PANEL}</a>
				<!-- END switch_avatar_block -->
				{ERROR_BOX}
				</h2>
				
					<div id="show_profileinfo" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<p>{L_PROFILE_INFO_NOTICE}</p>
							<h2>{L_ICQ_NUMBER}</h2>
							<p><input type="text" name="icq" class="post postshort" maxlength="15" value="{ICQ}" tabindex="10" /></p>
							<h2>{L_AIM}</h2>
							<p><input type="text" class="post postshorter" name="aim" maxlength="255" value="{AIM}" tabindex="11" /></p>
							<h2>{L_MESSENGER}</h2>
							<p><input type="text" class="post postshorter" name="msn" maxlength="255" value="{MSN}" tabindex="12" /></p>
							<h2>{L_YAHOO}</h2>
							<p><input type="text" class="post postshorter" name="yim" maxlength="255" value="{YIM}" tabindex="13" /></p>
							<h2>{L_WEBSITE}</h2>
							<p><input type="text" class="post postshorter" name="website" maxlength="255" value="{WEBSITE}" tabindex="14" /></p>
							<h2>{L_LOCATION}</h2>
							<p><input type="text" class="post postshorter" name="location" maxlength="100" value="{LOCATION}" tabindex="15" /></p>
							<h2>{L_OCCUPATION}</h2>
							<p><input type="text" class="post postshorter" name="occupation" maxlength="100" value="{OCCUPATION}" tabindex="16" /></p>
							<h2>{L_INTERESTS}</h2>
							<p><input type="text" class="post postshorter" name="interests" maxlength="150" value="{INTERESTS}" tabindex="17" /></p>
							<h2>{L_SIGNATURE}</h2>
							<p>{L_SIGNATURE_EXPLAIN}</p>
							<p><textarea name="signature" class="post postshorter" style="height: 53px;" tabindex="18">{SIGNATURE}</textarea></p>
						</div>
					</div>

					<div id="show_preferences" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<h2 style="padding-top: 0;">{L_PUBLIC_VIEW_EMAIL}</h2>
							<p><input type="radio" name="viewemail" value="1" {VIEW_EMAIL_YES} class="radio" tabindex="19" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="viewemail" value="0" {VIEW_EMAIL_NO} class="radio" tabindex="20" /> {L_NO}
							</p>
							<h2>{L_HIDE_USER}</h2>
							<p><input type="radio" name="hideonline" value="1" {HIDE_USER_YES} class="radio" tabindex="21" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="hideonline" value="0" {HIDE_USER_NO} class="radio" tabindex="22" /> {L_NO}
							</p>
							<h2>{L_NOTIFY_ON_REPLY}</h2>
							<p>{L_NOTIFY_ON_REPLY_EXPLAIN}</p>
							<p><input type="radio" name="notifyreply" value="1" {NOTIFY_REPLY_YES} class="radio" tabindex="23" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="notifyreply" value="0" {NOTIFY_REPLY_NO} class="radio" tabindex="24" /> {L_NO}
							</p>
							<h2>{L_NOTIFY_ON_PRIVMSG}</h2>
							<p><input type="radio" name="notifypm" value="1" {NOTIFY_PM_YES} class="radio" tabindex="25" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="notifypm" value="0" {NOTIFY_PM_NO} class="radio" tabindex="26" /> {L_NO}
							</p>
							<h2>{L_POPUP_ON_PRIVMSG}</h2>
							<p>{L_POPUP_ON_PRIVMSG_EXPLAIN}</p>
							<p><input type="radio" name="popup_pm" value="1" {POPUP_PM_YES} class="radio" tabindex="27" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="popup_pm" value="0" {POPUP_PM_NO} class="radio" tabindex="28" /> {L_NO}
							</p>
							<h2>{L_ALWAYS_ADD_SIGNATURE}</h2>
							<p><input type="radio" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES} class="radio" tabindex="29" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO} class="radio" tabindex="30" /> {L_NO}
							</p>
							<h2>{L_ALWAYS_ALLOW_BBCODE}</h2>
							<p><input type="radio" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES} class="radio" tabindex="31" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO} class="radio" tabindex="32" /> {L_NO}
							</p>
							<h2>{L_ALWAYS_ALLOW_HTML}</h2>
							<p><input type="radio" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES} class="radio" tabindex="33" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO} class="radio" tabindex="34" /> {L_NO}
							</p>
							<h2>{L_ALWAYS_ALLOW_SMILIES}</h2>
							<p><input type="radio" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES} class="radio" tabindex="35" /> {L_YES}
							&nbsp;&nbsp;&nbsp;
							<input type="radio" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO} class="radio" tabindex="36" /> {L_NO}
							</p>
							<h2>{L_BOARD_LANGUAGE}</h2>
							<p>{LANGUAGE_SELECT}</p>
							<h2>{L_BOARD_STYLE}</h2>
							<p>{STYLE_SELECT}</p>
							<h2>{L_TIMEZONE}</h2>
							<p>{TIMEZONE_SELECT}</p>
							<h2>{L_DATE_FORMAT}</h2>
							<p>{L_DATE_FORMAT_EXPLAIN}</p>
							<p><input type="text" name="dateformat" value="{DATE_FORMAT}" maxlength="14" class="post postshort" tabindex="40" /></p>
						</div>
					</div>

					<div id="show_avatar" class="show_userdetails" style="display: none;">
						<div class="line_show" style="padding: 10px;">
							<!-- BEGIN switch_avatar_block -->
							<p>{L_AVATAR_EXPLAIN}</p>
							<h2>{L_CURRENT_IMAGE}</h2>
							<p><input type="checkbox" name="avatardel" class="radio" tabindex="41" /> {L_DELETE_AVATAR}</p>
							<p><span class="avatar_profile">{AVATAR}</span></p>
							<!-- BEGIN switch_avatar_local_upload -->
							<h2>{L_UPLOAD_AVATAR_FILE}</h2>
							<p><input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" /><input type="file" name="avatar" class="post postshorter" tabindex="42" /></p>
							<!-- END switch_avatar_local_upload -->
							<!-- BEGIN switch_avatar_remote_upload -->
							<h2>{L_UPLOAD_AVATAR_URL}</h2>
							<p>{L_UPLOAD_AVATAR_URL_EXPLAIN}</p>
							<p><input type="text" name="avatarurl" class="post postshorter" tabindex="43" /></p>
							<!-- END switch_avatar_remote_upload -->
							<!-- BEGIN switch_avatar_remote_link -->
							<h2>{L_LINK_REMOTE_AVATAR}</h2>
							<p>{L_LINK_REMOTE_AVATAR_EXPLAIN}</p>
							<p><input type="text" name="avatarremoteurl" class="post postshorter" tabindex="44" /></p>
							<!-- END switch_avatar_remote_link -->
							<!-- BEGIN switch_avatar_local_gallery -->
							<h2>{L_AVATAR_GALLERY}</h2>
							<p><input type="submit" name="avatargallery" value="{L_SHOW_GALLERY}" class="button" tabindex="45" /></p>
							<!-- END switch_avatar_local_gallery -->
							<!-- END switch_avatar_block -->
						</div>
					</div>




				<p><br />{L_ITEMS_REQUIRED}</p>
				<!-- BEGIN switch_namechange_disallowed -->
				<h2>{L_USERNAME}</h2>
				<p><input type="hidden" name="username" value="{USERNAME}" />{USERNAME}</p>
				<!-- END switch_namechange_disallowed -->
				<!-- BEGIN switch_namechange_allowed -->
				<h2>{L_USERNAME} *</h2>
				<p><input type="text" class="post postshort" name="username" maxlength="25" value="{USERNAME}" tabindex="50" /></p>
				<!-- END switch_namechange_allowed -->
				<h2>{L_EMAIL_ADDRESS} *</h2>
				<p><input type="text" class="post" name="email" maxlength="255" value="{EMAIL}" tabindex="51" /></p>
				<!-- BEGIN switch_edit_profile -->
				<h2>{L_CURRENT_PASSWORD} *</h2>
				<p>{L_CONFIRM_PASSWORD_EXPLAIN}</p>
				<p><input type="password" class="post" name="cur_password" maxlength="32" value="{CUR_PASSWORD}" tabindex="52" /></p>
				<!-- END switch_edit_profile -->
				<h2>{L_NEW_PASSWORD} *</h2>
				<p>{L_PASSWORD_IF_CHANGED}</p>
				<p><input type="password" class="post" name="new_password" maxlength="32" value="{NEW_PASSWORD}" tabindex="53" /></p>
				<h2>{L_CONFIRM_PASSWORD} *</h2>
				<p>{L_PASSWORD_CONFIRM_IF_CHANGED}</p>
				<p><input type="password" class="post" name="password_confirm" maxlength="32" value="{PASSWORD_CONFIRM}" tabindex="54" /></p>
				<!-- Visual Confirmation -->
				<!-- BEGIN switch_confirm -->
				<h2>{L_CONFIRM_CODE} *</h2>
				<p>{L_CONFIRM_CODE_EXPLAIN}</p>
				<p style="margin: 3px 0;">{CONFIRM_IMG}</p>
				<p><input type="text" class="post postshort" name="confirm_code" maxlength="6" value="" tabindex="55" /></p>
				<!-- END switch_confirm -->
				<h2><br />
				<input type="submit" name="submit" value="{L_SUBMIT}" class="button" tabindex="56" />
				<input type="reset" value="{L_RESET}" name="reset" class="button" tabindex="57" />
				{S_HIDDEN_FIELDS}
				</h2>
			</div>
</form>