<app>
<h1>App Tag</h1>
<button type="button" onclick={ toggleStateA }>Button A</button>
<input type="text" value="" placeholder="text b" onchange={updateStateB } ref="textB">
<div>
<textarea name="name" rows="4" placeholder="Textarea C" onkeyup={ updateStateC }></textarea>
</div>
<div>
  <label>
    English
      <input type="radio" name="Language" value="eng" onclick={ updateStateD } checked>
  </label>
  <label>
  Spanish
      <input type="radio" name="Language" value="esp"  onclick={ updateStateD }>
  </label>

</div>
<div>
  <select onchange={ updateStateE }>
    <option value="">----</option>
    <option value="Car">Car</option>
    <option value="bike">Bike</option>
  </select>
</div>
<div>
  <label>Llama
  <input type="checkbox" value="Llama" onchange={ updateStateF }>
  </label>
  <label>Rabbit
  <input type="checkbox" value="Rabbit" onchange={ updateStateF }>
  </label>
  <label>Pig
  <input type="checkbox" value="Pig" onchange={ updateStateF }>
  </label>
</div>
<pre> { stateA ? "truth" : "False" } { stateB } { stateC  || "no text"} { stateD.toUpperCase() } { stateE }
{ stateF.Llama ? "yes" : "no"} { stateF.Rabbit ? "yes" : "no"} { stateF.Pig ? "yes" : "no"}</pre>



<script>
  console.log('this tag')

  this.stateB = "default text";
  this.stateD = "eng";
  this.stateE = "none selected";

  this.stateF = {
    Llama: false,
    Rabbit: false,
    Pig: false
  };

  this.toggleStateA = function(event) {
    this.stateA = !this.stateA;
  };
  this.updateStateB = function(event) {
    this.stateB = this.refs.textB.value;
  }

  this.updateStateC = function(event) {
    this.stateC = event.target.value;
  }

  this.updateStateD = function(event) {
    this.stateD = event.target.value;
  }
  this.updateStateE = function(event) {
    this.stateE = event.target.value;
  }

  this.updateStateF = function(event) {
    var petType = event.target.value;
    var isChecked = event.target.checked;
    this.stateF [petType]= isChecked;
  }
</script>

<style>
  :scope {
    font-family: Helvetica;
  }
pre {
  border: 1px, solid #333;
  padding: 10px;
  border-radius: 4px;
  background-color: blue;
}
</style>


</app>
