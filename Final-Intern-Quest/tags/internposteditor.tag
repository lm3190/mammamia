<internposteditor>

  <div class="c-overlay"></div>
  <div class="o-modal">
    <div class="c-card">
      <header class="c-card__header">
        <button type="button" class="c-button c-button--close">×</button>
        <p class="c-heading">If you found an internship that is worth sharing, please post it here! Please fill in the details below (position, company, and the link to the internship posting, thanks!)</p>
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
        <textarea ref="linkIntern" placeholder="Post Link Here" value="" rows="8" cols="80"></textarea>
        <div class="row"></div>
      </div>

      <footer class="c-card__footer">

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
    var internRef = database.ref('internPosting');

    this.addInternship = function (event) {

      var key = internRef.push().key;

      var newInternship = {
        id: key,
        // userID: user.uid, // global Google authenticated user object author: user.displayName,
        internPosition: this.refs.positionIntern.value,
        internCompany: this.refs.companyIntern.value,
        internUrl: this.refs.linkIntern.value,
        createdAt: firebase.database.ServerValue.TIMESTAMP,
        // modifiedAt: firebase.database.ServerValue.TIMESTAMP
      };

      internRef.child(key).set(newInternship);

      console.log('THIS', this);

      this.parent.update();
      this.parent.closeeditor();

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
</internposteditor>
