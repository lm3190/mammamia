<internpostapp>



<br>

	<button type="button" class="btn btn-success" name="button" onclick={ toggleeditor }>POST INTERNSHIP
	</button>

	<table class="c-table c-table--clickable">
		<caption class="c-table__caption"></caption>
		<thead class="c-table__head">
		<tr class="c-table__row c-table__row--heading">
			<th class="c-table__cell">Position/Title</th>
			<th class="c-table__cell">Company</th>
			<th class="c-table__cell">More Info</th>
		</tr>
		</thead>
	</table>

	<internpostitem each={ internshipList }></internpostitem>

	<internposteditor if={ addInternship }></internposteditor>

	<script>
		this.userPhotoURL = "http://placehold.it/50x50";

		console.log('internpostapp.tag');
		var that = this;

		this.internshipList = [];

		var internRef = firebase.database().ref().child('internPosting');

		internRef.on('value', function(snapshot) {
		  var data = snapshot.val();
			console.log("snapshot.val");
			console.log(snapshot.val());
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

</internpostapp>
