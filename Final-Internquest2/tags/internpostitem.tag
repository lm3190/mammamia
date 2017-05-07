<internpostitem>

	<table class="c-table c-table--clickable" style="bottom:{ bottomVal }%">
		<!-- Moved the head of the table to the internpostapp.tag file - now the postings are listed as individuals posts under the header
		<caption class="c-table__caption">User : { author }</caption>
		<thead class="c-table__head">
		<tr class="c-table__row c-table__row--heading">
			<th class="c-table__cell">Position</th>
			<th class="c-table__cell">Company</th>
			<th class="c-table__cell">More Info</th>
		</tr>
		</thead> -->
		<tbody class="c-table__body">
			<tr class="c-table__row">
				<td class="c-table__cell">{ internPosition }</td>
				<td class="c-table__cell">{ internCompany }</td>
				<!--
			This is how we can link content from other columns (in this example, the text that fills in the company name { internCompany }, then the lmgtfy.com link will search for that text (the text we inputted) when we click on the LMGTFY link - NOTE TO SELF could be helpful for search function in general (web))
			<td class="c-table__cell"><a href="http://lmgtfy.com/?q={ internCompany }">LMGTFY</a></td> -->
				<td class="c-table__cell">
					<a href=" {internUrl} ">
						More Info</a>
				</td>
				<td class="c-table__cell">
					{ dateFormatted }</td>
				<!-- <td class="c-table__cell"> { new Date (modifiedAt) }</td> -->
			</tr>
		</tbody>
	</table>

	<!-- <div class="container">
	Author: { author }

	<div class="row">
	<pre> <strong> Position: </strong> { internPosition } <br> <strong> Company: </strong> { internCompany } <br><strong>  Length of Time at Internship: </strong> { internLength } <br><strong>  Dates: </strong> { internDates } <br> <strong> Comments:</strong> { internComments } <br> <strong> Rating: </strong> </pre>
	</div>

	</div> -->

	<script>
		console.log(this);

		var d = new Date(this.createdAt);

		this.dateFormatted = d.toUTCString();
		// look at code here: https://www.w3schools.com/jsref/jsref_obj_date.asp this.dateFormatted = toString(d.getMonth()) + d.getDate() + ", " + d.getFullYear();
	</script>

	<style>

		:scope pre {

			display: block;
			max-width: 700px;
			margin: 20px;
			border: 5px solid grey;
		}

	</style>
</internpostitem>
