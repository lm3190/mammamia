<loop>

    <ul>
        <li each={ member }>
            { name || "Unknown"}</li>
    </ul>

    <div class="gallery">
        <img each={ member } src={ url } alt={name + " " }/>

    </div>

    <script>
        this.member = [
            {
                name: "Inma",
                url: "../inma.png"
            }, {
                name: "Grace",
                url: "../grace.png"
            }, {
                name: "Marleen",
                url: "../marleen.png"
            }, {
                name: "Lisa",
                url: "../lisa.png"
            }
        ];
    </script>

    <style>
        :scope {
            margin: 10px;

            padding: 20px;

        }

    </style>
</loop>
