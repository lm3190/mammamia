<internitem>
	<div class="container-fluid">
		<div class="row">
			<pre> Author: { author } <br><strong> Position: </strong> { internPosition } <br><strong> Company: </strong> { internCompany } <br><strong> Length of Time at Internship: </strong> { internLength } <br><strong> Comments:</strong> { internComments } <br><strong> Skills: </strong> { internSkills }
				<star></star> <star></star> <star></star> <star></star> <star></star><!--NEW!!! should this go somewhere else?? why does it keep posting the same comments for each posting-->
				<comment-editor postid={ id }></comment-editor>
				<comments-mine postid={ id }></comments-mine>
				<div class="button">
					<button class="btn btn-mini btn-danger"  onclick={ deletePost }>DELETE EXPERIENCE</button>
				</div>
			 </pre>

		</div>
	</div>


	<script>
	// console.log('xxx');
	//trying to add comment box here - not sure if it's in the correct tag
	var that = this;
	// this.internshipList = [];

	var database = firebase.database();

	this.greeting = "Bye!";

//event.item is referring to the item object that is within the event function we're calling - then we delete the post by referring to the key/id that is created when we post the experience
	this.deletePost = function(event){
		console.log(event);
		var internPostID = event.item.id;
		var internItemRef = database.ref('internList/' + internPostID);

		internItemRef.remove();
	}

	</script>

	<style>

		:scope pre {

			font-family: 'Oswald', sans-serif;
			display: block;

			margin: 20px;
			padding: 10px;
			border: 5px solid grey;
		}

		.button {
			margin-top: -7%;
			margin-bottom: -5%;
			text-align: right;
		}

	</style>
</internitem>
