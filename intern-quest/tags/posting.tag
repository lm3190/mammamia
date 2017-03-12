<posting>

<h1>testing<h1>

	<script>
	    var tags = riot.mount ("posting", {card: {
	                            text: "My **precious** text, it's _mine_! It's _mine_!<br />",
	                            header: {image: "https://unsplash.it/1024/500?random",
	                                    text: "**Master** of the _Universe_",
	                                    subhead: "Job Vacancy",
	                                    divider: true,
	                                    style: "brand"
	                                    },
	                            footer: {
	                                    text: "Do you like this?",
	                                    divider: true,
	                                    style: "warning",
	                                  block: true,
	                                    items: [
	                                      {text: "Yes"},
	                                      {text: "Maybe", style: "warning"},
	                                      {text: "No", style: "error"}
	                                    ]}
	    }}) ;

	    tags[0].on("button-clicked", function (e) {console.log("button-clicked:", e)}) ;

	</script>

	<style>
		:scope {
			display: block;
		}
	</style>

</posting>
