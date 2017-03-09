<internapp>

		<h3>Share your experience:</h3>
	<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal" onclick={ toggleEditor }>SHARE</button>


	<div class="intern-list">
		<internitem each={ internList }></internitem>
	</div>

	<interneditor if={ creatingInternship }></interneditor>

	<script>
		// console.log(this);
		var that = this;

		this.creatingInternship = false;

		this.toggleEditor = function(event) {
		  this.creatingInternship = true;
		};

		this.closeEditor = function(event) {
		  that.creatingInternship = false;
			that.update();
		};

		addItem(event){
			var newTask = {};
			if (event.which === 13) {
				newTask.task = event.target.value;	// Grab the user task value
				newTask.done = false;

				this.fakeData.push(newTask);	// Pushes new task item to the fakeData list

				event.target.value = "";	// RESET INPUT
				event.target.focus();			// FOCUS BACK ON INPUT


		var key= firebase.database().ref('todo').push().key;
		firebase.database().ref('todos/' + key).set(newTask);
		}
		}
		removeItems(event){
			this.fakeData = this.fakeData.filter(function(item) {
				return !item.done;
			});
		}

		onlyDone(item) {	// Iterator function for the Array.filter(iterator) method...
			return item.done === true;
		}


				this.internList = [{
					internPosition: "UX Intern",
					internCompany: "Google",
					internLength: "Two-months",
					internDates: "Jan-Mar 2017",
					internComments: "Great experience, got a job",

				},{
					internPosition: "Instructional Design Intern",
					internCompany: "The Lamp",
					internLength: "Two-months",
					internDates: "Jan-Mar 2017",
					internComments: "Learned a lot",
				},{
					internPosition: "Graphic Design Intern",
					internCompany: "X Company",
					internLength: "Four-months",
					internDates: "Jan-Apr 2016",
					internComments: "Got a lot of coffee and donuts",
				}];

	</script>

	<style>
		:scope {
			display: block;

		}

	</style>


</internapp>
