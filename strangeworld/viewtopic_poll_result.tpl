	<h2>{POLL_QUESTION}</h2>
	<p>
		<!-- BEGIN poll_option -->
		<br />{poll_option.POLL_OPTION_CAPTION}<br />
			<table cellspacing="0" cellpadding="0" border="0">
				<tr> 
					<td><img src="templates/strangeworld/images/vote_lcap.gif" width="4" alt="" height="12" /></td>
					<td><img src="{poll_option.POLL_OPTION_IMG}" width="{poll_option.POLL_OPTION_IMG_WIDTH}" height="12" alt="{poll_option.POLL_OPTION_PERCENT}" /></td>
					<td><img src="templates/strangeworld/images/vote_rcap.gif" width="4" alt="" height="12" /></td>
					<td><p>&nbsp;&nbsp;{poll_option.POLL_OPTION_PERCENT}</p></td>
					<td><p>&nbsp;&nbsp;[ {poll_option.POLL_OPTION_RESULT} ]</p></td>
				</tr>
			</table>
		<br />
		<!-- END poll_option -->
		{L_TOTAL_VOTES} : {TOTAL_VOTES}
		<br /><br />
	</p>