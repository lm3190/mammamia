<comments-general>

	<div class="comment" each={ generalComments }>
		<button class="btn btn-mini btn-danger" onclick={ parent.deleteComment }>DELETE</button>
		<!-- <button class="btn btn-mini {btn-success:!public, btn-warning:public}" onclick={ parent.togglePublic }>{ public ? "UNPUBLISH" : "PUBLISH"}</button> -->
		<!-- <strong>{ user.displayName }</strong> : -->
		&nbsp;&nbsp;<span>{ message }</span>
	</div>

	<script>
		var that = this;
		this.generalComments = [];

		var database = firebase.database();
		var generalCommentsRef = database.ref('comments/' + this.opts.postid);

		//original code
		//var myCommentsRef = database.ref('comments/users/' + user.uid);

		generalCommentsRef.on('value', function(snapshot) {
			var commentsData = snapshot.val();

			// commentsData could be null (no results), then we cant get values -> error
			if (commentsData) {
				that.generalComments = Object.values(commentsData);
			} else {
				that.generalComments = [];
			}
			that.update();
		});

//Publish/Unpublish button - not necessary now
		// togglePublic(event) {
		// 	var comment = event.item;
		// 	comment.public = !comment.public;
		// 	comment.modifiedAt = firebase.database.ServerValue.TIMESTAMP;
		//
		// 	var updates = {};
		//
		// 	// Look at what this does to the Data architecture on the DB.
		// 	// What does toggling public do with regard to comments?
		// 	if (comment.public) {
		// 		updates['public/' + comment.id] = comment;
		// 		updates['users/' + user.uid + '/' + comment.id] = comment;
		// 	} else {
		// 		updates['public/' + comment.id] = null;
		// 		updates['users/' + user.uid + '/' + comment.id] = comment;
		// 	}
		//
		// 	// One call to write to multiple locations
		// 	database.ref('comments').update(updates);
		// }

		this.deleteComment = function(event) {
			var comment = event.item;

			console.log(comment);

			var updates = {};
			//original public & private user code
			//updates['public/' + comment.id] = null;
			//updates['users/' + user.uid + '/' + comment.id] = null;
			updates[that.opts.postid + '/' + comment.id] = null;

			console.log(updates);

			database.ref('comments').update(updates);
		};

		this.on('unmount', function(event) {
		  generalCommentsRef.off('value');
		});

	</script>

	<style>
		:scope {
			display: block;
		}
		form {
			padding-bottom: 15px;
		}
		.comment {
			background-color: #F5F5F5;
			padding: 15px;
		}
		.comment:nth-child(even) {
			background-color: #DDDDDD;
		}
	</style>
</comments-general>
