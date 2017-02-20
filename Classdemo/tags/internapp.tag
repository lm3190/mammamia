<internapp>

	<button type="button" class="btn btn-success" name="button" onclick={ toggleEditor }>SHARE</button>

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
