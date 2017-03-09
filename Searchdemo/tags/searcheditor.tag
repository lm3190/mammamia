<searcheditor>

	<div class="modal-header">
		<h3>Please add your internship</h3>
	</div>
	<div class="modal-body">
		<table id="myTable">
			<tr class="header">
				<th style="width:40%;">Position</th>
				<th style="width:20%;">Company</th>
				<th style="width:40%;">Dates</th>
			</tr>
			<tr>
				<td>
					<input type="text" ref="positionIntern" placeholder="Enter position" value="" class="col-md-12">
				</td>
				<td>
					<input type="text" ref="companyIntern" placeholder="Enter company" value="" class="col-md-12">
				</td>
				<td>
					<input type="text" ref="internTime" placeholder="Enter length" value="" class="col-md-12">
				</td>
			</tr>
		</table>

	</div>
</div>
<div class="modal-footer">
	<button class="btn btn-primary" type="button" onclick={ addinternship }>Submit</button>
	<button class="btn btn-danger" type="button" onclick={ parent.closeEditor }>CANCEL</button>
</div>

<script>
console.log(this);

this.addinternship = function (event) {
	var newInternship = {
		internPosition: this.refs.positionIntern.value,
		internCompany: this.refs.companyIntern.value,
		internDates: this.refs.internTime.value,
	};

	this.parent.internList.push(newInternship);

	// this.parent.update();
	this.parent.closeEditor();
};

console.log(this);
</script>

<style>
	:scope #myModal {
		display: block;
		color: #173e43;
		background-color: #148F77;
		padding: 50px;
		margin: 50px;
	};
</style>
</searcheditor>
