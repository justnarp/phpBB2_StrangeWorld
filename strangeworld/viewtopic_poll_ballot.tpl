<form method="POST" action="{S_POLL_ACTION}">
	<h2>{POLL_QUESTION}</h2>
	<p>
		<!-- BEGIN poll_option -->
		<br />{poll_option.POLL_OPTION_CAPTION}<br />
		<input type="radio" name="vote_id" value="{poll_option.POLL_OPTION_ID}" class="radio" /><br />
		<!-- END poll_option -->
	</p>
	<h2><input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="button" />
	<input type="button" class="button"  name="viewresults" value="{L_VIEW_RESULTS}" onclick="window.location.href='{U_VIEW_RESULTS}'" /><br /><br /></h2>
	{S_HIDDEN_FIELDS}
</form>