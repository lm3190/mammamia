<searchbar>

  <input type="text" id="myInput" onkeyup= { search } placeholder="Search for positions..">

  <table id="myTable">
    <tr class="header">
      <th style="width:40%;">Position</th>
      <th style="width:20%;">Company</th>
      <th style="width:40%;">Dates</th>
    </tr>
    <tr>
      <td>{internPosition}</td>
      <td>{internCompany}</td>
      <td>{internDates}</td>
    </tr>
  </table>


<%--
  <div id="myModal" ref="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <searcheditor></searcheditor>
      </div>
    </div>
  </div>

  <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">ADD INTERNSHIP</button> --%>



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




  //Search Bar function
  this.search = function(event) {
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
