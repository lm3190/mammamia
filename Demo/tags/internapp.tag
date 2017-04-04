<internapp>

	<button type="button" class="btn btn-success" name="button" onclick={ toggleEditor }>SHARE</button>

	<div class="intern-list">
		<internitem each={ internList }></internitem>
	</div>

	<interneditor if={ creatingInternship }></interneditor>

	<script>

		var that = this;

		this.creatingInternship = false;

		this.toggleEditor = function (event) {
			this.creatingInternship = true;
		};

		this.closeEditor = function (event) {
			that.creatingInternship = false;
			that.update();
		};

		this.internList = []; //equvi to internList

	

	</script>

	<style>
		:scope {
			display: block;

		}

	</style>

</internapp>
