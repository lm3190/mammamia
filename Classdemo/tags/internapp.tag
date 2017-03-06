<internapp>

		<h3>Share your experience:</h3>
	<button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal">SHARE</button>


	<div class="intern-list">
		<internitem each={ internList }></internitem>
	</div>

	<div id="myModal" ref="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<interneditor></interneditor>
			</div>
		</div>
	</div>
	<!-- <interneditor if={ creatingInternship }></interneditor> -->

	<script>
		// console.log(this);
		var that = this;

		this.creatingInternship = false;

		this.toggleEditor = function(event) {
		  this.creatingInternship = true;
		};

		this.closeEditor = function(event) {
		  // that.creatingInternship = false;
			$(this.refs.myModal).modal('hide');

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
