<interneditor>

  <div>
		<internitem each={ internList }></internitem>
	</div>

    <p>All your peers will benefit from your internship experience, so please, go ahead and share it, thanks!</p>
    <p>A virtual coffee or tea will be provided</p>
    <p>Thanks for keeping this site running!</p>

    <div class="row">
        <input type="text" ref="positionIntern" placeholder="Enter position" value="" class="col-md-6">
    </div>
    <br>
    <div class="row">
        <input type="text" ref="companyIntern" placeholder="Enter company" value="" class="col-md-6"></div><br>
    <div class="row">
        <input type="text" ref="internDate" placeholder="Enter length" value="" class="col-md-4"></div><br>
    <div class="row">
        <input type="text" ref="internTime" placeholder="Enter when" value="" class="col-md-4"></div><br>
    <textarea ref="commentsIntern" placeholder=" Your comments here" value="" rows="8" cols="80"></textarea>
    <div class="row"></div>

    <button class="btn btn-success" type="button" onclick={ addInternship }>Submit
    </button>
    <button class="btn btn-danger" type="button" onclick={ parent.closeeditor }>CANCEL</button>

    <script>
        var that = this;
        this.internList = [];
        var database = firebase.database();
				var internRef = database.ref('internList');


        this.addInternship = function (event) {

						var key = internRef.push().key;

						var newInternship = {
								id: key,
                userID: user.uid, // global Google authenticated user object
					      author: user.displayName,
                internPosition: this.refs.positionIntern.value,
                internCompany: this.refs.companyIntern.value,
                internLength: this.refs.internDate.value,
                internDates: this.refs.internTime.value,
                internComments: this.refs.commentsIntern.value
            };

            internRef.child(key).set(newInternship);

            this.parent.update();
            this.parent.closeeditor();
						//
            // var internListRef = database.ref('internList');
            // var newKey = internListRef.push().key;
            // internListRef.child(newKey).set(newInternship);

        };
    </script>

    <style>
        :scope {
            display: block;
            background: powderblue;
            padding: 50px;
            margin: 50px;
        }

    </style>
</interneditor>
