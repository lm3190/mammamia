<interneditor>

    <p>All your peers will benefit from your internship experience, so please, go ahead and share it, thanks!<p>
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

            <button class="btn btn-success" type="button" onclick={ addInternship }>Submit</button>
            <button class="btn btn-danger" type="button" onclick={ parent.closeEditor }>CANCEL</button>

            <script>
                var that = this;

                var database = firebase.database();
                // var todoItemsRef = database.ref('todoItems');

                function addInternship(positionIntern, companyIntern, internDate, internTime, commentsIntern) {
                    // A post entry.
                    var postData = {
                      internPosition: this.refs.positionIntern.value,
                      internCompany: this.refs.companyIntern.value,
                      internLength: this.refs.internDate.value,
                      internDates: this.refs.internTime.value,
                      internComments: this.refs.commentsIntern.value
                    };

                    // Get a key for a new Post.
                    var newPostKey = firebase.database().ref().child('posts').push().key;

                    // Write the new post's data simultaneously in the posts list and the user's post list.
                    var updates = {};
                    updates['/posts/' + newPostKey] = postData;
                    updates['/user-posts/' + uid + '/' + newPostKey] = postData;

                    return firebase.database().ref().update(updates);
                }

//Read-Write Syntax
                // function writeUserData(internshipId, positionIntern, companyIntern, internDate, internTime, commentsIntern) {
                //     firebase.database().ref('internship/' + internshipId).set({
                // internPosition: this.refs.positionIntern.value,
                // internCompany: this.refs.companyIntern.value,
                // internLength: this.refs.internDate.value,
                // internDates: this.refs.internTime.value,
                // internComments: this.refs.commentsIntern.value});
                // }
                //
                // var internshipId = firebase.auth();
                // return firebase.database().ref('internship' + internshipId).on('value').then(function (snapshot) {
                //     var internPosition = snapshot.val().internPosition;
                //     var internCompany = snapshot.val().internCompany;
                //     var internLength = snapshot.val().internLength;
                //     var internDates = snapshot.val().internDates;
                //     var internComments = snapshot.val().internComments;
                // });

    //oldcode
                // this.addInternship = function(event) {     var newInternship = {         internPosition: this.refs.positionIntern.value,         internCompany: this.refs.companyIntern.value,         internLength: this.refs.internDate.value,         internDates:
                // this.refs.internTime.value,         internComments: this.refs.commentsIntern.value     }; this.parent.internlist.push(newInternship);     var newKey = todoItemsRef.push().key;/*this adds a data to the node*/
                //
                //     todoItemsRef.child(newKey).set(newTask);      // add to firebase
                //
                //
                //     this.parent.update();     this.parent.closeEditor(); };
                //
                //
                //
                //
                //
                // todoItemsRef.on('value', function(snapshot) {   console.log('"value" snapshot.val()', snapshot.val());   var data = snapshot.val(); // Object with properties as keys
                //
                //   var todos = [];
                //
                //   for (var key in data) {
                //     todos.push(data[key]);   }
                //
                //   that.internList = todos;   console.log('this.internList', that.internList);   that.update(); });
                //
                //
                // /*   Getting all todos with the 'child_added' event   What is the difference between this snapshot and the   snapshot from 'value' above? */
                //
                // todoItemsRef.on('child_added', function(snapshot) {   console.log('"child_added" snapshot.val()', snapshot.val());
                //
                //   var data = snapshot.val(); // Object with properties as keys   that.internList.push(data);
                //
                //   console.log('this.internList', that.internList);   that.update(); });
                //
                // todoItemsRef.on('child_removed', function(snapshot) {   console.log('"child_removed" snapshot.val()', snapshot.val());
                //
                //   var data = snapshot.val();   var key = snapshot.key;
                //
                //   var targetTodo;
                //
                //   for (var i = 0; i < that.internList.length; i++) {     if (that.internList[i].id === key) {       targetTodo = that.internList[i];       break;     }   }
                //
                //   var index = that.internList.indexOf(targetTodo);   that.internList.splice(index, 1);
                //
                //   console.log(that.internList);   that.update(); });
                //
                //
                // addItem(event){   var newInternship = {       internPosition: this.refs.positionIntern.value,       internCompany: this.refs.companyIntern.value,       internLength: this.refs.internDate.value,       internDates: this.refs.internTime.value,
                // internComments: this.refs.commentsIntern.value   };
                //
                //   this.parent.internlist.push(newInternship);   // var newTask = {};   if (event.type === 'click') {     newInternship.task = event.target.value;
                //
                //
                //     var newKey = todoItemsRef.push().key;/*this adds a data to the node*/
                //
                //     todoItemsRef.child(newKey).set(newInternship);
                //
                //     event.target.value = "";	// RESET INPUT     event.target.focus();			// FOCUS BACK ON INPUT   } }
                //
                // removeItems(event) {   // HINT for question below:   var rejectedData = this.internList.filter(function(item){     return item.done;   });   console.log('rejectedData', rejectedData);
                //
                //   // Question: What does this statement do?   // this.internList = this.internList.filter(function(item) {   //   return !item.done;   // });
                //
                //   console.log('this.internList', this.internList);
                //
                //   // HINT for removing on firebase   // REFERENCE.remove();   // REFERENCE.set(null); }
                //
                // // Iterator function for the Array.filter(iterator) method... onlyDone(item) {   return item.done === true; }
                //
                //

                console.log(this);
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
