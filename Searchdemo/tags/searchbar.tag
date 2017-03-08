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

<script>

console.log(this);


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
