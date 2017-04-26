<internapp>

	<h2><img src={ userPhotoURL }>
		Hi { user.displayName } - MEMBERS ONLY</h2>
	<p>This page is showing because user is defined through the auth callback.</p>

	<br>

	<button type="button" class="c-button--success u-xlarge c-button--rounded" name="button" onclick={ toggleeditor }>SHARE
	</button>
	<!-- {internshipList} -->
	<internitem each={ internshipList }> </internitem>

	<interneditor if={ addInternship }></interneditor>

	<script>
		this.dummy = [1,2,3];
		this.userPhotoURL = "http://placehold.it/50x50";

		console.log('internapp.tag');
		var that = this;

		this.internshipList = [];

		this.on('update', function() {
			console.log("update");
			console.log(that.internshipList);
		});

		var internRef = firebase.database().ref().child('internList');

		internRef.on('value', function (snapshot) {
			var data = snapshot.val();
			console.log("snapshot.val");
			console.log(snapshot.val());
			var dataAry = Object.values(data);
			that.internshipList = dataAry;
			console.log(typeof that.internshipList);
			that.update();
		});

		console.log('xxx');

		this.addInternship = false;

		this.toggleeditor = function (event) {
			this.addInternship = true;
		};

		this.closeeditor = function (event) {
			that.addInternship = false;
			that.update();
		};

		// this.internlist = []; //equvi to todosdata
	</script>

	<style>
		:scope {
			display: block;

		}

	</style>

</internapp>
