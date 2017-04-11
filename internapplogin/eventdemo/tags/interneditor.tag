<interneditor>

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
        console.log(this);

        this.addInternship = function (event) {
            var newInternship = {
                internPosition: this.refs.positionIntern.value,
                internCompany: this.refs.companyIntern.value,
                internLength: this.refs.internDate.value,
                internDates: this.refs.internTime.value,
                internComments: this.refs.commentsIntern.value
            };

            this.parent.internlist.push(newInternship);
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
</interneditor>
