<interneditor>

  <div id="myModal" class="modal fade" role="dialog">
	  <div class="modal-dialog-sm">

<h3>All your peers will benefit from your internship experience, so please, go ahead and
share it, thanks!</h3>
<h3>A virtual coffee or tea will be provided</h3>
<h3>Thanks for keeping this site running!</h3>

<div class="row">
<input type="text" ref="positionIntern" placeholder="Enter position" value="" class="col-md-6" >
</div> <br>
<div class="row">
<input type="text" ref="companyIntern" placeholder="Enter company" value="" class="col-md-6" ></div><br>
<div class="row">
  <input type="text" ref="internDate" placeholder="Enter length" value="" class="col-md-4" ></div><br>
  <div class="row">
<input type="text" ref="internTime" placeholder="Enter when" value="" class="col-md-4" ></div><br>
<textarea ref="commentsIntern" placeholder=" Your comments here" value="" rows="8" cols="80" ></textarea>
<div class="row">
  <h4> How would you rate this internship?
<star></star>
<star></star>
<star></star>
<star></star>
<star></star>
</h4>
</div>

<button class="btn btn-primary" type="button" onclick={ addinternship }>Submit</button>
<button class="btn btn-danger"type="button" onclick={ parent.closeEditor }>CANCEL</button>


</div>
</div>


<script>
		console.log(this);

	 this.addinternship = function(event) {
			var newInternship = {
			internPosition: this.refs.positionIntern.value,
				internCompany: this.refs.companyIntern.value,
		 		internLength: this.refs.internDate.value,
	       internDates: this.refs.internTime.value,
         internComments: this.refs.commentsIntern.value,
		 	};


		 	this.parent.internList.push(newInternship);
		 	this.parent.update();
		 	this.parent.closeEditor();
		 };


  console.log(this);


</script>




<style>
  :scope
   #myModal {
    display: block;
    color: #173e43;
    background-color: #148F77;
    padding: 50px;
    margin: 50px;
  };




</style>
</interneditor>
