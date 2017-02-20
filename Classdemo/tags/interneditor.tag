<interneditor>


<p>All your peers will benefit from your internship experience, so please, go ahead and
share it, thanks!<p>
<p>A virtual coffee or tea will be provided</p>
<p>Thanks for keeping this site running!</p>

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
</div>


<div>
  <label> How would you rate this internship?
<star></star>
<star></star>
<star></star>
<star></star>
<star></star>
  </label>
</div>

<button class="btn btn-success" type="button" onclick={ addinternship }>Submit</button>
<button class="btn btn-danger"type="button" onclick={ parent.closeEditor }>CANCEL</button>





<script>
		console.log(this);

	 this.addinternship = function(event) {
			var newInternship = {
			internPosition: this.refs.positionIntern.value,
				internCompany: this.refs.companyIntern.value,
		 		internLength: this.refs.internDate.value,
	       internDates: this.refs.internTime.value,
         internComments: this.refs.commentsIntern.value
		 	};


		 	this.parent.internList.push(newInternship);
		 	this.parent.update();
		 	this.parent.closeEditor();
		 };

     // Original
     this.star = {
       imageURL: "http://www.clker.com/cliparts/D/5/P/w/5/a/white-star-md.png"
     };

  //OneClick
   this.changeStar = function(event){
     this.star = {
       imageURL: "https://img.clipartfest.com/fda90d1d445683b867351c046eb073e5_anarchy20clipart-light-pink-stars-clipart-on-transparent-background_298-285.png"
     }
   };

  //DoubleClick
   this.undoStar = function(event){
     this.star = {
       imageURL: "http://www.clker.com/cliparts/D/5/P/w/5/a/white-star-md.png"
     }
   };

  console.log(this);


</script>




<style>
  :scope {
    display: block;
    background: powderblue;
    padding: 50px;
    margin: 50px;
  }


</style>
</interneditor>
