<comment>

<question each={ questionData }></question>

	<div class="form-group">

		<input type="form-control" type="text" placeholder="Your Question" onekeypress-{ addQuestion }>
	</div>

	<script>
var that = this;

this.questionData = [{
	question: "Does anyone know if Seasme Workshop Internships are any good?",
	answer: "Yes, I you can call them for an informational interview if you are not sure",
}];

addItem(event){
	var newTask = {};
	if (event.which === 13) {
		newTask.task = event.target.value;	// Grab the user task value
		newTask.done = false;

		this.fakeData.push(newTask);	// Pushes new task item to the fakeData list

		event.target.value = "";	// RESET INPUT
		event.target.focus();			// FOCUS BACK ON INPUT
	}
}

removeItems(event){
	this.fakeData = this.fakeData.filter(function(item) {
		return !item.done;
	});
}

onlyDone(item) {	// Iterator function for the Array.filter(iterator) method...
	return item.done === true;
	</script>

	<style>
		:scope {
			display: block;
		}
	</style>
</comment>
