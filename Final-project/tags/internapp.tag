<internapp>
	<div class="container">
		<div class="row">

	<span id="share">Share your experience here:</span>
<button class="c-button--success u-xlarge c-button--rounded" onclick={ toggleeditor }>SHARE</button>

		</div>
	</div>

	<internitem each={ internshipList }></internitem>

	<interneditor if={ addInternship }></interneditor>

	<script>
		console.log('internapp.tag');
		var that = this;

		this.internshipList = [];

		var internRef = firebase.database().ref('/internList');


				internRef.on('value', function (snapshot) {
					var data = snapshot.val();
					var dataAry;
					if (data === null) {
						dataAry = [];
					} else {
						dataAry = Object.values(data);
					}

					that.internshipList = dataAry;
					that.update();
				});

		this.addInternship = false;

		this.toggleeditor = function (event) {
			this.addInternship = true;
		};

		this.closeeditor = function (event) {
			that.addInternship = false;
			that.update();
		};


	</script>

	<style>
		:scope {

			display: block;

		}

#share {
font-size: 20pt;
}
	</style>

</internapp>
