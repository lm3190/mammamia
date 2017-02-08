<editor>

<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="editor">
      <span> Title</span> <input type="text" onchange={ updateTitle } value={ user.title }> <br>
      <span> Image</span> <input type="text" onblur={ updateImage } placeholder="Enter URL"> <br>
      <span> Body </span>  <textarea name="name" rows="4" cols="40"></textarea>
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
    <a href="#" class="btn btn-primary" role="button">Reset</a>
    <a href="#" class="btn btn-primary" onclick={ updateImage }role="button">Update</a>
    </div>
      </div>
    </div>
  </div>
</div>

<script>
this.updateTitle
this.updateImage = function(event) {
  console.log ('clicked');
}
</script>

<style>
  :scope {
    display: block;
    border: 1px solid blue;
    padding: 10px;


  }
  textarea {
    margin-top: 5px:
  }

</style>
</editor>
