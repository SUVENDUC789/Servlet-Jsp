<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Form | SC</title>

    <style>
        .my-alert-msg {
            color: red;
            /* display: none; */
        }
    </style>
</head>

<body>



    <div class="container my-2">
        <h1 class="alert-danger text-center">Pharmacy bill</h1>
        <form action="table.jsp" method="post">
            <div class="mb-3">
                <label for="billno" class="form-label">bill no</label>
                <input type="text" name="bno" class="form-control" id="billno">
                <div id="check-billno" class="my-alert-msg">...</div>
            </div>
            <div class="mb-3">
                <label for="bill-date" class="form-label">bill date</label>
                <input type="date" name="b-date" class="form-control" id="bill-date">
                <div id="check-bill-date" class="my-alert-msg">...</div>
            </div>
            <div class="mb-3">
                <label for="pname" class="form-label">Patient name</label>
                <input type="text" name="p-name" class="form-control" id="pname">
                <div id="check-pname" class="my-alert-msg">...</div>
            </div>
            <div class="mb-3">
                <label for="dname" class="form-label">Doctor's name</label>
                <input type="text" name="d-name" class="form-control" id="dname">
                <div id="check-dname" class="my-alert-msg">...</div>
            </div>

            <h1 class="alert-warning text-center">Medicine details</h1>
            <div class="medice-d ">
                <p><b><i>Medicine 1</i></b></p>
                <div class="mb-3">
                    <label for="nom0" class="form-label">Name of medicine</label>
                    <input type="text" name="nom0" class="form-control" id="nom0">
                    <div id="check-nom0" class="my-alert-msg">...</div>
                </div>
                <div class="mb-3">
                    <label for="exp-date" class="form-label">Expiry date</label>
                    <input type="date" name="exp-date0" class="form-control" id="exp-date">
                    <div id="check-exp-date" class="my-alert-msg">...</div>
                </div>
                <div class="mb-3">
                    <label for="price" class="form-label">Price</label>
                    <input type="number" name="price0" class="form-control" id="price">
                    <div id="check-price" class="my-alert-msg">...</div>
                </div>
            </div>
            <button class="btn btn-info" id="add-med">Add +</button> 
            <hr>
            <button type="submit" class="btn btn-primary" id="login-suv">Submit</button>
        </form>

    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>

<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E="
    crossorigin="anonymous"></script>

<script>
        let i = 0;
    $(document).ready(function () {
        $("#add-med").click(function (e) {
            e.preventDefault();
            //i++;
            $(".medice-d").append(`<p><b><i>Medicine ${i+=1}</i></b></p>
                <div class="mb-3">
                    <label for="nom${i}" class="form-label">Name of medicine</label>
                    <input type="text" class="form-control" id="nom${i}">
                    <div id="check-nom${i}" class="my-alert-msg">...</div>
                </div>
                <div class="mb-3">
                    <label for="exp-date${i}" class="form-label">Expiry date</label>
                    <input type="date${i}" class="form-control" id="exp-date${i}">
                    <div id="check-exp-date${i}" class="my-alert-msg">...</div>
                </div>
                <div class="mb-3">
                    <label for="price${i}" class="form-label">Price</label>
                    <input type="number" class="form-control" id="price${i}">
                    <div id="check-price${i}" class="my-alert-msg">...</div>
                </div>`)

        });

    });
</script>

</html>