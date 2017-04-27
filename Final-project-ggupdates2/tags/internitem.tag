<internitem>

	<div class="container-fluid">
		<div class="row">
			<pre> Author: { author } <br><strong> Position: </strong> { internPosition } <br> <strong> Company: </strong> { internCompany } <br><strong>  Length of Time at Internship: </strong> { internLength } <br> <strong> Comments:</strong> { internComments } <br> <strong> Skills: </strong> { internSkills }
				<!--NEW!!! should this go somewhere else?? why does it keep posting the same comments for each posting-->
				<comment-editor></comment-editor>
				<comments-mine></comments-mine>
			 </pre>

			<pre><button class="btn btn-mini btn-danger" onclick={ deletePost }>DELETE EXPERIENCE</button></pre>
		</div>
		<div class="checkbox">

	</div>
	</div>


	<script>
	console.log('xxx');
	//trying to add comment box here - not sure if it's in the correct tag
	var that = this;
	this.internshipList = [];

	var database = firebase.database();
	//not sure about the internList/users/ reference point - should it be something else?
	var internRef = database.ref('internList/users/' + user.uid);

	internRef.on('value', function(snapshot) {
		var experienceData = snapshot.val();

		// commentsData could be null (no results), then we cant get values -> error
		if (experienceData) {
			that.internshipList = Object.values(experienceData);
		} else {
			that.internshipList = [];
		}
		that.update();
	});
	//deletePost
// this.deletePost = function(event) {
// 		var newInternship = event.item;
//
// 		console.log(newInternship);
//
// 		var updates = {};
// 		updates['public/' + newInternship.id] = null;
// 		updates['users/' + user.uid + '/' + newInternship.id] = null;
//
// 		database.ref('internList').update(updates);
// 	};
//
// 	this.on('unmount', function(event) {
// 		internRef.off('value');
// 	});

	</script>

	<style>

		:scope pre {

			font-family: 'Oswald', sans-serif;
			display: block;

			margin: 20px;
			padding: 10px;
			border: 5px solid grey;
		}

	</style>
</internitem>
