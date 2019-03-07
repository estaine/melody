<html>
<head>
    <title></title>
    <link rel="shortcut icon" type="image/x-icon" href="https://dg8me5cc8ch23.cloudfront.net/img/favicon.ico">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>
    <script>
        function validate() {
            var validationString = $('#association').val();
            var validationRequest = {association: validationString};

            $.ajax({
                    type: 'POST',
                    url: "http://192.168.88.42:8972/validate",
                    data: JSON.stringify(validationRequest),
                    dataType: 'json',
                    headers: {
                        'Accept': 'application/json',
                        'Content-Type': 'application/json'
                    }
                }
            ).done(function (data) {
                $('#validation-result').html(data.result);
            });
        }
    </script>
    <style>


        .row {
            margin: 120px;
        }

        .col {
            text-align: center;
        }

        #validate {
            font-size: 24px;
            background-color: #213f75;
            cursor: pointer;
            padding: 10px 80px;
            color: white;
        }

        #question {
            font-size: 24px;
        }

        body {
            background-color: #deada3;
        }
    </style>
</head>
<body>


<div class="row">
    <div class="col">
        <span id="question">Ну как, мелодия узнаётся? Если да, то какие ассоциации?</span>
    </div>
</div>
<div class="row">
    <div class="col">
        <input id="association"/>
    </div>
</div>
<div class="row">
    <div class="col">
        <button id="validate" onclick="validate()">Check</button>
    </div>
</div>
<div class="row">
    <div class="col">
        <span id="validation-result"></span>
    </div>
</div>
</body>
</html>