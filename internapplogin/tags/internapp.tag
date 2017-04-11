<internapp>

	<button type="button" class="btn btn-success" name="button" onclick={ toggleeditor }>SHARE
	</button>

	<internitem each={ internshipList }></internitem>

	<interneditor if={ addInternship }></interneditor>

	<script>
		console.log('internapp.tag');
		var that = this;

		this.internshipList = [];

		var internRef = firebase.database().ref('/internList');

		internRef.once('value', function(snapshot) {
		  var data = snapshot.val();
			var dataAry = Object.values(data);
			that.internshipList = dataAry;
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
