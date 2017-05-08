<star>

<img ref="ratingStar" src={ star.imageURL } onclick={ changeStar } ondblclick= { undoStar }/>

	<script>

		// Original
		this.star = {
			imageURL: "http://www.clker.com/cliparts/D/5/P/w/5/a/white-star-md.png"
		};

//OneClick
	this.changeStar = function(event){
	  this.star = {
			imageURL: "https://img.clipartfest.com/fda90d1d445683b867351c046eb073e5_anarchy20clipart-light-pink-stars-clipart-on-transparent-background_298-285.png"
		}
	};

//DoubleClick
	this.undoStar = function(event){
	  this.star = {
			imageURL: "http://www.clker.com/cliparts/D/5/P/w/5/a/white-star-md.png"
		}
	};

// console.log(this);

	</script>

	<style>
		:scope {
			display: inline-block;;
			color: #333;
			padding: 0px;
		}

		img {
			height: 25px;
			width: 25px;
		}
	</style>

</star>
