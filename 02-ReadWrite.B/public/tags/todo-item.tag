<todo-item>

	<div class="contaner">
	<div class="row">
	<pre> <strong> Position: </strong> { internPosition } <br> <strong> Company: </strong> { internCompany } <br><strong>  Length of Time at Internship: </strong> { internLength } <br><strong>  Dates </strong> { internDates } </em> <br> <strong> Comments:</strong> { internComments } <br> <strong> Rating: <strong> { rating }</p></pre>
	</div>
	</div>






	<script>
		var that = this;

		toggle(event) {
			event.item.done = !event.item.done;
			this.parent.update();
		}
	</script>

	<style>
		:scope {
			display: block;
		}
		.completed {
			text-decoration: line-through;
			color: silver;
		}
	</style>
</todo-item>
