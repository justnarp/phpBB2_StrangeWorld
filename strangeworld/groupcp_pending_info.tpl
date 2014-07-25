<h2>{L_PENDING_MEMBERS}</h2>
<!-- BEGIN pending_members_row -->
<p>
<input type="checkbox" name="pending_members[]" value="{pending_members_row.USER_ID}" checked="checked" class="radio" />
<a href="{pending_members_row.U_VIEWPROFILE}">{pending_members_row.USERNAME}</a></p>
<!-- END pending_members_row -->
<p><input type="submit" name="approve" value="{L_APPROVE_SELECTED}" class="button" />
<input type="submit" name="deny" value="{L_DENY_SELECTED}" class="button" /></p>