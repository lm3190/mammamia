<interneditor>

  <!--<div>
		<internitem each={ internList }></internitem>
	</div>-->

  <div class="c-overlay"></div>
  <div class="o-modal">
    <div class="c-card">
      <header class="c-card__header">
        <button type="button" class="c-button c-button--close">×</button>
        <p class="c-heading">All your peers will benefit from your internship experience, so please, go ahead and share it, thanks!</p>
        <p>A virtual coffee or tea will be provided</p>
        <p>Thanks for keeping this site running!</p>
      </header>
      <div class="c-card__body">
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
            </div>

      <footer class="c-card__footer">
        <!--<button type="button" class="c-button c-button--brand"></button>-->
        <button class="btn btn-success" type="button" onclick={ addInternship }>Submit
        </button>
        <button class="btn btn-danger" type="button" onclick={ parent.closeeditor }>CANCEL</button>
      </footer>
    </div>
  </div>

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
                internComments: this.refs.commentsIntern.value,
                createdAt: firebase.database.ServerValue.TIMESTAMP,
					      modifiedAt: firebase.database.ServerValue.TIMESTAMP
				};
/*
internList
  internshipid
    info
  internshipid
    info
internList
  userID
    internshipid
       info
    internshipid
       info
  userID
    internshipid
      info
*/

            internRef.child(key).set(newInternship, function() {
              console.log(that);
              that.parent.update();
            });

            console.log('THIS', this);


            that.parent.closeeditor();

						//
            // var internListRef = database.ref('internList');
            // var newKey = internListRef.push().key;
            // internListRef.child(newKey).set(newInternship);
        };
    </script>

    <style>
    .o-modal {
      max-width: 500px;
        background: powderblue;
        padding: 50px;
        margin: 50px;
    }


    </style>
</interneditor>
