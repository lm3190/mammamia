<searchbartemplate>

	<searchbar each={ internList }></searchbar>

	<%-- <div id="myModal" ref="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<searcheditor></searcheditor>
			</div>
		</div>
	</div> --%>

	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">ADD INTERNSHIP</button>



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
			internDates: "Jan-Mar 2017",
		},{
			internPosition: "Instructional Design Intern",
			internCompany: "The Lamp",
			internDates: "Jan-Mar 2017",
		},{
			internPosition: "Graphic Design Intern",
			internCompany: "X Company",
			internDates: "Jan-Apr 2016",
		}];

	</script>

	<style>
		:scope {
			display: inline;

		}

	</style>


</searchbartemplate>
