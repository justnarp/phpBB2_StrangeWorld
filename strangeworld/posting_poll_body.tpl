						<div class="line_show">
							<table cellspacing="0" class="table_details">
								<tr>
									<td>
										<p>{L_ADD_POLL_EXPLAIN}</p>
										<h2>{L_POLL_QUESTION}</h2>
										<p><input tabindex="30" type="text" name="poll_title" maxlength="255" class="post postshorter" value="{POLL_TITLE}" /></p>
										<!-- BEGIN poll_option_rows -->
										<h2>{L_POLL_OPTION}</h2>
										<p><input type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" class="post postshorter" maxlength="255" value="{poll_option_rows.POLL_OPTION}" /><br />
										<input type="submit" name="edit_poll_option" value="{L_UPDATE_OPTION}" class="button" />
										<input type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" class="button" /></p>
										<!-- END poll_option_rows -->
										<h2>{L_POLL_OPTION}</h2>
										<p><input type="text" tabindex="31" name="add_poll_option_text" maxlength="255" class="post postshorter" value="{ADD_POLL_OPTION}" /><br />
										<input type="submit" tabindex="32" name="add_poll_option" value="{L_ADD_OPTION}" class="button" /></p>
										<h2>{L_POLL_LENGTH}</h2>
										<p><input type="text" tabindex="33" name="poll_length" maxlength="3" class="post" style="width: 35px;" value="{POLL_LENGTH}" />
										{L_DAYS}
										{L_POLL_LENGTH_EXPLAIN}</p>
										<!-- BEGIN switch_poll_delete_toggle -->
										<p><br /><input type="checkbox" tabindex="34" name="poll_delete" class="radio" /> {L_POLL_DELETE}</p>
										<!-- END switch_poll_delete_toggle -->
									</td>
								</tr>
							</table>
						</div>