<preview>

<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src={ imageURL } ref="myImage">
      <div class="caption">
        <h3>{ titlecaption }</h3>
        <p>{ textcaption}</p>

      </div>
    </div>
  </div>
</div>


      <span>EDITOR</span>
<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="editor">

      <span> Title</span> <input type="text" ref="titleInput" value=""> <br>
      <span> Image</span> <input type="text" ref="urlInput" value=""> <br>
      <span> Body </span>  <textarea name="name" ref="textInput" rows="4" cols="40"></textarea>
      <div class="form-check"> <span> Mode </span>
        <label class"form-check-label">
      <input type="radio" name="Light" value="Light">
        Light
      </label>
      <label class"form-check-label">
    <input type="radio" name="Dark" value="Light">
      Dark
    </label>
    </div>
    <button type="button">Reset</a>
    <button type="button" onclick={ updateImage }>Update</button>
    </div>
      </div>
    </div>
  </div>
</div>

<script>
this.imageURL = "http://placehold.it/200x200"
this.titlecaption= "Title"
this.textcaption= "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

this.updateImage = function(event) {
  this.imageURL = this.refs.urlInput.value;
  this.titlecaption = this.refs.titleInput.value;
  this.textcaption = this.refs.textInput.value;
};

<!-- this.title="Title"

this.updateTitle = function(event) {
  this.thiscaption = this.refs.textInput.value;
}; -->
</script>

<style>

  textarea {
    margin-top: 5px:
  }

</style>

<script>



</script>
</preview>
