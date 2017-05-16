<star-rating>
	<img each={ star, i in starList } src={ star ? yesStarURL : noStarURL } onclick={ parent.updateStars }>

	<script>
		var that = this;

		function getStarList(stars){
			var starList = [];
			for (var i = 0; i < 5; i++) {
				if (i < stars) {
					starList.push(true);
				} else {
					starList.push(false);
				}
			}
			return starList;
		}

		this.noStarURL = "http://www.clker.com/cliparts/D/5/P/w/5/a/white-star-md.png";
		this.yesStarURL = "https://img.clipartfest.com/fda90d1d445683b867351c046eb073e5_anarchy20clipart-light-pink-stars-clipart-on-transparent-background_298-285.png";

		this.readonly = this.opts.readonly ? this.opts.readonly : false;
		this.stars = this.opts.stars ? this.opts.stars : 0;

		this.starList = getStarList(this.stars);

		updateStars(event) {
			if (this.readonly) {
				event.preventUpdate = true;
				return;
			} else {
				var index = event.item.i;
				var actualCount = index + 1;
				this.stars = actualCount;
			}
		}

		this.on('update', function() {
			this.starList = getStarList(this.stars);
		});
	</script>

	<style>
		:scope {
			display: block;
		}
		img	{
			width: 50px;
		}
	</style>
</star-rating>
