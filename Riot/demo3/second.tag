<second>

<strong>second</strong>

<button type="button" onclick={ unmountSecond }>Unmount Second</button>

<button type="button" onclick={ getDataFromDatabase }>Get Data</button>
 <pre> data = { username }</pre>

<script>
var that = this;

this.username = "no name";

this.getDataFromDatabase = function(event) {
  var data = "xyz";

  setTimeout(function(){
    data = "lm3190";
    that.username = data;
    that.update();
  }, 3000);

};
<!-- console.log ('second.tag');
this.unmountSecond = function(event) {
  this.unmount();
};

this.on ('mount', function(event) {

});

this.on ('unmount', function(event) {

}); -->
</script>

<style>
    :scope {
display: block;
    }

</style>
</second>
