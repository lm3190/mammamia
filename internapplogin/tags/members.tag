<members>
	<h2><img src={ userPhotoURL }> Hi { user.displayName } - MEMBERS ONLY</h2>
	<p>This page is showing because user is defined through the auth callback.</p>

	<br>
	<interneditor></interneditor>
	<internapp></internapp>

	<script>
		var that = this;
		this.userPhotoURL = "http://placehold.it/50x50";
	</script>

	<style>
		:scope {
			display: block;
		}
	</style>
</members>
