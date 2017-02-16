<enter>

<strong>Add your Internship Experience</strong>
<p>All your peers will benefit from your internship experience, so please, go ahead and
share it, thanks!<p>
<p>A virtual coffee or tea will be provided</p>
<p>Thanks for keeping this site running!</p>
<!--<div class= "main"> </div>-->
<div class="internshipExperience">
  <!-- ref or reference attribute is a quick way to "bookmark" an element so we
   can quickly access it in javascript later. -->
  <!-- E.g. HTML <img ref="xxx"/>  -->
  <!-- E.g. JS   this.refs.xxx points to the img tag prior -->
  <input type="text" ref="positionEl" placeholder="Enter position">
  <input type="text" ref="companyEl" placeholder="Enter company">
  <input type="text" ref="lengthEl" placeholder="Enter length">
  <input type="text" ref="whenEl" placeholder="Enter when">

  <button type="button" onclick= { addInternship }>Create</button>
</div>

<ol>
  <div show={ myInternships.length === 0 }>
    <p>NO INTERNSHIPS IN LIBRARY</p>
  </div>
  <li each={ myInternships }>
  { position }<em>at { company }</em> <em>for { length }</em><em>in {when}</em>
    <button type="button" onclick={ parent.remove }>Remove Internship</button>
  </li>
</ol>

<!-- CONSOLE DEMONSTRATION -->
{ console.log('C - PARENT TAG:', this); }
<virtual each={ myInternships }>
  { console.log('C - CHILD TAG:', this); }
</virtual>


 <script>
  this.myInternships = [{
    position: "instructional designer",
    company: "Google",
    length: "two months",
    when: "May 2017"
  },{
    position: "communications assistant",
    company: "TC",
    length: "four months",
    when: "June 2017"
  },{
    position: "technology and media assistant",
    company: "The Lamp",
    length: "six months",
    when: "Jan 2017"
  }];

  this.remove = function(event) {
    // console.log('EVENT:', event);
    // console.log('EVENT.ITEM', event.item);

    <!--In RiotJS, evnt dot item refers to the internship object of the child tag where the
    click evnt occured-->
    var internshipsObj = event.item;

    var index = this.myInternships.indexOf(internshipsObj);
    this.myInternships.splice(index, 1);
  };

  this.addInternship = function(event) {
    var position = this.refs.positionEl.value;
    var company = this.refs.companyEl.value;
    var length = this.refs.lengthEl.value;
    var when = this.refs.whenEl.value;
    var internships = {
      position: position,
      company: company,
      length: length,
      when: when
    };

    // We are adding a internship object to the source of truth array.
    this.myInternships.push(Internships);

    // RESET INPUTS
    this.refs.positionEl.value = "";
    this.refs.companyEl.value = "";
    this.refs.lengthEl.value = "";
    this.refs.whenEl.value = "";
  };


  // THIS data is garbage data, but included to show you how data associated with this parent tag, are inherited in the children. See the children tags of the each, in the console.
  <!--this.parentTagDataA = "Data AAA";
  this.parentTagDataB = 123456;
  this.parentTagDataC = false;
  this.parentTagDataD = { atomicNumber: 96 };
  this.parentTagDataE = ["baseball", "soccer", "karate"];
  this.parentFuncA = function() {
    alert('This is a function defined in the parent tag.');
  };-->
</script>


<style>
  :scope {
    display: block;
    background: powderblue;
    padding: 50px;
    margin:100px;
    font-family: sans-serif;
    color: lightgrey;


  }
</style>
</enter>
