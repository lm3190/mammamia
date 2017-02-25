<first>
<strong>first</strong>

<button type="button" onclick={ increaseNumber }>Update Number</button>
<pre> my number = { magicNumber }</pre>
<second> if={ magicNumber < 5 }</second>


<script>
console.log ('first.tag');
 this.magicNumber = 0;

 this.increaseNumber = function(event) {
   this.magicNumber++;
   
   if (this.magicNumber > 5) {
     this.magicNumber = 0;
   }
 };

 this.on('mount', function(event){
   console.log('MOUNT first.tag')
 });

 this.on('update', function(event){
   console.log('UPDATE first.tag');
 });
</script>

<style>
    : scope {
display: block;
    }

</style>
</first>
