<internapp>

	<button type="button" class="btn btn-success" name="button" onclick={ toggleeditor }>SHARE
	</button>



	<interneditor if={ addInternship }></interneditor>

	<script>

		var that = this;

		this.addInternship = false;

		this.toggleeditor = function (event) {
			this.addInternship = true;
		};

		this.closeeditor = function (event) {
			that.addInternship = false;
			that.update();
		};

		// this.internlist = []; //equvi to todosdata
	</script>

	<style>
		:scope {
			display: block;

		}

	</style>

</internapp>
