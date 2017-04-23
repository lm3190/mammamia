<searchbar>

  <input type="text" id="myInput" onkeyup= { searchInternship } placeholder="Search for positions..">

  <table id="myTable">
    <tr class="header">
      <th style="width:40%;">Position</th>
      <th style="width:20%;">Company</th>
      <th style="width:40%;">Dates</th>
    </tr>
  </table>
  <button type="button" name="Add" onclick={ toggleEditor }>ADD INTERNSHIP</button>

<div class="row">
<input type="text" ref="positionIntern" placeholder="Enter position" value="" class="col-md-4" >
<input type="text" ref="companyIntern" placeholder="Enter company" value="" class="col-md-4" >
  <input type="text" ref="internDate" placeholder="Enter length" value="" class="col-md-4" >

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


  //Search Bar function
  this.searchInternship = function(event) {
    // Declare variables
    var input, filter, table, tr, td, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    table = document.getElementById("myTable");
    tr = table.getElementsByTagName("tr");

    // Loop through all table rows, and hide those who don't match the search query
    for (i = 0; i < tr.length; i++) {
      td = tr[i].getElementsByTagName("td")[0];
      if (td) {
        if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
          tr[i].style.display = "";
        } else {
          tr[i].style.display = "none";
        }
      }
    }
  }

  console.log(this);

</script>
<style>
  :scope {
    display: block;
    background: #fc8555;
    padding: 50px;
    margin: 50px;
  }
</style>

</searchbar>
