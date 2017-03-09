<searchbar>

  <input type="text" id="myInput" onkeyup= { searchInternship } placeholder="Search for positions..">

  <table id="myTable">
    <tr class="header">
      <th style="width:40%;">Position</th>
      <th style="width:20%;">Company</th>
      <th style="width:40%;">Dates</th>
    </tr>
    <tr>
      <td>UX Intern</td>
      <td>Google</td>
      <td>Jan-Mar 2017</td>
    </tr>
    <tr>
      <td>Instructional Design Intern</td>
      <td>The Lamp</td>
      <td>June-July 2017</td>
    </tr>
    <tr>
      <td>Graphic Design Intern</td>
      <td>La La Land Group</td>
      <td>August-September 2017</td>
    </tr>
    <tr>
      <td>Programming Intern</td>
      <td>Amazon</td>
      <td>September-December 2017</td>
    </tr>
  </table>

  <button type="button" name="Add" onclick={ toggleEditor }>Add Internship</button>

<script>

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
