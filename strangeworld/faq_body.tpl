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
			
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{L_FAQ_TITLE}</h1>
				<!-- BEGIN faq_block_link -->
				<h2>{faq_block_link.BLOCK_TITLE}</h2>
				<!-- BEGIN faq_row_link -->
				<p><a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a></p>
				<!-- END faq_row_link -->
				<!-- END faq_block_link -->
				
				<!-- BEGIN faq_block -->
				<h1><span class="h1_back"><img src="templates/strangeworld/images/backarrow_blank.gif" alt="" /></span>{faq_block.BLOCK_TITLE}</h1>
				<!-- BEGIN faq_row --> 
				<h2><a name="{faq_block.faq_row.U_FAQ_ID}"></a>{faq_block.faq_row.FAQ_QUESTION}</h2>
				<p>{faq_block.faq_row.FAQ_ANSWER}</p>
				<!-- END faq_row -->
				<!-- END faq_block -->
			</div>